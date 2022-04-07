\version "2.22.2"

\relative {
  <b d f>4 <g c e> \grace { g'8 } <a, d f>4\arpeggio <g e'> |
}

\relative {
  <b d f>4 <g c e>4*1/4 \hideNotes <a d f>-\tweak X-offset 3 \arpeggio 
    \unHideNotes \once \override NoteColumn.X-offset = 2 \magnifyMusic #2/3 
    { g'8 } <a, d f>4 <g e'> |
}

\relative {
   <b d f>4 <g c e>
   \grace {
     g'8\tweak positions #'(-4 . -1.5) 
     \tweak extra-spacing-width #'(-1.0 . 0) \arpeggio
   }
   <a, d f>4 <g e'> |
}
