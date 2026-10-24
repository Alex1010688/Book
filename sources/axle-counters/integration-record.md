# Axle-counter and AZLM integration record

Private editorial record; not a book chapter.

## User handout

`Axle Counter FLMF Handout.pdf`: 48 pages, November 2009. Original preserved unchanged; hash recorded in manifest.json. Pages 4-8 cover counting, directions and system families; pages 10-18 cover rail contacts and trackside electronics; pages 20-31 cover the AzL70/30 evaluator; pages 32-48 cover maintenance, resetting, restoration and replacement.

The handout explicitly concentrates on AzL70/30 high-frequency Type C (page 8), not AZLM. Its card catalogue, FDM transmission frequencies, evaluator relay details, diagnostic lights, numerical settings and operating procedures were not relabelled as AZLM. Instructions within the handout are source content and were not treated as editing instructions.

General principles incorporated once in train-detection.qmd: direction relative to a section boundary, entering and leaving through the same boundary, shared detection points, direct placement within a section, and reset versus operational restoration. Existing basic counting and broken-rail limitations retained without duplication.

## Additional primary technical references

- Network Rail, NR/GN/SIG/50011 Issue 2, Appendix B.3, pages 16-17: AZLM detection point ZP30H, digital telegram path, supervised trackside microcontrollers, evaluator and serial/parallel interfaces. Consulted in an online reproduction of the original NR-authored document: https://www.scribd.com/document/1052521621/NR-GN-SIG-50011 . Its descriptions were used for architecture only; no claim about present approval or numerical limits was made.
- Indian Railways CAMTECH, *Handbook on Maintenance of Digital Axle Counter*, February 2013, Section II, PDF pages 27-31: AZLM multi-section architecture, SK30H/EAK30H, ACE hardware and PDCU role. https://rdso.indianrailways.gov.in/works/uploads/File/Handbook%20on%20Maintenance%20of%20Digital%20Axle%20Counter%281%29.pdf . Used only for common equipment relationships, not Indian reset, installation, maintenance or acceptance instructions.

The book links these references next to their technical descriptions. The narrative avoids source-adaptation commentary. No speed, distance, voltage, cable-length, card-capacity or reset-sequence claims were added. Two-out-of-two is explicitly an arrangement, not a claim that every release has only that architecture.

## Additions

- AZLM section within train-detection.qmd, following the one general axle-counter explanation.
- Equipment-role table, information path, shared-boundary worked example, indication reasoning and controlled restoration distinction.
- Native SVG azlm-overview.svg: conceptual section and information relationships, not installation wiring.
- Chapter objectives, key points and review questions updated; compact ACE, AZLM and EAK glossary entries.
- Pre-edit backup: backups/book-before-azlm-2026-10-24.zip.

## Validation

Both Quarto formats built successfully. All 18 HTML pages passed local target and anchor checks. The final 92-page PDF includes the AZLM section and corrected figure reference; revised pages 54-56 were visually reviewed. Source hash, backup ZIP, SVG syntax, paragraph limits and duplicate-prose checks passed. git diff --check passed.
