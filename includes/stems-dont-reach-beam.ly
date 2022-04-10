\version "2.22.2"

% Issue: https://gitlab.com/lilypond/lilypond/-/issues/6307

\new Staff \with { \magnifyStaff #2/3 }
{
  \relative c'' {
    \tuplet 3/2 { 
      %%% Below corrects beam thickness
      % \once \override Beam.beam-thickness = 0.25
      
      %%% Below changes the stem lengths, but the beam
      %%% still "shies away" from the bottom of the stem.
      % \once \override Stem.details.beamed-lengths = #'(3 3 3)
      
      %%% Below changes the beam position, but the stems
      %%% still shy away from the beam.
      % \once \override Beam.positions = #'(-1.5 . -2)
      d8 c b 
    } \stopStaff \grace { s8 } s4
  }
}

\layout {
   \context {
     \Staff
     \consists
       #(lambda (context)
          (let ((beam #f)
                (staff-symbol #f))
            (make-engraver
             (acknowledgers
              ((beam-interface engraver grob source-engraver)
               (set! beam grob))
              ((staff-symbol-interface engraver grob source-engraver)
               (set! staff-symbol grob)))
             ((stop-translation-timestep engraver)
              (if (and beam staff-symbol)
                  (ly:grob-set-object! beam 'staff-symbol staff-symbol))
              (set! beam #f)))))
   }
}