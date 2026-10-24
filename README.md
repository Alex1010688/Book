# Railway Signalling for Technicians

An editable Quarto framework for a railway signalling training book, with seventeen chapters and a glossary. Expand the chapters, add equipment-specific material and incorporate further references as the book develops.

## Read the book

- HTML: `_book/index.html`
- PDF: `_book/railway-signalling-for-technicians.pdf`

## Edit and build

Edit `index.qmd` and the files listed in `_quarto.yml`. The configured language is UK English.

```powershell
quarto preview --to html
quarto render
```

`quarto render` builds both formats together. The Typst format produces the PDF. Diagrams are local SVGs in `assets/images`; no remote images are required. The Introduction explains the book's purpose and how to use it. Overview of a signalling scheme brings together the main signalling relationships. The technical chapters contain objectives, explanations, a worked example or activity, and key points.

## Recovery

The previous book, including the uncommitted history edit, is preserved in `backups/book-before-rebuild-2026-10-24.zip`. Extract that archive to a separate folder to inspect or recover the earlier work. Its contents are excluded from the active Quarto chapter list. Backups and temporary OCR/render files are ignored by Git.

The seven technician modules are integrated as new chapters on circuit reading, power supplies and cables, and as expanded sections within relays, train detection, points and lineside signals.

## Local information boxes

Use this block for location-specific information:

````markdown
::: {.local-information}
Add the relevant local details here.
:::
````

The default heading is **Local information**. The box uses an orange border, a pale orange header and a traffic-cone icon in HTML and PDF. Set its default title and colours under `local-information` in `_quarto.yml`. The icon is `assets/icons/traffic-cone.svg` and the shared rendering filter is `filters/local-information.lua`.

An optional title can identify a particular location:

````markdown
::: {.local-information title="Local information: location name"}
Add the relevant local details here.
:::
````

Paragraphs, lists, emphasis and links can be used inside the box. Preview a chapter after adding longer content to check its page layout.

## Background boxes

Use this block for optional tidbits that add context or background flavour without being essential to the main explanation:

````markdown
::: {.background}
Add the background detail here.
:::
````

The heading is always **Background**. The box uses a muted purple border, a pale purple header and an open-book icon in HTML and PDF. Set its colours under `background` in `_quarto.yml`. The icon is `assets/icons/open-book.svg` and the rendering filter is `filters/background.lua`. Titles supplied on individual boxes are ignored so the heading stays consistent. Paragraphs, lists, emphasis and links are supported.
