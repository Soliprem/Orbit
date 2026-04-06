#import "./generic-theme.typ": *

#show: stylised-theme.with(
  title: "Resolution System",
)
#main-title()[Resolution System]
#stylised-toc()

= Introduction

The system uses a 2-die roll-over mechanic based on Abilities. Each character has 6 abilities (see below).

Characters also have Push Points (the game's metacurrency. The actual name depends on the rest of the system this gets latched on to), which allows them to push themselves beyond their normal limits.

= Main roll

The base roll is simple:
- Roll two dice of the indicated size
- Compare them with the DC:
  - If both succeed, it's a full success: you get what you want and nothing bad happens
  - If both fail, it's a full failure: get ready for consequences (most commonly in combat, the enemy gets to do something)
  - If one succeeds, it's a mixed success: you get what you want, but you suffer some consequence (meaning that both the success and failure effects take place)
- If the two dice have _the same value_, then it's a _strong_ result: whichever effect occurs, it's going to be amplified

= Risk roll

Sometimes a PC might want to not care about contingencies and go straight for the metaphorical kill, even at their own risk. This is the _risk roll._ Roll 1 die (subject to advantage), and treat it as if it were a pair of dice for the purposes of the main roll's degrees of success: any result is automatically a _strong_ result, and there's no mixed success.

= Ability dice

Ability scores are tracked by increasing die size. The starting point for all abilities is d6.

#rule-box(title: [Assigning Abilities])[

  Based on character creation choices, base ability scores can change. For example, an excellent marksman might start with a d8 or d10 in Aim instead of the usual d6. Conversely, a simple farmhand might start with a d4 in Charisma.
  
  _$ "d4" <- "d6" -> "d8" -> "d10" -> "d12" $_
]

#rule-box(title: [Push Points and Pushes])[
  Each character has a pool of Push Points. These can be used to _push oneself_, making for the character behave, *for a moment* (a single roll, a single action), as if they were better at the skill. This means, most notably, increasing the die size by one step following the usual progression:

  _$ "d4" -> "d6" -> "d8" -> "d10" -> "d12" $_

  Beyond d12, each Push Point becomes a +1. Starting from a d12 (even if pushed), 4 points can be spent to roll a d20 with no modifiers. Beyond those 4 points, you add a +1 modifier to the d20 for each additional Push Point spent.
]

You can double the effect of a push (with GM consent) by introducing a complication. Instead of a complication, the World can tally a due.

The World (personified in the GM) can keep a tally of the PC's dues. A sort of symbol of the unfair luck they might have had, or of the favours fate handed them. Fate, however, doesn't do gifts, and luck turns around.

#rule-box(title: "Dues")[
  Dues—accumulated within Bargains with Fate—are tokens the GM gets to spend to insert world or NPC moves while outside of the timing defined by the normal resolution system. For example, the GM might spend a token to:
  - add a complication to a scene
  - have an NPC interrupt a player turn / sequence of player turns
]

Generally, Difficulty Classes are:

#table(
  columns: (1fr, auto, 2fr),
  [*Difficulty*], [*DC*], [*When to Use*],
  [Easy], [3+], [Simple tasks],
  [Simple], [5+], [Routine *challenges* for competent folk],
  [Moderate], [7+], [Significant obstacles],
  [Hard], [9+], [Expert-level tasks],
  [Legendary], [11+], [Heroic feats],
)

Favorable circumstances may grant *advantages* or *disadvantages.*

#rule-box(title: [Advantages and Disadvantages])[
  Advantage: Add a die of identical size to the one being rolled—after any pushes. Take the two highest results. _An advantage can be converted to +1 up to d8, +2 up to d12, and +4 for d20_

  Disadvantage: Add a die of identical size to the one being rolled—after any pushes. Take the two lowest results.
]

As with the main touchstone of this system—Gumshoe—characters are presumed to be _competent._ No rolls are needed for activities that any denizen of the Game's World would be able to do. Additionally, as ability levels increase, this minimum baseline for success also rises.

= Example Core Skill list

Any RPG generally will need skills to handle social encounters and basic interactions with the world.

The only skills that I believe are *needed* to cover the bases are *Strength*, *Dexterity* and *Perception*. They are the core of what a character needs to tell the resolution system in order for it to work.

Beyond those, I believe strong arguments can be made for *Charisma*, *Intelligence*, *Luck*, and *Endurance*. I personally use them, however it can be argued that Charisma and Intelligence should be left to the players, Endurance can be folded into strength, and Luck can be left to the dice. It's your choice!

Naturally, all names can be changed to better fit the vibe of the setting. For example, I renamed Charisma to "Gift of the Gab" in the Western Example Setting.
