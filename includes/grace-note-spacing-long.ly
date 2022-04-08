\version "2.22.2"
\language "english"

\relative c'' {
  \key g \minor
  bf4( b) r8 c4->( cs8 |
  d4 \slashedGrace { d8[ ef d cs d] d } g8. f16 f8 c4 cs8 |
  d4 ef) r e( |
  f4 \slashedGrace { f8[ g f e f] f } bf8. a16 a8 ds,4 e8) |
}

\relative c'' {
  \key g \minor
  d4( \slashedGrace { d8 d[ f] } ef8[ r16 d] c4 g8. a16) |
  bf4( a8. bf16 c4 \grace { c8[ d c] } b16 c d \grace { f8 } ef16)
  \voiceOne
  d4.( d4 d8 \tuplet 3/2 { d8 d d } 
  \oneVoice
   d4 c8. bf16 \grace { a8*1/2[ bf c] } bf8 a) r4 |
}

\layout {
  indent = 0
}