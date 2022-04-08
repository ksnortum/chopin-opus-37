\version "2.22.2"

% Redefine

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

% Markup

dimm = \markup \large \italic "dim."
blank = \markup \large " "

% Scheme functions

forceStemLength = 
#(define-music-function (sl music) (real? ly:music?)
  #{
    \override Stem.stemlet-length = $sl
    %\override Stem.details.beamed-lengths = #'(6.0)
    $music
    \revert Stem.stemlet-length
    %\revert Stem.details.beamed-lengths
  #})