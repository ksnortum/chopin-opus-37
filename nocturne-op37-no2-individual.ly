\version "2.22.2"

\include "includes/header-paper.ily"
\include "includes/nocturne-op37-no2-parts.ily"

\bookpart {
  \nocturneTwoHeader
  \score {
    \keepWithTag layout
    \nocturneTwoMusic
    \nocturneTwoLayout
  }
}

\nocturneTwoMidi
