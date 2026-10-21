# WayzIn design

## Direction
Utility first, map-like, calm. The map is the hero; chrome stays out of the way. Think transit app, not SaaS dashboard.

## Tokens (fill from first wireframe round)
- Font: TBD (one family, two weights)
- Base spacing: 4px scale
- Color: neutral surface + one accent for the route line + one for "you are here"
- Radius: 8px controls, 12px cards

## Screens (v0)
1. Upload: drop zone, format hints, progress.
2. Review: detected rooms/doors overlaid on the plan, click to rename or fix.
3. Publish: shareable link, QR.
4. Navigate (visitor): search box, map, route, step list.

## Component rules
- Every screen works at 390px width first.
- Route line always highest contrast element on screen.
- No modal stacks; use side panels.

## Skills used when designing here (from the adlc kit)
- `requirements-interview` before any screen is drawn.
- `impeccable` or `frontend-design` for the visual pass; `emil-design-eng` for motion.
- `wireframe-spec` for annotating what each region does.
- `better-accessibility` and `interface-review` before calling a screen done.
