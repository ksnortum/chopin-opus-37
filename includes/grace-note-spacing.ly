\version "2.22.2"

righthand = \relative c'' {
  c4 
  % \override Score.SpacingSpanner.strict-note-spacing = ##t
  % \newSpacingSection
  \grace { c8[ c c] } c4 c c
}

lefthand = \relative c {
  \clef bass
  c4 c c c
}

<<
  \new Staff \righthand
  \new Staff \lefthand
>>