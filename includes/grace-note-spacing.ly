\version "2.22.2"

\relative c'' {
  c4^"gap before grace notes" \grace { c8[ c c] } c8. c16 c4 c
}

\relative c'' {
  c4^"no gap" c8. c16 \grace { c8[ c c] } c4 c
}

righthand = \relative c'' {
  c4 
  \override NoteColumn.X-offset = -1.25
  \grace { c8[ c c] } 
  \revert NoteColumn.X-offset
  c8. c16 c4 c
}

leftHand = {
  \clef bass
  c4 c c c
}

<<
  \new Staff \righthand
  \new Staff \leftHand
>>