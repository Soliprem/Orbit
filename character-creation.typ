#import "./generic-theme.typ": *

#show: stylised-theme.with(
  title: "Character Creation",
  paper: "a4",
)
#main-title()[Character Creation]

= Objectives
The character creation system pretty much boils down to fleshing out the assumptions the resolution system is built upon to allow for variety in power levels, while preserving build variety.

== Character Creation

The core concept is that you invest Push Points to obtain permanent die size increases.

#rule-box(title: [Character Creation])[
  The cost to permanently increase an ability is:
#table(
  columns: (auto, auto, 1fr),
  [*Die Step*], [*Cost*], [*Descriptors*],
  [d6 $->$ d4], [-1 point\*], [Not great],
  [d6 $->$ d8], [1 point], [Pretty great],
  [d8 $->$ d10], [2 points], [Incredible],
  [d10 $->$ d12], [3 points], [Peak human ability],
)

\*You can lower an ability to d4 to gain one Sand Point.
]

The numbers are adjustable, but I find this works pretty well already.

== Budgeting

Depending on the desired power level, you'd set different starting budgets. A good rule of thumb for a starting point is 2 points per ability score present. With six abilities, that's 12.

Assuming 6 abilities, good defaults are:
#table(
  columns: (auto, auto),
  [*Tone*], [*Die size*],
  [Gritty], [9],
  [General], [12],
  [Heroic], [15],
)

In the western example, I used 8, because I wanted a lethal, quick and gritty setting and vibe. Play around with some builds yourself before telling the players your budget to see what they can build.

== Templates

It's a good idea to provide templates. Once you've set a budget, make some example builds.

