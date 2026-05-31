#import "./generic-theme.typ": *

#show: stylised-theme.with(
  title: "Resting Subsystems",
)
#main-title()[Resting Subsystems]

= Exhaustion

The party is already going to want to rest because they will want to heal and regain points. However, for campaigns needing it, you can use exhaustion:

#rule-box(title: [Exhaustion])[
  Exhaustion comes in levels, each carrying a mechanical penalty. When the highest level is reached, the character is simply fully unconscious and will sleep for a full day.
]

In a nutshell, each level of exhaustion carries a mechanical penalty. A good starting point is that each level carries a 1d penalty to an ability, and lowers the maximum Push Point pool by 1.

= Recuperating Push Points

Push points can be recuperated. How? That depends on the genre and setting, naturally. You can tie it to consumables (i.e. potions, food), and I recommend tying fixed, safe regeneration to resting in safe conditions. Here's a baseline:

Getting a full night's rest restores points, depending on the conditions:
- in a safe environment with proper supplies $->$ full set of points
- without supplies or unsafe $->$ Half points

In the latter case, you may choose to take a level of exhaustion to recover your whole set of points.

You can also recover points by:
- resting briefly while consuming a meal (1 point)
- using consumables (1 point#footnote[stronger / rarer consumable can provide more, though I wouldn't recommend making it too common])
- resting for an extended amount of time (About 1 point per hour in-game)

As with all things, you can tweak things to your liking.

In the case of consumables, you might want to tie them to a roll. For example, you might tie drinking liquor, or smoking to gaining points, and have a character roll a stat (like intelligence, for their analytical mind to punch through the fogginess, or Endurance to avoid running out of breath).

An example on the mechanical effects might be:

#table(
  columns: (auto, 1fr),
  align: left,
  [*Result*], [*Effect*],
  [Strong failure], [The stat receives a -2d penalty],
  [Full failure], [The stat receives a -1d penalty],
  [Partial success], [Recover 1 point, the stat receives a -1d penalty],
  [Full success], [Recover 1 point],
  [Strong success], [Recover 2 points],
)

Alternatively, you could simply take out the stat penalty component, make the result fully binary between nothing happening mechanically and the 1 point recovery, and use the degree of success for narrative elements inside the scene. That much is your prerogative as the GM. You can also do both, though that might feel very punishing.

= Healing wounds

Much like for push points, healing obviously depends on genre. In worlds with magic, you might have healing magic, and in words with medicine, you may have medicine. This is just a structure you can reskin freely, obviously.

== Resting

Getting a full night's rest restores wound levels in the following amounts. Roll Endurance (or whichever best proxy for "grit" or "constitution" you have in the system) against a CD of 4.
#table(
  columns: (auto, 1fr),
  align: left,
  [*Result*], [*Effect*],
  [Strong failure], [You get worse (gain one level)],
  [Full failure], [Recover 0 levels],
  [Partial success], [Recover 1 level],
  [Full success], [Recover 2 levels],
  [Strong success], [Recover 3 levels],
)

This set assumes your wound system has 5 levels, going from "unharmed" to "dead". If you have more levels, keep it proportional. If you have less, provide additional benefits for higher degrees of success.

You can also heal from wounds by having them be treated, or spending push points, as already established in the wounds module.

== Treatment
Roll an appropriate stat, like "Intelligence", for example.

#table(
  columns: (auto, 1fr),
  align: left,
  [*Result*], [*Effect*],
  [Strong failure], [You get worse (gain 1 level)],
  [Full failure], [Recover 0 levels],
  [Partial success],
  [Recover 1 level, but your next roll suffers the mechanical penalties of the old level],

  [Full success], [Recover 1 levels],
  [Strong success], [Recover 2 levels],
)

== Consumables

In a world with magic or very advanced technology, you might have magic potions or wondrous medicine. In such worlds, you may have consumables that heal one #footnote[or more, though that'd be an incredibly powerful effect] level of wounds.
