%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.2"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tweakArpeggioA = 
  \tweak positions #'(-4.5 . 9) 
  \tweak extra-spacing-width #'(-1 . 0)
  \tweak X-offset -1
  \tweak vertical-skylines ##f
  \etc
  
tweakArpeggioB = 
  \tweak positions #'(0 . 12) 
  \tweak extra-spacing-width #'(-1 . 0)
  \tweak X-offset -1
  \tweak vertical-skylines ##f
  \etc
  
tweakArpeggioC = 
  \tweak positions #'(-3.5 . 1) 
  \tweak extra-spacing-width #'(-2 . 0)
  \tweak X-offset -2
  \etc
  
tweakArpeggioD = 
  \tweak positions #'(0.5 . 12) 
  \tweak extra-spacing-width #'(-2.5 . 0)
  \tweak X-offset -2.5
  \tweak vertical-skylines ##f
  \etc
  
tweakArpeggioE = 
  \tweak positions #'(-3 . 2) 
  \tweak extra-spacing-width #'(-1 . 0)
  \tweak X-offset -1
  \tweak vertical-skylines ##f
  \etc
  
moveTextA =
  \tweak X-offset -7
  \tweak Y-offset 2
  \etc
moveNoteA = \once \override NoteColumn.force-hshift = -0.6
moveNoteB = \tweak NoteColumn.X-offset 1 \etc
moveNoteC = \tweak NoteColumn.X-offset 1 \etc
moveNoteD = \tweak NoteColumn.X-offset 0.5 \etc
moveAccidentalA = \once \override Accidental.X-extent = #'(0 . -0.5)
moveAccidentalB = \once \override Accidental.X-extent = #'(-0.5 . 0)
moveDynamicsA = \tweak X-offset -0.5 \etc
moveGraceA = \tweak NoteColumn.X-offset 1 \etc

moveDotsUp = \once \override Dots.extra-offset = #'(0 . 1)

slurShapeA = \shape #'(
                        ((0 . 0.25) (0 . 0) (0 . -0.25) (0 . -0.75))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 1) (1.5 . 2)) \etc

tieWait = \set tieWaitForNote = ##t

%%% Music %%%

global = {
  \time 6/8
  \key g \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  r4 r8 <fs' a>8( <g b>16 <a c> <as cs> <c e> |
  <b d>4) r8 <fs a>8( <g b>16 <a c> <as cs> <c e> |
  <b d>16 <e c'> <d b'> <c fs> <b g'> <c e>  
    <b d> <a f'> <gs e'> <f a> <e b'> <d c'> |
  <c e>4) r8 <a' c>8( <gs b>16 <a c> <b d> <gs f'> |
  <c e>4) r8 <a c>8( <gs b>16 <a c> <b d> <gs f'> |
  <c e>16 <e c'> <d b'> <b gs'> <c a'> <d f> 
    <c e> <b g'> <a fs'> <g b> <fs c'> <d d'> |
  <g b>4.) r8 \voiceOne \grace { g16[( a] } g16 fs g a |
  \oneVoice
  <d, bf'>4) r8 r \voiceOne \grace { bf'16[( c] } bf16 a bf c |
  
  \barNumberCheck 9
  \oneVoice
  <f, df'>) \moveNoteD <bf' gf'>( <af f'> <gf c> <f df'> <bf gf> 
    <f af> <ef cf'> <d bf'> <cf ef> <bf f'> <af gf'> |
  <gf bf>4.) r8 <d' f>16( <ef gf> <f af> <d cf'> |
  <gf bf>4) r8 <ef gf>( <d f>16 <ef gf> <f af> <d cf'> |
  <gf bf>16 <bf gf'> <af f'> <f d'> <gf ef'> <af cf>
    <gf bf> <f df'> <ef c'> <df f> <c gf'> <af af'> |
  <df f>4.) <df f>8( <bf gf'>16 <af f'> <gf ef'> <f d'> |
  <ef a c>4. \voiceOne <d bf'>8 <ef c'>16 <d bf'> <\single \moveAccidentalB 
    bf g'> <c a'> |
  <a f'>4) \oneVoice r8 \voiceOne <a' f'>(\> <bf g'>16 <a f'> <g e'> <f d'>\! |
  <e a c>4) \oneVoice r8 r16 \voiceOne <ds b'>16( <e c'> <ds b'> <f d'> 
    <e c'> |
    
  \barNumberCheck 17
  \oneVoice
  <c a'>16) <e' c'>( <d b'> <b gs'> <c a'> <d f>  
    <c e> <b g'> <a f'> <gs b> <a c> <f b d> |
  <e c' e>8) r8 r r16 \voiceOne <ds b'>16( <e c'> <ds b'> <f d'> 
    <e c'> |
  \oneVoice
  <c a'>16) <e' c'>( <d b'> <b gs'> <c a'> <d f>  
    <c e> <b g'> <a f'> <gs b> <a c> <f b d> |
  <e c' e>8) r r r16 \voiceOne <ds b'>16( <e c'> <ds b'> <f d'> 
    <e c'> |
  \oneVoice
  <c a'>8) r r r \grace { e16^([ fs] } <c e>16 <b d> <c e> <d fs> |
  <b g'>8) r r r \grace { d16^( e } <bf d>16 <a c> <bf d> <c e> |
  <af f'>16) <c' af'>([ <bf g'> <g e'> <af f'> <bf df>] 
    <af c> <g ef'> <f df'> <e g> <f af> <df g bf> |
  <c af' c>8) r r r16 <b g'>^( <c af'> <b g'> <df bf'> <c af'> |
  
  \barNumberCheck 25
  <af f'>16) <c' af'>([ <bf g'> <g e'> <af f'> <bf df>]
    <af c> <g ef'> <f df'> <ef g> <df af'> <bf bf'> |
  \voiceOne
  gf'8) \oneVoice r r r <c, ef>16^( <df f> <c gf'> <af af'> |
  \voiceOne 
  e'8) \oneVoice r r r <as, cs>16^( <b d> <as e'> <fs fs'> |
  g'4.) g4^( a8 |
  \voiceOne
  g4^\sostenuto g,8 g'4 a8 |
  g4 g,8 g'4 e'8 |
  e4 d8 c4 a8 |
  g4. g4 a8 |
  
  \barNumberCheck 33
  g4 g,8 g'4 a8 |
  g4 g,8 g'4 c8 |
  c4 b8 a4 s8 |
  b4. b4 cs8 |
  b4 b,8 b'4 cs8 |
  b4 b,8 b'4 gs'8\> |
  gs4 fs8 e4 cs8\! |
  b4. b4 cs8 |
  
  \barNumberCheck 41
  b4 b,8 b'4 cs8 |
  b4 b,8 b'4 cs8 | 
  d4_\< d,8 d'4 cs8\! |
  cs4. cs4 d8 |
  d4 cs8 cs4 fs8 |
  fs4 es8 es4 d8 |
  d4 cs8 cs4 d8 |
  ef4. ef4 ff8 |
  
  \barNumberCheck 49
  ff4 ef8 ef4 af8 |
  af4 g8_\> g4 gf8 |
  gf4 f8 f4 e8\! |
  <c f>4. f,4 g8 |
  f4 f,8 f'4 g8 |
  f4 f,8 f'4 d'8 |
  d4 c8 bf4 g8 |
  f4. f4 g8 |
  
  \barNumberCheck 57
  f4 f,8 f'4 g8 |
  f4 f,8 f'4 bf8 |
  bf4 a8 g4 d8 |
  a'4. a4 b8 |
  a4 a,8 a'4 b8 |
  a4 a, 8 a'4 fs'8 |
  fs4 e8 d4 b8 |
  a4. a4 b8 |
  
  \barNumberCheck 65
  a4 a,8 a'4 b8 |
  a4 a,8 a'4 b8 |
  c4 c,8 c'4 b8 |
  \oneVoice
  <b, g' b>4.) <fs' a>8( <g b>16 <a c> <as cs> <c e> |
  <b d>4) r8 <fs a>8( <g b>16 <a c> <as cs> <c e> |
  <b d>16 <e c'> <d b'> <c fs> <b g'> <c e>
    <b d> <a f'> <gs e'> <f a> <e b'> <d c'> |
  <c e>4) r8 <a' c>( <gs b>16 <a c> <b d> <gs f'> |
  <c e>4) r8 <a c>( <gs b>16 <a c> <b d> <d f> |
  
  \barNumberCheck 73
  <c e>16 <e c'> <d b'> <b gs'> <c a'> <d f>
    <c e> <b g'> <a fs'> <g b> <fs c'> <d d'> | 
  <g b>4.) r8 \voiceOne \grace { g16([ a] } g16 fs g a |
  \oneVoice
  <d, bf'>4) r8 r \voiceOne \grace { bf'16([ c] } bf16 a bf c |
  \oneVoice
  <f, df'>16) \moveNoteD <bf' gf'>( <af f'> <gf c> <f df'> <gf bf>
    <f af> <ef cf'> <d bf'> <cf ef> <bf f'> <af gf'> |
  <gf bf>4.) r8 \voiceOne \grace { ef'16([ f] } ef16 d ef f |
  \oneVoice
  <bf, gf'>4) r8 r \voiceOne \grace { fs'16([ gs] } fs16 es fs gs | \noBreak
  \oneVoice
  <cs, a'>16) \ottava 1 <fs' d'>( <e cs'> <d gs> <cs a'> <d fs> 
    <cs e> <b g'> <as fs'> \ottava 0 <g b> <fs cs'> <e d'> |
  <d fs>16) <fs d'>( <e cs'> <cs as'> <d b'> <e g>
    <d fs> <cs a'> <b gs'> <a cs> <gs d'> <e e'> |
    
  \barNumberCheck 81
  \voiceOne c'8) \oneVoice r r r <fs, a>16^( <g b> <fs c'> <d d'> |
  \voiceOne bf'8) \oneVoice r r r <e, g>16^( <f a> <e bf'> <c c'> |
  \voiceOne a'8) \oneVoice r r b,4^( cs8 |
  b4^\sostenuto \staffDown b,8 \staffUp b'4 cs8 |
  b4 \staffDown b,8 \staffUp b'4 gs'8 |
  gs4 fs8 e4 cs8 |
  b4. b4 cs8 |
  b4 \staffDown b,8 \staffUp b'4 cs8 |
  
  \barNumberCheck 89
  b4 \staffDown b,8 \staffUp b'4 e8 |
  e4 ds8 cs4 s8 |
  ds4. ds4 es8 |
  \voiceOne
  ds4 \staffDown ds,8 \staffUp ds'4 es8 |
  ds4 \staffDown ds,8 \staffUp ds'4 bs'8 |
  bs4 as8 gs4 es8 |
  ds4. ds4 es8 |
  ds4 \staffDown ds,8 \staffUp ds'4 es8 |
  
  \barNumberCheck 97
  ds4 \staffDown ds,8 \staffUp ds'4 es8 |
  fs4 \staffDown fs,8 \staffUp fs'4 es8 |
  es4. es4 fs8 |
  fs4 es8 es4 as8 |
  as4 gss8 gss4 fs8 |
  fs4 es8 es4 fs8 |
  g4. g4 af8 |
  af4 g8 g4 c8 |
  
  \barNumberCheck 105
  c4 cf8 cf4 bf8 |
  bf4 a8 a4 gs8 |
  a4. a4 b8 |
  a4 a,8 a'4 b8 |
  a4 a,8 a'4 fs'8 |
  fs4 e8 d4 b8 |
  a4. a4 b8 |
  a4 a,8 a'4 b8 |
  
  \barNumberCheck 113
  a4 a,8 a'4 d8 |
  d4 cs8 b4 fs8 |
  <fs as cs>4. cs'4 ds8 |
  cs4 cs,8 cs'4 ds8 |
  cs4 cs,8 cs'4 as'8 |
  as4 gs8 fs4 ds8 |
  cs4. cs4 ds8 |
  cs4 cs,8 cs'4 ds8 |
  
  \barNumberCheck 121
  cs4 cs,8 cs'4 ds8 |
  e4 e,8 \slashedGrace { e8 \tweakArpeggioE \arpeggio } <e e'>4 <ds ds'>8 |
  <ds b' ds>4. <cs as' cs>8) 
    << 
      { \grace { \moveGraceA cs16([ ds] } cs16 bs cs ds | <gs, e'>4) }
      \\
      { \grace { s8\< } s4 | s16 s\! s8 }
    >>
    \oneVoice r8 r \voiceOne \grace { e'16([ fs] } e16 ds e fs |
  \oneVoice
  <b, g'>16) <e' c'>( <d b'> <c fs> <b g'> <c e>
    <b d> <a f'> <gs e'> <f a> <e b'> <d c'> |
  <c e>4) r8 <a' c>( <gs b>16 <a c> <b d> <gs f'> |
  <c e>4) r8 <a c>( <gs b>16 <a c> <b d> <gs f'> |
  <c e>16) <e c'>( <d b'> <b gs'> <c a'> <d f>
    <c e> <b g'> <a fs'> <g b> <fs c'> <d d'> |
    
  \barNumberCheck 129
  <g b>4.) r8 \voiceOne \grace { g16([ a] } g fs g a |
  \oneVoice
  <d, bf'>4) r8 r \voiceOne \grace { bf'16([ c] } bf16 a bf c |
  <f, df'>8) \grace { cs'16([ ds] } cs16 bs cs ds <gs, e'>8)
    \grace { e'16([ fs] } e16 ds e fs |
  \oneVoice
  <bf, e g>4) r8\fermata r4 r8 |
  r4 r8 \voiceOne d,4( e8 |
  d4 \staffDown d,8 \staffUp d'4 e8 |
  d4 \staffDown d,8 \staffUp d'4) b'8( |
  b4 a8 g4 e8 |
  
  \barNumberCheck 137
  <b d>4.) \oneVoice r4 r8 |
  \staffDown \voiceOne <fs c'>4. s4. |
  <d g b>2.\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  s2. * 6 |
  s4. s8 e' ef16 f |
  s4. s8 g8 gf16 af |
  
  \barNumberCheck 9
  s2. * 5 |
  s4. f4 \moveNoteA \moveAccidentalA e8 |
  s4. d'4 s8 |
  s4. s4 d,8 |
  
  \barNumberCheck 17
  s2. |
  s4. s4 d8 |
  s2. |
  s4. s4 d8 |
  s2. * 3 |
  s4. s4 bf8 |
  
  \barNumberCheck 25
  s2. |
  eff16 df s4 s4. |
  c16 b s4 s4. |
  <g b>2. |
  <b f'>4. q |
  <c e>4. q4 r8 |
  f2. |
  e2. |
  
  \barNumberCheck 33
  <b f'>4. q |
  <c e>4. q |
  <c e>2.*2/3 s8 \stemUp e~ |
  \stemDown
  <b e gs>2 r4 |
  <ds a'>4. q |
  <e gs>4. q4 r8 |
  a2. |
  gs2. |
  
  \barNumberCheck 41
  <ds a'>4. q |
  <e gs>4. q |
  << 
    { 
      \voiceFour a4. a | gs2. | 
    } 
    \\ 
    { 
      \voiceTwo s4. \slashedGrace { \stemUp d8~ } \stemDown d4 cs8 | cs4. s | 
    }
  >>
  a'2. |
  <b cs>2. |
  a2. |
  <bf df>2. |
  
  \barNumberCheck 49
  cf2. |
  df2._~ |
  df2. |
  s2. |
  <a, ef'>4. q |
  <bf d>4. q4 r8 |
  ef2. |
  d2. |
  
  \barNumberCheck 57
  <a ef'>4. q |
  <bf d>4. q4 r8 |
  <bf d>2. |
  <a d fs!>2. |
  <cs g'>4. q |
  <d fs>4. q4 r8 |
  g2. |
  fs2. |
  
  \barNumberCheck 65
  <cs g'>4. q |
  <d fs>4. q |
  <<
    { \voiceFour g4. g |  }
    \\
    { \voiceTwo s4. \slashedGrace { \stemUp c,8~ } \stemDown c4 b8 | }
  >> 
  s2. * 5 |
  
  \barNumberCheck 73
  s2. |
  s4. s8 e ef16 f |
  s4. s8 g gf16 af |
  s2. |
  s4. s8 c cf16 df |
  s4. s8 ds d16 e |
  s2. * 2 |
  
  \barNumberCheck 81
  af,16 g s4 s4. |
  gf16 f s4 s4. |
  e16 ds s4 s4. |
  s2. * 5 |
  
  \barNumberCheck 89
  s2. * 5 |
  cs2. |
  bs2. |
  s2. |
  
  \barNumberCheck 97
  s2. |
  cs4. s |
  bs2. |
  cs2. |
  ds2. |
  as2. |
  <d f>2. |
  <c ef>2. |
  
  \barNumberCheck 105
  f2.~ |
  f2. |
  e4. s |
  <cs g'>4. q |
  <d fs>4. q4 r8 |
  g2. |
  fs2. |
  <cs g'>4. q
    
  \barNumberCheck 113
  <d fs>4. q |
  <d fs>2. |
  \slashedGrace { \stemUp cs8 \tweakArpeggioC \arpeggio } \stemDown cs4. 
    cs4 ds8 |
  <es b'>4. q |
  <fs as>4. q4 as8 |
  << 
    { 
      \voiceFour \tieWait \grace { \stemUp b8 \slurShapeB ^([ b~ ds^~] } 
        \stemDown \moveDotsUp <b ds>2.) |
    } 
    \\ 
    { 
      \voiceTwo as4 gs8 fs4 ds8 |
    } 
  >> 
  as'2. |
  <es b'>4. q |
  
  \barNumberCheck 121
  <cs fs as>4. <fs as> |
  <e b'>4. b' |
  s4. s8 as, a16 b |
  s4. s8 cs c16 d |
  s2. * 4 |
  
  \barNumberCheck 129
  s4. s8 e ef16 f |
  s4. s8 g gf16 af |
  s8 as a16 b s8 cs c16 d |
  s2. * 4 |
  c,2. |
  
  \barNumberCheck 137
}

rightHand = <<
  \clef treble
  \global
  \set Score.tempoHideNote = ##t
  \tempo "Andantino" 4. = 73
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHandUpper = \relative {
  g,8(-\moveTextA _\legato d' b' c b d,) |
  g,8( d' b' c b d,) |
  g,8 d' b' d e, e, |
  a8 e' c' e d e, |
  a,8 e' c' e d e, |
  a,8 e' e' \stemDown c d, d, | \stemNeutral
  g8 d' d' cs c f, |
  bf,8 f' f' e ef af, |
  
  \barNumberCheck 9
  df,8 af' af' f bf, bf, |
  ef8 bf' bf' a af bf, |
  ef,8 bf' bf' a af bf, |
  ef,8 bf' bf' gf af, af, |
  df8 af' af' f af, df, |
  f, f' f' bf, bf, c |
  f, c' a' d, a' a' |
  e,,8 e' e' fs, e gs |
  
  \barNumberCheck 17
  a,8 a' e' d, a' f' |
  e,,8 e' e' fs, e gs |
  a,8 a' e' d, a' f' |
  e,,8 e' e' fs, e gs |
  a,8 e' a e a, d, |
  g8 d' g d g, c, |
  f8 f' c' bf, f' df' |
  c,,8 c' c' d, c e |
  
  \barNumberCheck 25
  f,8 f' c' bf, af' bf,,(~ |
  bf8 bff) gf'' ef af, af,(~ |
  af8 g) e'' cs fs, fs, |
  e2.( |
  d2. |
  c2.) |
  <c''_~ a'>2.( |
  <c g'>2) r4 |
  
  \barNumberCheck 33
  <g, g'>2. |
  <c c'>2. |
  <a' e'>2. |
  <e e'>2 r4 |
  <b b'>2. |
  <e e'>2. |
  <e'_~ cs'>2.( |
  <e b'>2) r4 |
  
  \barNumberCheck 41
  <b, b'>2. |
  <e e'>2. |
  <fs fs'>2. |
  s4. \voiceThree cs''4 d8 |
  d4 cs8 cs4 fs8 |
  fs4 es8 es4 d8 |
  d4 cs8 cs4 d8 |
  ef4. ef4 ff8 |
  
  \barNumberCheck 49
  ff4 ef8 ef4 af8 |
  af4 g8 g4 gf8 |
  gf4 f8 f4 e8 |
  \oneVoice
  <a, c f>4. r4 r8 |
  <f,, f'>2. |
  <bf bf'>2. |
  <bf'_~ g'>2.( |
  <bf f'>2) r4 |
  
  \barNumberCheck 57
  <f, f'>2. |
  <bf bf'>2. |
  <g' d' g>2. |
  <d d'>2. |
  <a a'>2. |
  <d d'>2. |
  <d'_~ b'>2.( |
  <d a'>2) r4 |
  
  \barNumberCheck 65
  <a, a'>2. |
  <d d'>2. |
  <e e'>2. |
  d8( d' b' c b d,) |
  d,8 d' b' c b d, |
  d,8 d' b' d b d, |
  d,8 d' c' e d d, |
  d,8 d' c' e d d, |
  
  \barNumberCheck 73
  d,8 d' e' c d, d, |
  g8 d' d' cs c f, |
  bf, f' f' e ef af, |
  df,8 af' af' f bf, bf, |
  ef8 bf' \clef treble bf' a af df, |
  gf,8 df' df' c b e, |
  a,8 e' e' cs fs, \clef bass fs, |
  b,8 fs' fs' d e, e,_~\slurShapeA _( |
  
  \barNumberCheck 81
  e8 ef) g' fs a, d,~( |
  d8 df) f' e g, c,~( |
  c8 b) fs'' r4 r8 |
  s2. |
  \voiceThree
  <e gs>4. q4 r8 |
  a2. |
  gs2. |
  <ds a'>4. q |
  
  \barNumberCheck 89
  <e gs>4. q |
  \slashedGrace { e8 \tweakArpeggioA \arpeggio } <e gs>2.*2/3 s8 gs_~ |
  <ds \single \omit Accidental gs bs>2 d4\rest |
  <fss cs'>4. q |
  <gs bs> q4 r8 |
  s2. * 2 |
  <fss cs'>4. q |
  
  \barNumberCheck 97
  <gs bs>4. q |
  s4. \slashedGrace { fs8 \tweakArpeggioB \arpeggio } <fs cs'>4 es8 |
  es4. es4 fs8 |
  fs4 es8 es4 as8 |
  as4 gss8 gss4 fs8 |
  fs4 es8 es4 fs8 |
  g4. g4 af8 |
  af4 g8 g4 c8 |
  
  \barNumberCheck 105
  c4 cf8 cf4 bf8 |
  bf4 a8 a4 gs8 |
  \oneVoice
  <cs, a'>4. r4 r8 |
  <a, a'>2. |
  <d d'>2. |
  <d'_~ b'>2.^( |
  <d a'>2) r4 |
  <a, a'>2. |
  
  \barNumberCheck 113
  <d d'>2. |
  <b' fs' b>2. |
  <fs fs'>4. r4 r8 |
  \voiceThree 
  cs''4. cs4 ds8 |
  cs4. cs4 r8 |
  \oneVoice
  <fs, ds'>2. \tweakArpeggioD \arpeggio |
  \voiceThree
  cs'4. cs4 ds8 |
  cs4. cs4 ds8 |
  
  \barNumberCheck 121
  s4. cs4 ds8 |
  s2. * 7 |
  
  \barNumberCheck 129
  s2. * 5
  <fs, c'>4. q |
  <g b>4. q4 r8
}

leftHandLower = \relative {
  \voiceFour
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 3 |
  << { \voiceFour es2. | fs2. | } \\ { \voiceTwo es,4. s | fs4. s | } >>
  <gs' b cs>2. |
  a2. |
  << { \voiceFour g2. | af2. | } \\ { \voiceTwo g,4. s | af4. s | } >>
  
  % bar 51 (49 is in the temporary voice)
  <bf' df>2.~ |  
  <bf df>2. |
  s2. * 5 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 3 |
  R2. |
  <e,,, e'>2. |
  <e'_~ cs'>2.^( |
  <e b'>2) r4 |
  b2. |
  
  \barNumberCheck 89
  <e, e'>2. |
  <cs' gs'>2. |
  <gs gs'>2 s4 |
  <ds ds'>2. |
  <gs gs'>2. |
  \oneVoice
  <gs'_~ es'>2.^( |
  <gs ds'>2) r4 |
  \voiceFour
  <ds, ds'>2. |
  
  \barNumberCheck 97
  <gs gs'>2. |
  <as as'>2. |
  << { \voiceFour gss'2. | as2. | } \\ { \voiceTwo gss,4. s | as4. s | } >>
  bs'2. |
  cs2. |
  << { \voiceFour b2. | c2. | } \\ { \voiceTwo b,4. s | c4 r8 s4. | } >>
  
  \barNumberCheck 105
  <d' f>2.~ |
  <d f>2. |
  s2. * 6
  
  \barNumberCheck 113
  s2. * 3 |
  cs2. |
  fs2. 
  s2. |
  fs2. |
  cs2. |
  
  \barNumberCheck 121
  << { fs2. } \\ { fs,4. r4 r8  } >> |
  \oneVoice
  <gs gs'>2. |
  fs,8 fs' es' \moveNoteB fs fs, b, |
  e,8 \moveNoteC b'' b' as a d, |
  g,8 d' b' d e, e, |
  a e' c' e d e, |
  a,8 e' c' e d e, |
  a,8 e' e' \stemDown c d, d, |
  
  \barNumberCheck 129
  \stemNeutral
  g8 d' d' cs c f, |
  bf,8 f' f' e ef af, |
  df,8 fs([ b, e, a, d,] |
  cs4) r8\fermata bf'''4(_\> cs,8)\! |
  \voiceFour
  d2.~ |
  <d, d'>2. |
  <g, g'>2. |
  \oneVoice
  <g'~ e'>2.^( |
  
  \barNumberCheck 137
  <g d'>4.) r4 r8 |
  \voiceFour
  d4. \oneVoice r4 r8 |
  \voiceFour
  <g, g'>2.\fermata |
}

leftHand = <<
  \clef bass
  \global
  \new Voice \leftHandUpper
  \new Voice \leftHandLower
>>

dynamics = {
  \override TextScript.Y-offset = -0.5
  s4.^\dolce s4\> s16 s\! |
  s4. s4\> s16 s\! |
  s8 s\> s4 s8. s16\! |
  s4. s4\> s16 s\! |
  s4. s4\> s16 s\! |
  s8 s\> s4 s8. s16\! |
  s4. s8 s\< s16 s\! |
  s4. s8 s4\< |
  
  \barNumberCheck 9
  s16 s\> s4 s4 s16 s\! |
  s4. s8 s\> s16 s\! |
  s4. s4\> s16 s\! |
  s16 s\> s4 s4 s16 s\! |
  s4. s8 s\> s16 s\! |
  s2. * 3 |
  
  \barNumberCheck 17
  s2. * 4 |
  s4. s8 \grace { s8\< } s4 |
  s16 s\! s4 s8 \grace { s8\< } s4 |
  s16 s\> s4 s s16 s\! |
  s2. |
  
  \barNumberCheck 25
  s16 s\> s4 s s16 s\! |
  s4 s8\< s4 s16 s\! |
  s4. s4\< s16 s\! |
  s4. s\p |
  s2. |
  s4. s4 s8\> |
  s4. s4 s8\! |
  s2. |
  
  \barNumberCheck 33
  s2. |
  s4. s4 s8\> |
  s4. s4 s8\! |
  s2. * 5 |
  
  \barNumberCheck 41
  s2. * 3 |
  s4. s\cresc |
  s2. * 4 |
  
  \barNumberCheck 49 
  s4. s4 s16 s\! |
  s2. * 2 |
  s4. s\p |
  s2. |
  s4. s4 s8\> |
  s2. |
  s2.\! |
  
  \barNumberCheck 57
  s2. |
  s4. s4 s8\> |
  s4. s4 s8\! |
  s2.\< |
  s4 s8\! s4. |
  s4. s4 s8\> |
  s2. |
  s16 s\! s4 s4. |
  
  \barNumberCheck 65
  s2.\< |
  s2. |
  s4. s4 s8\! |
  s2.\f |
  s2. * 2 |
  s4. s4\> s16 s\! |
  s4. s4\> s16 s\! |
  
  \barNumberCheck 73
  s2. |
  s4. \tag layout { s8 } \tag midi { s8\p } s8\< s16 s\! |
  s2. * 2 |
  s4. s8 s4\< |
  s16 s\! s4 s4. |
  s2. * 2 |
  
  \barNumberCheck 81
  s4. s8 s4\< |
  s32 s\! s16 s4 s8 s4\< |
  s16 s\! s4 s4. |
  s2. |
  s4. s4 s8\> |
  s4. s4 s8\! |
  s2. * 2 |
  
  \barNumberCheck 89
  s4. s4 s8\> |
  s4. s4 s8\! |
  s2. * 2 |
  s4. s4 s8\> |
  s4. s4 s8\! |
  s2. * 2 |
  
  \barNumberCheck 97
  s2. |
  s4.\< s |
  s16 s\! s4 s4.\cresc
  s2. * 4 |
  s4. s4 s16 s\! |
  
  \barNumberCheck 105
  s2.^\dimm |
  s2.\> |
  s16 s\! s4 s4.\pp |
  s2. |
  s4. s4 s8\> |
  s4.s 4 s8\! |
  s2. * 2 |
  
  \barNumberCheck 113
  s4. s4 s8\> |
  s4.s 4 s8\! |
  s4. s\cresc |
  s2. |
  s4. s4 s8\> |
  s4. s4 s8\! |
  s4. s\cresc |
  s2. |
  
  \barNumberCheck 121
  s2. * 2 |
  s4.\f\> s16 s\p s4 |
  s4. s8 s4\< |
  s32 s\! s16 s4 s4. |
  s4. s4\> s16 s\! |
  s4. s4\> s16 s\! |
  s16 s\> s4 s s16 s\! |
  
  \barNumberCheck 129
  s4. s8 s4\< |
  s16 s\! s4 s8 s4\< |
  s16 s\! s4\< s16 s\! s4\> |
  s16 s\! s4 s4. |
  s4. s\pp\< |
  s2. |
  s4. s4\! s8\> |
  s2. |
  
  \barNumberCheck 137
  s16 s\! s4 s4. |
  s2.-\moveDynamicsA \ppp |
  s2. |
}

pedal = {
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s\sustainOff |
  s4\sustainOn s8 s s\sustainOff\sustainOn s16 s\sustainOff |
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s\sustainOff |
  s4\sustainOn s8 s s\sustainOff\sustainOn s16 s\sustainOff |
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s\sustainOff |
  
  \barNumberCheck 9
  s4\sustainOn s8 s s\sustainOff\sustainOn s16 s\sustainOff |
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s\sustainOff |
  s4\sustainOn s8 s s\sustainOff\sustainOn s16 s\sustainOff |
  s2.\sustainOn |
  s4.\sustainOff\sustainOn s\sustainOff |
  s4.\sustainOn s4\sustainOff\sustainOn s16 s\sustainOff |
  s4.\sustainOn s\sustainOff |
  
  \barNumberCheck 17
  s4.\sustainOn s\sustainOff\sustainOn |
  s4.\sustainOff\sustainOn s\sustainOff |
  s4.\sustainOn s\sustainOff\sustainOn |
  s4.\sustainOff\sustainOn s\sustainOff |
  s4.\sustainOn s8. s\sustainOff |
  s4.\sustainOn s8 \grace { s8\sustainOff } s4 |
  s4.\sustainOn s\sustainOff\sustainOn |
  s4.\sustainOff\sustainOn s\sustainOff |
  
  \barNumberCheck 25
  s4.\sustainOn s4\sustainOff\sustainOn s16 s\sustainOff |
  s8 s4\sustainOn s8 s4\sustainOff |
  s8 s4\sustainOn s8 s4\sustainOff |
  s2. * 5|
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 3 |
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s4 s16 s\sustainOff |
  s4.\sustainOn s8 s\sustainOff s |
  s4.\sustainOn s8 s\sustainOff s |
  
  \barNumberCheck 73
  s4.\sustainOn s8 s\sustainOff s |
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s16 s\sustainOff s4 |
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s16 s\sustainOff s4 |
  s4.\sustainOn s16 s\sustainOff s4 |
  
  \barNumberCheck 81
  \repeat unfold 3 { s8 s\sustainOn s16 s\sustainOff s4. | }
  s2. * 5
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 5 |
  s4.\sustainOn s\sustainOff |
  s2. * 2 |
  
  \barNumberCheck 121
  s2. * 2
  s4\sustainOn s16 s\sustainOff s4. |
  s4.\sustainOn s\sustainOff |
  s4\sustainOn s16 s\sustainOff s4. |
  s4.\sustainOn s16 s\sustainOff s4 |
  s4.\sustainOn s16 s\sustainOff s4 |
  s4\sustainOn s16 s\sustainOff s4. |
  
  \barNumberCheck 129
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s\sustainOff |
}

ossia = \relative {
  \global
  \stopStaff
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 4
  \startStaff
  << 
    { s4. f''8 <bf, gf'>16 <af f'> <gf ef'> <f d'> | }
    \\
    { <df'~ f>4. df4 s8 | }
  >> 
  \stopStaff
}

forceBreaks = {
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
}

nocturneTwoMusic = \score {
  \header {
    opus = "Opus 37, No 2"
  }
  \keepWithTag layout
  <<
    \new Staff = "ossia" \with {
      \remove "Time_signature_engraver"
      \hide Clef
      \omit KeySignature
      \override BarLine.allow-span-bar = ##f
      \magnifyStaff #2/3
      \override VerticalAxisGroup.staff-staff-spacing = 
        #'((basic-distance . 0) 
          (minimum-distance . 0)
          (padding . 1)
          (stretchability . 20))
    } {
      \ossia
    }  
    \new PianoStaff \with { 
      instrumentName = \markup \huge "No. 12" 
      \override VerticalAxisGroup.staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . 1)
         (stretchability . 20))
    } <<
      \new Staff = "upper" \rightHand
      \new Dynamics \dynamics
      \new Staff = "lower" \leftHand
      \new Dynamics \pedal
      \new Devnull \forceBreaks
    >>
  >>
  \layout {
    \context {
      \Score
      \override NonMusicalPaperColumn.padding = 0.5
    }
    % Needed for the ossia beaming problem
    \context {
       \Staff
       \consists
         \ossiaBeaming
    }
  }
}

nocturneTwoMidi = \book {
  \bookOutputName "nocturne-op37-no2"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}