-- Render optional background information with a fixed heading in HTML and Typst PDF.
local icon_path = quarto.utils.resolve_path("../assets/icons/open-book.svg")

local function text(value, fallback)
  if value == nil then return fallback end
  return pandoc.utils.stringify(value)
end

local function colour(value, fallback)
  local result = text(value, fallback)
  if not result:match("^#%x%x%x%x%x%x$") then
    error("Background colours must use six-digit hex values, such as #70558c.")
  end
  return result
end

function Pandoc(doc)
  local settings = doc.meta["background"] or {}
  local default_title = "Background"
  local border = colour(settings["border-colour"], "#70558c")
  local header_colour = colour(settings["header-colour"], "#f3eef8")

  return doc:walk({Div = function(div)
    if not div.classes:includes("background") then return nil end
    local title = pandoc.read(default_title, "markdown").blocks
    local title_inlines = title[1] and title[1].content or pandoc.Inlines({})
    local file = assert(io.open(icon_path, "r"))
    local svg = file:read("*a")
    file:close()

    if quarto.doc.is_format("html") then
      local icon = pandoc.Span({pandoc.RawInline("html", svg)},
        pandoc.Attr("", {"background__icon"}, {["aria-hidden"] = "true"}))
      local heading = pandoc.Div({pandoc.Plain({icon}), pandoc.Plain(title_inlines)},
        pandoc.Attr("", {"background__header"}))
      local body = pandoc.Div(div.content, pandoc.Attr("", {"background__body"}))
      return pandoc.Div({heading, body}, pandoc.Attr(div.identifier,
        {"background"}, {
          role = "note",
          ["aria-label"] = "Background",
          style = "--background-border:" .. border .. ";--background-header:" .. header_colour
        }))
    elseif quarto.doc.is_format("typst") then
      local blocks = pandoc.Blocks({
        pandoc.RawBlock("typst", '#block(width: 100%, breakable: true, radius: 2pt, inset: 0pt, stroke: (paint: rgb("' .. border .. '"), thickness: 0.7pt))[\n' ..
          '#block(width: 100%, fill: rgb("' .. header_colour .. '"), inset: 8pt, below: 0pt)[\n' ..
          '#box(baseline: -0.18em)[#image(bytes(' .. pandoc.json.encode(svg) .. '), format: "svg", height: 1.3em)]#h(0.45em)#strong['),
        pandoc.Plain(title_inlines),
        pandoc.RawBlock("typst", ']\n]\n#block(width: 100%, inset: 8pt, above: 0pt)[\n')
      })
      blocks:extend(div.content)
      blocks:insert(pandoc.RawBlock("typst", ']\n]\n'))
      return blocks
    end

    return pandoc.Div({pandoc.Para(pandoc.Strong(title_inlines)), pandoc.Div(div.content)}, div.attr)
  end})
end
