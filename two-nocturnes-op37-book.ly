\version "2.22.2"

%%% ------
%%% Pieces
%%% ------

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/nocturne-op37-no1-parts.ily"
% \include "includes/nocturne-op37-no2-parts.ily"

nocturneOne = \bookpart {
  \tocItem \markup { 
    \concat { "Nocturne No. 11 in G minor" }
  }
  \nocturneOneHeader
  \score {
    \keepWithTag layout
    \nocturneOneMusic
    \nocturneOneLayout
  }
}

%{
nocturneTwo = \bookpart {
  \tocItem \markup { 
    \concat { "Nocturne No. 8 in D" \raise #0.75 \teeny \flat " major" }
  }
  \nocturneTwoHeader
  \score {
    \keepWithTag layout
    \nocturneTwoMusic
    \nocturneTwoLayout
  }
}
%}

%%% ------------------
%%% Construct the book
%%% ------------------

\titlePage
\pageBreak

\markuplist \table-of-contents
\pageBreak

\nocturneOne
% \nocturneTwo

%%% ----
%%% MIDI
%%% ----

\nocturneOneMidi
% \nocturneTwoMidi
