# Basic Electrical Signalling integration record

Private editorial record; excluded from the book chapter list. Page numbers below are PDF page numbers, including covers and blanks, not the printed course numbering.

## Source

- British Rail, Chief Signal and Telecommunications Engineers' Department, Training School York, Eastern Region: *Basic Electrical Signalling*, 144 scanned PDF pages.
- Original retained unchanged alongside `manifest.json`, with SHA-256 verification.
- All pages were rendered and OCR processed. OCR is a discovery aid; the contact drawings and relevant technical pages were checked against the scan. Page 144 is show-through/back-page noise.

## Integration and overlap decisions

| PDF pages | Subject | Decision and principal destination |
|---|---|---|
| 1-10 | Cover, development, separation, warning and control overview | Existing system, signals and remote-control explanations retained; no second historical narrative or duplicate overview added. |
| 11-18 | Signal applications and absolute block | Existing separation and block coverage retained. Mechanical signal applications and operating/bell-code instruction omitted. |
| 19-28 | Mechanical interlocking and lever locking | Omitted as requested. |
| 29-41 | Cells and charging | Existing canonical account in power-supplies.qmd retained. Primary cells reduced to one background paragraph. No duplicate chemistry, series/parallel or charging explanation added. Dated capacity tables and charging formulae omitted. |
| 42-51 | Alternative supplies, distribution and fuses | Expanded power-supplies.qmd: independence of sources, standby/changeover dependencies, radial/spur/ring arrangements, discrimination and a worked example. Equipment-specific supply values and period policy statements omitted. |
| 52-54 | Battery precautions | Existing equipment-condition and work-boundary explanation retained; no duplicate precaution list or old first-aid/isolation instruction reproduced. |
| 55-65 | D.c. track circuits, definitions, repeating and adjustment | Existing canonical explanations in train-detection.qmd retained. No duplicate basic circuit or drop-shunt explanation. Source adjustment sequence and numerical limits omitted. |
| 66-80 | Track-circuit faults, track insulation, bonding, interrupters and clearance | Added track-structure insulation faults, clearance beyond wheelsets and methodical failure reasoning to train-detection.qmd. Existing bonds/interrupter treatment retained. Old maintenance frequencies, failure percentages, joint distances and construction details omitted. |
| 81-86 | Arm and lamp repeating for mechanical signals | Omitted as requested; existing colour-light proving account remains in lineside-signals.qmd. |
| 87-94 | Point detection | Existing canonical point fit, lock, detector and test explanation retained; no second account or old gauge/adjustment procedure added. |
| 95-96 | Electric locks on lever frames | Omitted as requested. |
| 97-110 | Plan symbols | Existing scheme-plan and trackwork explanation retained; obsolete/mechanical symbol catalogue omitted. |
| 111-124 | Written circuits, nomenclature and symbols | Added wiring-layout versus written-circuit explanation and whole-symbol/notes interpretation in circuit-reading.qmd. Added independent/dependent contacts and particular bridging/double-break distinctions in relays.qmd. Existing nomenclature and supply table retained once. Mechanical lever contact symbols omitted. |
| 125-134 | Programmed circuit exercises, relay contacts, polar relays | Added two/three-position polar comparison to relays.qmd; retained existing complete-path and logic exercises rather than duplicate training-board instructions. Instructions to a learner in the source treated as source content, not instructions to this editing task. |
| 135-138 | Lever contact and electric-lock exercises | Omitted as requested. |
| 139-142 | Electromagnetic bells, indicators and relays | Existing electromagnetic relay explanation retained. No separate block-equipment construction tutorial added. |
| 143-144 | Instruction references and back page | No old document references or back-page OCR noise reproduced. |

## Consolidation

- Function-name examples have one main table in circuit-reading.qmd; relays.qmd links to it.
- Full path tracing stays in circuit-reading.qmd; relay logic refers back to that method.
- Aspect control and lamp proving stay in lineside-signals.qmd; relays.qmd provides a linking paragraph.
- Train describers have one background paragraph in railway-signalling.qmd. Repeated explanations and glossary entries were removed.
- Primary cells have one background paragraph in power-supplies.qmd. The separate glossary entry was removed.
- Mechanical signal sections and lever-operation material were removed from active chapters. Point fittings and powered mechanisms remain within the points subject.
- No additional chapter was needed: the new material extends circuit reading, relays, train detection and power supplies.

## Validation

- Pre-edit backup archive passed ZIP integrity checking; retained source matches its recorded SHA-256.
- All learning chapters retain objectives, key points and review questions.
- No repeated prose paragraph of 25 or more words was found across active chapter files.
- Active text has exactly one substantive paragraph on each limited background topic and no prohibited topics or mechanical signal/frame treatment.
- Both Quarto formats built successfully; 18 HTML pages passed local target and anchor checks.
- PDF visual review covered the revised circuit-reading, relay, detection and power-supply pages and the limited background paragraphs. The polar comparison was shortened after review to avoid a table split.
