\version "2.22.2"

% Redefine

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

% Markup

dimm = \markup \large \italic "dim."
blank = \markup \large " "
dolce = \markup \large \italic "dolce"
legato = \markup \large \italic "legato"
sostenuto = \markup \large \italic "sostenuto"

% Scheme functions

ossiaBeaming = 
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