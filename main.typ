// Aggregate build for the Orbit/Gumslingers documents.
// Theme files are imported by the individual documents and are not included here.
#import "./generic-theme.typ": *

#show: stylised-theme.with(
  title: "Orbit Modules",
)
#main-title()[Orbit Modules]
#stylised-toc(depth: 4)
#set-stylised-toc-enabled(false)
#set-main-title-outline(true)
#set heading(offset: 1)

#include "./design-guide.typ"
#pagebreak()

#include "./resolution.typ"
#pagebreak()

#include "./initiative.typ"
#pagebreak()

#include "./wounds.typ"
#pagebreak()

#include "./resting.typ"
#pagebreak()

#include "./magic.typ"
#pagebreak()

#include "./character-creation.typ"
