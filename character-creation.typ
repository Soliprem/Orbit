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

\*You can lower an ability to d4 to gain one Push Point.
]

The numbers are adjustable, but I find this works pretty well already.

== Budgeting

Depending on the desired power level, you'd set different starting budgets. A good rule of thumb for a starting point is 2 points per ability score present. With six abilities, that's 12.

Assuming 6 abilities, good defaults are:
#table(
  columns: (auto, auto),
  [*Tone*], [*Budget*],
  [Gritty], [9],
  [General], [12],
  [Heroic], [15],
)

In the western example, I used 8, because I wanted a lethal, quick and gritty setting and vibe. Play around with some builds yourself before telling the players your budget to see what they can build.

== Templates

It's a good idea to provide templates. Once you've set a budget, make some example builds.

The examples below use six names from the example core skill list in the resolution system: Strength, Dexterity, Perception, Charisma, Intelligence, and Endurance. In a finished system, replace the ability names and the metacurrency name with the ones used by that setting. If the system uses Luck as a seventh ability, add it to the ability list and adjust the budget. The number shown for Push Points is the remaining rechargeable limit after buying the listed ability changes from the d6 baseline.

#let example-abilities(
  strength: "d6",
  dexterity: "d6",
  perception: "d6",
  charisma: "d6",
  intelligence: "d6",
  endurance: "d6",
) = (
  (name: "Strength", die: strength),
  (name: "Dexterity", die: dexterity),
  (name: "Perception", die: perception),
  (name: "Charisma", die: charisma),
  (name: "Intelligence", die: intelligence),
  (name: "Endurance", die: endurance),
)

#block(breakable: false)[
=== Gritty Budget: 9

#grid(
  columns: (1fr, 1fr),
  column-gutter: 12pt,
  row-gutter: 12pt,
  character-template(
    name: "Hardcase Scout",
    role: "Spend 5, keep 4",
    metacurrency-name: "Push Points",
    metacurrency: 4,
    abilities: example-abilities(
      strength: "d8",
      dexterity: "d10",
      perception: "d8",
      charisma: "d4",
      endurance: "d8",
    ),
    notes: [Excellent under pressure, but socially brittle and short on reserves.],
  ),
  character-template(
    name: "Silver Tongue Survivor",
    role: "Spend 4, keep 5",
    metacurrency-name: "Push Points",
    metacurrency: 5,
    abilities: example-abilities(
      strength: "d4",
      perception: "d8",
      charisma: "d10",
      intelligence: "d8",
    ),
    notes: [Talks first, reads the room well, and avoids direct physical contests.],
  ),
)

]

#block(breakable: false)[
=== General Budget: 12

#grid(
  columns: (1fr, 1fr),
  column-gutter: 12pt,
  row-gutter: 12pt,
  character-template(
    name: "Field Medic",
    role: "Spend 8, keep 4",
    metacurrency-name: "Push Points",
    metacurrency: 4,
    abilities: example-abilities(
      perception: "d10",
      charisma: "d8",
      intelligence: "d10",
      endurance: "d8",
    ),
    notes: [A focused support specialist who solves problems with expertise and steady hands.],
  ),
  character-template(
    name: "Duelist",
    role: "Spend 7, keep 5",
    metacurrency-name: "Push Points",
    metacurrency: 5,
    abilities: example-abilities(
      strength: "d8",
      dexterity: "d10",
      perception: "d8",
      charisma: "d10",
      intelligence: "d4",
    ),
    notes: [Strong in tense confrontations, less useful when patience or study matters.],
  ),
)
]

#block(breakable: false)[
=== Heroic Budget: 15

#grid(
  columns: (1fr, 1fr),
  column-gutter: 12pt,
  row-gutter: 12pt,
  character-template(
    name: "Paragon",
    role: "Spend 10, keep 5",
    metacurrency-name: "Push Points",
    metacurrency: 5,
    abilities: example-abilities(
      strength: "d10",
      dexterity: "d10",
      perception: "d8",
      charisma: "d8",
      intelligence: "d8",
      endurance: "d8",
    ),
    notes: [Broadly exceptional, with enough reserves to push through important scenes.],
  ),
  character-template(
    name: "Mastermind",
    role: "Spend 12, keep 3",
    metacurrency-name: "Push Points",
    metacurrency: 3,
    abilities: example-abilities(
      strength: "d4",
      perception: "d12",
      charisma: "d10",
      intelligence: "d10",
      endurance: "d8",
    ),
    notes: [Dominates planning and social leverage, but has little room for brute force or repeated pushes.],
  ),
)
]

#pagebreak()
#set page(margin: (x: 0.55in, y: 0.4in))

#character-sheet(
  abilities: example-abilities(
    strength: "",
    dexterity: "",
    perception: "",
    charisma: "",
    intelligence: "",
    endurance: "",
  ),
)
