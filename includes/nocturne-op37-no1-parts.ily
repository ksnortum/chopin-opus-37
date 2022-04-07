%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.2"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveArpeggioA = 
  \tweak positions #'(-4 . -1.5) 
  \tweak extra-spacing-width #'(-1.0 . 0)
  \etc

moveArpeggioB = 
  \tweak positions #'(-3 . -0.5) 
  \tweak extra-spacing-width #'(-1.0 . 0)
  \etc

moveArpeggioC = 
  \tweak positions #'(-4 . -1.5) 
  \tweak extra-spacing-width #'(-1.0 . 0)
  \etc

%%% Music %%%

global = {
  \time 4/4
  \key g \minor
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \partial 4 d''4~(
  d4 c8 bf \grace { a8[ bf c] } bf8 a) r4 |
  r8 bf( \tuplet 3/2 { bf8 a g } fs2->) |
  g4( a8 bf c4 d8 ef |
  a,2)~ a8.( g'16 \tuplet 3/2 { g8 f ef) } |
  d4\( \slashedGrace { d,8_( d[ f bf] } \tuplet 3/2 { d8 c bf) }
    \voiceOne bf8 a\) \oneVoice r4 |
  \appoggiatura { bf,8[ d g] } \stemUp bf8^([ r16 bf] \grace { bf16[ c] }
    \tupletDown \tuplet 3/2 { bf8^>-3 a^>-3 g^>-3 } fs4^>-3) r \stemNeutral 
    \tupletNeutral |
  \voiceOne
  g4( a8. bf16 <g c>4 <fs d'> |
  \tag layout {
    g4.) \oneVoice g8( \afterGrace { \grace { g16[ a] } a2 \startTrillSpan } 
      { g16[ \stopTrillSpan a] } |
  }
  \tag midi {
    g4. g8 \tuplet 3/2 { g32 a bf a bf a } \repeat unfold 2 { 
      \tuplet 3/2 { bf32 a bf a bf a } } \tuplet 3/2 { bf32 a bf a g a } |
  }
    
  \barNumberCheck 9
  bf4 b) r8 c4->( cs8 |
  d4 \slashedGrace { d8[ ef d cs d] d } g8. f16 f8 c4 cs8 |
  d4 ef) r e( |
  f4 \slashedGrace { f8[ g f e f] f } bf8. a16 a8 ds,4 e8) |
  f4( g8. f16 ef4 bf8. c16 |
  d4 \slashedGrace { d8 d[ f] } ef8[ r16 d] c4 g8. a16) |
  bf4( a8. bf16 c4 \grace { c8[ d c] } b16 c d \grace { f8 } ef16)
  \voiceOne
  d4.( d4 d8 \tuplet 3/2 { d8 d d } 
  
  \barNumberCheck 17
  \oneVoice
  d4 c8. bf16 \grace { a8*1/2[ bf c] } bf8 a) r4 |
  r8 bf( \grace { bf16[ c] } \tuplet 3/2 { bf8 a g } fs4) r |
  g4( a8 bf c4 \grace { c8[ c d c b c] } d8. ef16 |
  a,4) a'4.->( g8 \tuplet 3/2 { g8 f ef) } |
  
  d4( \grace { d,8[ f bf] } \tuplet 3/2 { d8 c bf } bf8 a) r4 |
  \grace { bf,8[_( d g] } bf8[)( r16 bf] \grace { bf16[ c] }
    \tuplet 3/2 { bf8-> a-> g-> } fs4->) r |
  g4^( a8. bf16 <g c>4 <fs d'> |
  \tag layout {
    g4.) \oneVoice g8( \afterGrace { \grace { g16[ a] } a2 \startTrillSpan } 
      { g16[ \stopTrillSpan a] } |
  }
  \tag midi {
    g4. g8 \tuplet 3/2 { g32 a bf a bf a } \repeat unfold 2 { 
      \tuplet 3/2 { bf32 a bf a bf a } } \tuplet 3/2 { bf32 a bf a g a } |
  }
  
  \barNumberCheck 25
  bf4 b) r8 c4->( cs8 |
  d4 \slashedGrace { d8[ ef d cs d] d } g8. f16 f8 c4 cs8 |
  d4 ef) r e( |
  f4 \slashedGrace { f8[ g f e f] f } bf8. a16 a8 ds,4 e8) |
  f4( g8. f16 ef4 bf8. c16 |
  d4 \slashedGrace { d8 d[ f] } ef8[ r16 d] c4 g8. a16) |
  bf4( a8. bf16 c4 \grace { c8 c d c } \tuplet 6/4 { b16 c cs d f ef) } |
  \voiceOne
  d4.( d4 d8 \tuplet 3/2 { d8 d d } 
  \oneVoice
  
  \barNumberCheck 33
  d4 c8. bf16 \grace { a8*1/2[ bf c] } bf8 a) r4 |
  r8 bf( \grace { bf16[ c] } \tuplet 3/2 { bf8 a g } fs4) r |
  g4( a8. bf16 c4 d8. ef16 |
  ef8 a,) r a'->~( \magnifyMusic #2/3 { 
    a8*1/4[ gs g fs f e ef c a gf e f g a bf c] } |
  d4 \grace { cs,8[ d f] } \tuplet 3/2 { d'8 c bf } \grace { c,8*1/2[ d fs] }
    bf8[ a]) r4 |
  \grace { bf,8[^( d g] } bf4~ \tuplet 3/2 { bf8 a g } fs2) |
  \voiceOne
  g4( a8. bf16 <g c>4 <fs d'> |
  g2) r | 
  \bar "||" 
  
  \barNumberCheck 41
  \key ef \major
  s1 * 8 |
  
  \barNumberCheck 49
  s1 * 8 |
  
  \barNumberCheck 57
  s1 * 8 |
  
  \barNumberCheck 65
  s1 |
  r4 d'( d d8 d |
  \bar "||"
  \key g \minor
  \oneVoice
  d4 c8 bf \grace { a8 bf c } bf8 a) r4 |
  r8 bf( \tuplet 3/2 { bf8 a g } fs2) |
  g4( a8 bf c4 d8 ef |
  a,2)~ a8.( g'16 \tuplet 3/2 { g8 f ef) } |
  d4\( \slashedGrace { d,8_( d[ f bf] } \tuplet 3/2 { d8 c bf) }
    \voiceOne bf8 a\) \oneVoice r4 |
  \appoggiatura { bf,8[ d g] } \stemUp bf8^([ r16 bf] \grace { bf16[ c] }
    \tupletDown \tuplet 3/2 { bf8^>-3 a^>-3 g^>-3 } fs4^>-3) r \stemNeutral 
    \tupletNeutral |
    
  \barNumberCheck 73
  \voiceOne
  g4( a8. bf16 <g c>4 <fs d'> |
  \tag layout {
    g4.) \oneVoice g8( \afterGrace { \grace { g16[ a] } a2 \startTrillSpan } 
      { g16[ \stopTrillSpan a] } |
  }
  \tag midi {
    g4. g8 \tuplet 3/2 { g32 a bf a bf a } \repeat unfold 2 { 
      \tuplet 3/2 { bf32 a bf a bf a } } \tuplet 3/2 { bf32 a bf a g a } |
  }
  bf4 b) r8 c4->( cs8 |
  d4 \slashedGrace { d8[ ef d cs d] d } g8. f16 f8 c4 cs8 |
  d4 ef) r e( |
  f4 \slashedGrace { f8[ g f e f] f } bf8. a16 a8 ds,4 e8) |
  f4( g8. f16 ef4 bf8. c16 |
  d4 \slashedGrace { d8 d[ f] } ef8[ r16 d] c4 g8. a16) |
  
  \barNumberCheck 81
  bf4( a8. bf16 c4 \grace { c8[ d c] } b16 c d \grace { f8 } ef16)
  \voiceOne
  d4.( d4 d8 \tuplet 3/2 { d8 d d } 
  \oneVoice
   d4 c8. bf16 \grace { a8*1/2[ bf c] } bf8 a) r4 |
  r8 bf( \grace { bf16[ c] } \tuplet 3/2 { bf8 a g } fs4) r |
  g4( a8. bf16 c4 d8. ef16 |
  ef8 a,) r a'->~( \magnifyMusic #2/3 { 
    a8*1/4[ gs g fs f e ef c a gf e f g a bf c] } |
  d4 \grace { cs,8[ d f] } \tuplet 3/2 { d'8 c bf } \grace { c,8*1/2[ d fs] }
    bf8[ a]) r4 |
  \grace { bf,8^([ d g] } bf4 a8. g16 fs2) |
  \voiceOne
  g4( a8. bf16 <g c>4 <fs d'> |
  g2.-> c8. b16 |
  b1)\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  \partial 4 s4
  s1 * 4 |
  \set tieWaitForNote = ##t
  s2 \stemUp \grace { c'8*1/2~ d~ fs~ } \stemDown <c d fs>4 s4 |
  s1 |
  ef4 d c2 |
  r4 bf s2 |
  
  \barNumberCheck 9
  s1 * 7 |
  r8 d2..-> |
  
  \barNumberCheck 17
  s1 * 3 |
  a'1 |
  s2 \stemUp \grace { c,8*1/2~ d~ fs~ } \stemDown <c d fs>4 s4 |
  s1 |
  ef4 d c2 |
  r4 bf s2 |
  
  \barNumberCheck 25
  s1 * 7 |
  r8 d2..->
  
  \barNumberCheck 33
  s1 * 6 |
  ef4 d c2~ |
  c4 bf^( bf <af bf> |
  
  \barNumberCheck 41
  \voiceOne
  \staffDown <ef g bf>4 <ef af c> q <ef g bf> |
  <ef af c>4 <g bf ef> <f bf d> <g bf ef> |
  \staffUp
  <bf d f>4 <bf ef g> <c ef af> <bf ef g> |
  <bf d f>4 <g c ef> \grace { g'8-\moveArpeggioA \arpeggio } 
    <af, d f>4 <g ef'> |
  \staffDown 
  <g bf>4 <ef af c> q <ef g bf> |
  <ef af c>4 <g bf ef> <f bf d> <g bf ef> |
  \staffUp
  <bf d f>4 <bf ef g> <c ef af> <bf ef g> |
  <bf d f>4 <g c ef> \grace { g'8-\moveArpeggioA \arpeggio } 
    <af, d f>4 <g ef'>) |
  
  \barNumberCheck 49
  <bf ef g>4( <g d' g> <c ef g> <a d fs> |
  <c f>4 <d f> <bf d bf'> <c e g> |
  <c f af>4 <df f bf> <bf e g> <af f'> |
  <c f af>4 \grace { c'8 } <df, f bf>4 <bf e g> <af_~ f'> |
  <af c ef>4 <g c ef> <g bf ef> <f bf d> |
  <a d>4 <bf d> <g bf d g> \staffDown <e a cs> |
  <fs a d>4 <g c ef> q <f af d> |
  <fs a d>4 <g c ef> <f af c> <d f bf>)
  
  \barNumberCheck 57
  <ef g bf>4( <ef af c> q <ef g bf> |
  <ef_~ af c>4 <ef g bf ef> <f bf d> <g bf ef> |
  \staffUp
  <bf d f>4 <bf ef g> <c ef af> <bf ef g> |
  <bf d f>4 <g c ef> \grace { g'8-\moveArpeggioA \arpeggio } 
    <af, d f>4 <g ef'> |
  \staffDown
  <g bf>4 <ef af c> q <ef g bf>)\fermata |
  <ef af c>4( <g bf ef> <f bf d> <g bf ef>)\fermata |
  \staffUp
  <bf d f>4( <df ef g> \grace { bf'8-\moveArpeggioB \arpeggio } 
    <c, ef af>4 <bf e g>)\fermata |
  <af c f>4( <g c ef> \grace { g'8-\moveArpeggioC \arpeggio } 
    <af, c f>4 <g c ef>)\fermata |
    
  \barNumberCheck 65
  \voiceTwo
  d'1~\arpeggio |
  d1 |
  s1 * 4 |
  \set tieWaitForNote = ##t
  s2 \stemUp \grace { c8*1/2~ d~ fs~ } \stemDown <c d fs>4 s4 |
  s1 |
  
  \barNumberCheck 73
  ef4 d c2 |
  r4 bf s2 |
  s1 * 6
  
  \barNumberCheck 81
  s1 |
  r8 d2..-> |
  s1 * 6 |
  
  \barNumberCheck 89
  ef4 d c2 |
  r4 <b f'> <c e> <ef g~> |
  <d g>1*1/2 \magnifyMusic #2/3 { \stemUp b4*2/7 d \stemDown b' b d b' 
                                  b1*1/14^\fermata } |
}

rightHand = <<
  \clef treble
  \global
  \set Score.tempoHideNote = ##t
  \tempo "Andante sostenuto" 4 = 72
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHandUpper = \relative {
  \partial 4 r4
  g,4( <d' d'> <fs c' ef> <d d'> |
  <g bf ef>4 <d d'> <a' c ef> <d, d'>) |
  g,4( <g' bf d> c,, <g'' c ef g>) |
  f,4( <ef'' g>_\> <d f> <c ef>)\! |
  <bf,, bf'>4( f'' d, d')~ |
  <g, d'>4( <d' d'> <a' c ef> <d, d'> |
  <ef bf'>4) <bf g'> \voiceThree a'2 \oneVoice |
  s4 <g d'> f, <f' c' ef f> |
  
  \barNumberCheck 9
  \voiceFour
  <bf d>4^( f' <a, ef'> <f_~ f'> |
  <f bf d>4 f' <a, ef'> <f f'> |
  \voiceThree
  f'4 g2 g4 |
  f4 \clef treble a <cs, g'> <a a'>) \clef bass |
  \oneVoice
  d,4 <a' d f> ef <g bf ef g> |
  bf,4 <f' bf d> c <ef g ef'> |
  g,4 <g' bf d> ef, <g' c g'> |
  d,4 \clef treble <a'' fs'>( <bf g'> <b gs'>8 <c a'>) \clef bass |
  
  \barNumberCheck 17
  g,,4( <d'' d'> <fs c' ef> <d d'> |
  <g bf ef>4 <d d'> <a' c ef> <d, d'>) |
  g,4 <g' bf d> c,, <g'' c ef g> |
  f,4( <ef'' g>\> <d f> <c ef>)\! |
  <bf,, bf'>4( f'' d, d')~ |
  <g, d'>4( <d' d'> <a' c ef> <d, d'> |
  <ef bf'>4) <bf g'> \voiceThree a'2 \oneVoice
  s4 <g d'> f, <f' c' ef f>( |
  
  \barNumberCheck 25
  \voiceFour
  <bf d>4 f' <a, ef'> <f_~ f'> |
  <f bf d>4 f' <a, ef'> <f f'> |
  \voiceThree
  f'4 g2 g4 |
  f4 \clef treble a <cs, g'> <a a'>) \clef bass |
  \oneVoice
  d,4 <a' d f> ef <g bf ef g> |
  bf,4 <f' bf d> c <ef g ef'> |
  g,4 <d' g bf d> ef, <ef' g c g'> |
  d,4 \clef treble <a'' fs'>( <bf g'> <b gs'>8 <c a'>) \clef bass |
  
  \barNumberCheck 33
  g,,4 <d'' d'>( <fs c' ef> <d d'> |
  <g bf ef>4 <d d'> <a' c ef> <d, d'>) |
  g,4 <g' bf d> c,, <g'' c ef g> |
  f,4( <ef'' g> <d f> <c ef> |
  <bf,, bf'>4) f'' d, d'~ |
  <g, d'>4( <d' d'> <a' c ef> <d, d'> |
  <ef bf'>4) <bf g'> \voiceThree a'2 |
  s4 d, d d |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s1 * 8 |
  
  \barNumberCheck 57
  s1 * 8 |
  
  \barNumberCheck 65
  s1 * 2 |
  \oneVoice
  <g,, g'>4( <d'' d'> <fs c' ef> <d d'> |
  <g bf ef>4 <d d'> <a' c ef> <d, d'>) |
  g,4 <g' bf d> c,, <g'' c ef g> |
  f,4( <ef'' g>\> <d f> <c ef>)\! |
  <bf,, bf'>4( f'' d, d')~ |
  <g, d'>( <d' d'> <a' c ef> <d, d'> |
  
  \barNumberCheck 73
  <ef bf'>4) <bf g'> \voiceThree a'2 \oneVoice |
  s4 <g d'> f, <f' c' ef f> |
  \voiceFour
  <bf d>4^( f' <a, ef'> <f_~ f'> |
  <f bf d>4 f' <a, ef'> <f f'> |
  \voiceThree
  f'4 g2 g4 |
  f4 \clef treble a <cs, g'> <a a'>) \clef bass |
  \oneVoice
  d,4^\dimm <a' d f> ef <g bf ef g> |
  bf, <f' bf d> c <ef g ef'> |
  
  \barNumberCheck 81
  g,4 <g' bf d> ef, <g' c g'> |
  d,4 \clef treble <a'' fs'>( <bf g'> <b gs'>8 <c a'>) \clef bass |
  g,,4( <d'' d'> <fs c' ef> <d d'> |
  <g bf ef>4 <d d'> <a' c ef> <d, d'>) |
  g,4 <g' bf d> c,, <g'' c ef g> |
  f,4( <ef'' g> <d f> <c ef> |
  <bf,, bf'>4) f'' d, d'~ |
  <g, d'>4( <d' d'> <a' c ef> <d, d'> |
  
  \barNumberCheck 89
  <ef bf'>4) <bf g'> \voiceThree a'2
  r4 g \oneVoice <c, g'>4 q |
  \set tieWaitForNote = ##t
  \voiceThree
  \magnifyMusic #2/3 { g,4*2/3( g'_~ d'_~ } \voiceFour <g, d'>1*1/2)\fermata |
}

leftHandLower = \relative {
  \voiceFour
  \partial 4 s4
  s1 * 6 |
  s2 <a, ef'>4 d^~ |
  \stemUp <g, d'>4 \stemDown s2. |
  
  \barNumberCheck 9
  s4 f'2 s4 |
  s4 f2 s4 |
  <bf d>2 <a~ cs> |
  <a d>4 a2 s4 |
  s1 * 4
  
  \barNumberCheck 17
  s1 * 6 |
  s2 <a, ef'>4 d^~ |
  \stemUp <g, d'>4 \stemDown s2. |
  
  \barNumberCheck 25
  s4 f'2 s4 |
  s4 f2 s4 |
  <bf d>2 <a~ cs> |
  <a d>4 a2 s4 |
  s1 * 4 |
  
  \barNumberCheck 33
  s1 * 6 |
  s2 <a, ef'>4 
  << { \voiceFour d~ | \voiceThree d4 s2. } \\ { \voiceFour s4 | g,2. f4 } >>
  
  \barNumberCheck 41
  \key ef \major
  ef4 af af ef |
  af4 ef bf' ef, |
  bf'4 ef af, ef' |
  bf4 c bf ef,~ |
  <ef ef'>4 af af ef |
  af4 ef bf' ef, |
  bf'4 ef af, ef' |
  bf4 c bf ef,~ |
  
  \barNumberCheck 49
  \voiceThree
  <ef ef'>4 <bf bf'> <c c'> <d d'> |
  <a a'> <bf bf'> <g g'> <c c'> |
  <f, f'>4 <bf bf'> <c c'> <f f'> |
  <f, f'>4 <bf bf'> <c c'> f |
  \voiceFour
  <af, af'>4 < ef ef'> <g g'> <bf bf'> |
  <f f'> <g g'> <e e'> <a a'> |
  <d, d'> <c c'> q <d d'> |
  <d d'>4 <c c'> <f f'> <bf bf'> |
  
  \barNumberCheck 57
  ef4 <af, af'> q ef' |
  af4 ef <bf bf'> ef |
  bf'4 ef af, ef' |
  bf4 c bf ef,~ |
  <ef ef'> <af, af'> q ef'\fermata |
  af4 ef bf'~ <ef, bf'>\fermata |
  bf'4 <ef bf'> af, c\fermata |
  <f, c'>4 <c c'> <f c'> <c c'>\fermata |
  
  \barNumberCheck 65
  <fs, f' d' a'>1\arpeggio |
  \oneVoice
  R1 |
  \key g \minor
  s1 * 6 |
  
  \barNumberCheck 73
  \voiceFour
  s2 <a' ef'>4 d^~ |
  \stemUp <g, d'>4 \stemDown s2. |
  s4 f'2 s4 |
  s4 f2 s4 |
  <bf d>2 <a~ cs> |
  <a d>4 a2 s4 |
  s1 * 2
  
  \barNumberCheck 81
  s1 * 8 |
  
  \barNumberCheck 89
  s2 <a, e'>4 d |
  g,2 s |
  s1 |
}

leftHand = <<
  \clef bass
  \global
  \new Voice \leftHandUpper
  \new Voice \leftHandLower
>>

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 s4\p\>
  s4 s\! s2 |
  s1 |
  s2.\< s8 s\! |
  s2 s8. s16\> \tuplet 3/2 { s4 s8\! } |
  s1\f |
  s1 |
  \tag layout { s1 }
  \tag midi   { s1\p }
  s1
  
  \barNumberCheck 9
  s1 * 2 |
  s1\cresc |
  s2 s8 s4.\! |
  \override DynamicTextSpanner.style = #'none
  s1\dim |
  s1 * 2 |
  s4 s2.\<
  
  \barNumberCheck 17
  s1\f |
  s1 * 3 |
  s1\ff |
  s1 |
  s2.\p\< s8 s\! |
  s4. s8\< s4. s8\!
  
  \barNumberCheck 25
  s1 * 2 |
  \revert DynamicTextSpanner.style
  s1\cresc |
  s2 s8 s4.\> |
  s2. s4\! |
  s1 * 2 |
  s4 s2\< s8 s16 s\! |
  
  \barNumberCheck 33
  s1 * 4 |
  s1\p |
  s1 * 3 |
  
  \barNumberCheck 41
  s1\p |
  s1 * 7 |
  
  \barNumberCheck 49
  s1\cresc |
  s1 |
  s2 s\> |
  s2. s4\! |
  s4 s2.\cresc |
  s1 |
  s2. s4\> |
  s2. s4\! |
  
  \barNumberCheck 57
  s1\p |
  s1 * 7 |
  
  \barNumberCheck 65
  s1 |
  s4 s2.\pp |
  s1 * 4
  s1\ff 
  s1 |
  
  \barNumberCheck 73
  \tag layout { s2.\< s8. s16\! | }
  \tag midi   { s2.\p\< s8. s16\! | }
  s4. s8\< s4. s16 s\! |
  s1 * 2 |
  s1\cresc |
  s2 s8\! s4. |
  s2.\> s4\! |
  s1 |
  
  \barNumberCheck 81
  s2 s4.\< s16 s\! |
  s4 s2.\<  |
  s1\p |
  s1 * 3 |
  s1\pp |
  s1 
  
  \barNumberCheck 89
  s1 * 2 |
  s1\pp |
}

pedal = {
  \partial 4 s4
  s2\sustainOn s\sustainOff |
  s1 |
  s2\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff |
  s2\sustainOn s4.\sustainOff\sustainOn s8\sustainOff |
  s2\sustainOn s\sustainOff |
  s1 |
  s2\sustainOn s4.\sustainOff\sustainOn s16 s\sustainOff |
  
  \barNumberCheck 9
  s1 * 4 |
  s2\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff |
  
  \barNumberCheck 17
  s2\sustainOn s\sustainOff |
  s1 |
  s2\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff |
  s2\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff |
  s1 |
  s2\sustainOn s4.\sustainOff\sustainOn s16 s\sustainOff |
  
  \barNumberCheck 25
  s1 * 4 |
  s2\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff |
  
  \barNumberCheck 33
  s2\sustainOn s\sustainOff |
  s1 |
  s2\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff |
  s2\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff |
  s1 * 2 |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s1 * 8 |
  
  \barNumberCheck 57
  s1 * 8 |
  
  \barNumberCheck 65
  s1\sustainOn |
  s2. s8. s16\sustainOff |
  s2\sustainOn s\sustainOff |
  s1 |
  s2\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff |
  s2\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff |
  
  \barNumberCheck 73
  s1 |
  \tag layout { s2 s4.\sustainOn s16 s\sustainOff | }
  \tag midi   { s2\sustainOn s4.\sustainOff\sustainOn s16 s\sustainOff | }
  s1 * 4 |
  s2\sustainOn s4.\sustainOff\sustainOn s16 s\sustainOff |
  s2\sustainOn s\sustainOff\sustainOn |
  
  \barNumberCheck 81
  s2\sustainOff\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff |
  s2\sustainOn s2\sustainOff |
  s1 |
  s2\sustainOn s\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s\sustainOff |
  s2\sustainOn s4.\sustainOff\sustainOn s16 s\sustainOff |
  s2\sustainOn s\sustainOff
  
  \barNumberCheck 89
  s1 * 2 |
  s1\sustainOn |
}

ossia = \relative {
  \global
  \stopStaff
  \partial 4 s4
  s1 * 8 |
  % \hideNotes f''4( \unHideNotes \startStaff ef8) ef8*1/2([ 
  %   s16\turn f8*1/2 \hideNotes gf8*1/2)] \unHideNotes \stopStaff s8 |
  
  \barNumberCheck 9
  s1 * 7 |
  \startStaff 
  << 
    { \voiceOne d''4 d4. d8 \tuplet 3/2 { d8 d d } | } 
    \\ 
    { \voiceTwo r8 d,2.. | } 
  >>
  \stopStaff
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 7 |
    \startStaff 
  << 
    { \voiceOne d'4 d4. d8 \tuplet 3/2 { d8 d d } | } 
    \\ 
    { \voiceTwo r8 d,2.. | } 
  >>
  \stopStaff
  
  \barNumberCheck 33
  s1 * 4 |
  s4 \startStaff \grace { cs8[ d f bf] } \tuplet 3/2 { d8 c bf } 
    \stopStaff \grace { s4. } s2 |
  s1 * 3 |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s1 * 8 |
  
  \barNumberCheck 57
  s1 * 8 |
  
  \barNumberCheck 65
  s1 * 8 |
  
  \barNumberCheck 73
  s1 * 8 |
  
  \barNumberCheck 81
  s1 |
  \startStaff 
  << 
    { \voiceOne d4 d4. d8 \tuplet 3/2 { d8 d d } | } 
    \\ 
    { \voiceTwo r8 d,2.. | } 
  >>
  \stopStaff
  s1 * 4
  s4 \startStaff \grace { cs8[ d f bf] } \tuplet 3/2 { d8 c bf } 
    \stopStaff \grace { s4. } s2 |
}

forceBreaks = {
  \partial 4 s4
  %{ 1 %}  \repeat unfold 3 { s1\noBreak } s1\noPageBreak\break
  %{ 5 %}  \repeat unfold 3 { s1\noBreak } s1\noPageBreak\break
  %{ 9 %}  \repeat unfold 3 { s1\noBreak } s1\noPageBreak\break
  %{ 13 %} \repeat unfold 3 { s1\noBreak } s1\noPageBreak\break
  %{ 17 %} \repeat unfold 3 { s1\noBreak } s1\pageBreak
 
  %{ 21 %} \repeat unfold 3 { s1\noBreak } s1\noPageBreak\break
  %{ 25 %} \repeat unfold 3 { s1\noBreak } s1\noPageBreak\break
  %{ 29 %} \repeat unfold 3 { s1\noBreak } s1\noPageBreak\break
  %{ 33 %} \repeat unfold 3 { s1\noBreak } s1\noPageBreak\break
  %{ 37 %} \repeat unfold 3 { s1\noBreak } s1\pageBreak
  
  %{ 41 %} \repeat unfold 4 { s1\noBreak } s1\noPageBreak\break
  %{ 46 %} \repeat unfold 4 { s1\noBreak } s1\noPageBreak\break
  %{ 49 %} \repeat unfold 4 { s1\noBreak } s1\noPageBreak\break
  %{ 56 %} \repeat unfold 4 { s1\noBreak } s1\noPageBreak\break
  %{ 61 %} \repeat unfold 5 { s1\noBreak } s1\noPageBreak\break
  %{ 67 %} \repeat unfold 3 { s1\noBreak } s1\pageBreak
  
  %{ 71 %} \repeat unfold 3 { s1\noBreak } s1\noPageBreak\break
  %{ 75 %} \repeat unfold 4 { s1\noBreak } s1\noPageBreak\break
  %{ 80 %} \repeat unfold 3 { s1\noBreak } s1\noPageBreak\break
  %{ 84 %} \repeat unfold 3 { s1\noBreak } s1\noPageBreak\break
  %{ 88 %} \grace { s4.} 
}

nocturneOneHeader = \header { 
  title = "Nocturnes"
  composer = "Frédéric Chopin (1810-1849)"
  opus = "Opus 37, No 1"
  copyright = \markup { 
    "This work is licensed under a" 
    \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
    "Creative Commons Attribution-ShareAlike 4.0 License" 
  }
}

nocturneOneLayout = \layout {
  \context {
    \Score
    % \omit BarNumber
    \override Slur.details.free-head-distance = 1
  }
}

nocturneOneMusic = <<
  \new Staff = "ossia" \with {
    \remove "Time_signature_engraver"
    \hide Clef
    \override BarLine.allow-span-bar = ##f
    \override KeySignature.stencil = ##f
    \magnifyStaff #2/3
    \override VerticalAxisGroup.staff-staff-spacing = 
      #'((basic-distance . 0) 
        (minimum-distance . 0)
        (padding . 1)
        (stretchability . 0))
  } {
    \ossia
  }  
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 11" 
    tempoHideNote = ##t
  } <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
>>

nocturneOneMidi = \book {
  \bookOutputName "nocturne-op37-no1"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }    
    }
  }
}