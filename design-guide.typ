#import "./generic-theme.typ": *

#show: stylised-theme.with(
  title: "How to build with Orbit",
)
#main-title()[How to tailor Orbit]
#stylised-toc()

= Why Orbit
Orbit needs tailoring. That means it takes a little bit of effort. It also means that there's no excess cloth. Unlike other generic systems like GURPS (which I adore, to be clear, no shade), the tailoring aims to still be founded on minimalism. This should result in a fast building experience for the GM, and a simple, but expressive system for the players.

== Flexible
The core (or the _star_, if you will) of Orbit is the resolution system. It links with the other systems through the metacurrency, which you are free to name for your setting. Different subsystems use different names for it and you're free to use them or take them as inspiration.

== Hackable
It's very easy to design a subsystem, or hack away at one to get something more to your liking, and in fact I'd encourage it!

== How to tailor Orbit

First, take the resolution system.

Now, you can think about what you need: do you need magic? Guns? Horse-riding? Latch onto the system the magic subsystem, the guns subsystem, the horse-riding subsystem. Not there? Invent one. The simplest subsystem might just be a skill. Let me explain.

Take for example horse-riding. We can *choose* to make it a very complicated subsystem, with three custom skills, one for caring, one for taming wild horses, and one for riding. Or we can choose to keep it simple, as I did in the example Western system, and just have riding be a *Ride* ability.

There's a few systems you probably *need* to add:
- a damage / hp system (player characters *will* get hurt eventually, even in a game with no combat)
- a basic skill system
- an initiative system (doesn't need to be linear, can be reaction based like the one in `western`)

Why not add them by default? I hear you ask?

Well, a damage / hp system can be more or less lethal. It can rely on hp or wounds. A skill system can be granular or paint in broad strokes. I'll provide modules, but it's up to you whether your game needs the one or the other.

=== Mechanically, how do I tailor Orbit

The system is written in typst. You can pretty much just concatenate the contents of the files (ie: copy paste the texts) and it all should pretty much work, to be honest. I'll work to try to make it as seamless as possible. Contributions are welcome. Or you can just take the pdfs of different submodules and use those separately. There's also the `main` file in the repo. That pretty much just squashes the module files together. Good starting point.

== Designing custom modules

There's a few example core modules alongside this document, but they'll never be extensive. I couldn't have predicted
that you, wanted to play a weird sci-fi noir version of cat-in-a-hat. Thankfully, it's a simple fix.

The main steps in designing a new submodule are
+ Cut yourself some slack. This is officially homebrew, you *can* change it if you notice there's hiccups. If your players complain #strike[change them], help them understand that you are a human being that can make mistakes, and that it's in their best interest that you all be chill friends about it and move on.
+ Your system likely already has a set of skills you picked. Find pain points. Don't like how swingy a single roll of persuasion is and how that invalidates player agency? That's a (common) pain point.
+ Look for inspiration, either from other games, or from real life. 
+ trial and error from there :)

To make a practical example, I'll make a negotiation system right now. It's likely to be similar to that of Draw Steel!,
because I remember hearing about it and thinking it was very cool. To be fair to you, I'll not look it up right now, 
up to copy it, and just roughly go from memory#footnote[I pinky promise] and imagination.

In real life, much like in Draw Steel, we don't start every negotiation being a neutral blank canvas. We have a mix
of interest, predisposition, and natural patience that set us up for different outcomes.

In that spirit, a GM might change a DC, trying to estimate an appropriate difficulty, given the state of the NPC.
However, that always _feels_ wrong. We _know_ that a negotiation is a back-and-forth. A metaphorical race against the
clock (how long the other side is going to bear with us), to try to _move_ the other side to a more favourable position.

Negotiations have a starting point and an end point, true, but the journey between the two might be non-linear, and 
surely not always behave like a massive jump, which is what it feels when there's a single roll, regardless of when
that happens. Using a single charisma roll sets the scene up for a narratively unsatisfying pace.

This feels like it needs more rolls, does it not? After all, think of when we argue with people. Important discussions
are rarely handled with a single short quip and a walk-away.

So lets say we borrow a word from Pathfinder, and have a set of victory points. The PCs get what they want if they
succeed, say, 3 times. And lets borrow a word from real life (and blades in the dark) and understand that if we both
immediately walked away, we'd still have a result. That's our baseline result. Each times the PCs succeed or fail, 
they move up or down different levels of "it's better" or "it's worse" than baseline.

Now lets borrow a notion from real life. We don't have infinite time, neither do our characters, and neither
of us has infinite patience. Lets say that on each partial success or failure, some timer moves forward. How long
that timer is should depend on what the predisposition is towards the conversation, like in real life. Approach
a guy as they're raking leaves, and they're more likely to entertain your silly proposal than if they were mid-call
with their significant other.

So lets back up for a moment. We have:
+ a baseline starting point. If we never talk, this is what happens
+ We talk
+ We roll, with the DC depending on starting conditions and the conversation (as we already did before designing a subsystem)
+ If we succeed, we get a better deal. If we don't fully succeed, we increase the impatience timer

Now we pretty much start a new loop with a new baseline. The conversation ends either with us getting what we want, or
the other side blowing us off because they grew impatient.

The last touch is to remember that we can have strong rolls. It's a good practice to have them double whatever result
they gave us.
- Strong successes give us a bigger bump in baseline (make it two "levels", if you prepped discrete options in advance, or just be generous in character if you went with the flow)
- Strong failures push the impatience timer forward twice

And there we have it, that's a negotiation subsystem done and dusted.
