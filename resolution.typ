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
  Each character has a pool of Push Points. A Push Point can be used to _push oneself_, letting the character behave, *for a moment* (a single roll, a single action), as if they were better at the skill. This means, most notably, increasing the die size by one step following the usual progression:

  _$ "d4" -> "d6" -> "d8" -> "d10" -> "d12" $_

  If a die is going to be pushed beyond d12, choose one:
  - spend one point and gain a Push die
  - spend 2 points at once to replace the d12 with a d20. Further pushes beyond d20 create a Push die.

  *Push dice* are rolled alongside the main roll, and their result is added to the result of both dice in the main roll. Each die may be separately subject to advantage. A Push die starts at size d4. Extra Push Points can be used to increase its size, using the progression outlined above.
]

You can double the effect of a push#footnote[making $N$ paid points behave as $2N$. (e.g. $1->2, 2->4$)] (with GM consent) by introducing a complication. Instead of a complication, the World can tally a due.

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
  [Easy], [2+], [Simple tasks],
  [Pretty Hard], [4+], [Routine *challenges* for competent folk],
  [Oompfy], [6+], [Significant obstacles],
  [Increadibly Hard], [8+], [Expert-level tasks],
  [Legendary], [10+], [Heroic feats],
)

Favorable circumstances may grant *advantages* or *disadvantages.*

#rule-box(title: [Advantages and Disadvantages])[
  Advantages and disadvantages can stack, or cancel each other out#footnote[more advantages or disadvantages stack together, advantages and disadvantages cancel each other out]. The final number of kept rolls is the same number of dice as the original unmodified roll. Advantage / Disadvantage applies to any additional dice (like push dice) at the GM's discretion.

  Advantage: Add a die of identical size to the one being rolled, after any pushes. Take the highest results. _You can convert advantage into one push up to (and including) d8, two pushes up to d12, or three pushes after reaching d20._

  Disadvantage: Add a die of identical size to the one being rolled, after any pushes. Take the lowest results.
]

As with Gumshoe#footnote[one of the touchstones of this system, with Ironsworn, YZE and DH], characters are presumed to be _competent._ No rolls are needed for activities that any denizen of the Game's World would be able to do. Additionally, as ability levels increase, this minimum baseline for success also rises.

= Example Core Skill list

Any RPG generally will need skills to handle social encounters and basic interactions with the world.

The only skills that I believe are *needed* to cover the bases are *Strength*, *Dexterity* and *Perception*. They are the core of what a character needs to tell the resolution system in order for it to work.

Beyond those, I believe strong arguments can be made for *Charisma*, *Intelligence*, *Luck*, and *Endurance*. I personally use them, however it can be argued that Charisma and Intelligence should be left to the players, Endurance can be folded into strength, and Luck can be left to the dice. It's your choice!

Naturally, all names can be changed to better fit the vibe of the setting. For example, I renamed Charisma to "Gift of the Gab" in the Western Example Setting.
