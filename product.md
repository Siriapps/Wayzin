# WayzIn product

## One line
Upload a floorplan, get an indoor map you can navigate turn by turn.

## Who it is for (v0)
- Primary: a building operator (campus, hospital, mall, office) with a floorplan PDF/PNG who wants visitors to find rooms.
- Secondary: a visitor on a phone looking for "Room 2.315".

## Core flows
1. Upload floorplan → system detects walls, doors, rooms, labels → operator corrects → publish.
2. Visitor opens link → searches destination → gets a route on the map, step by step.

## Out of scope for POC
- Live positioning (BLE/UWB). POC uses "you are at entrance X" selection.
- Multi-floor transitions (add after single floor works).
- Native apps. Web only.

## Success for the POC
- One real floorplan processed end to end in under 10 minutes of operator time.
- A visitor can get a correct route between any two rooms on that floor.

## Open questions
- Input formats to support first: PNG/JPG scans vs PDF vs DWG?
- Route display: 2D top-down only, or step list as well?
- Who edits room labels: operator only, or crowdsourced?
