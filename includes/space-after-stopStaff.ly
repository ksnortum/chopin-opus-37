\version "2.23.7"

rightHand = \relative {
  d''4 d8 b \grace { c,8[ d f] } b4 r |
}

ossia = \relative {
  \stopStaff s4 \startStaff d''16 c b8 \stopStaff \grace s4. s2 |
}

<<
  \new Staff \with {
    \remove "Time_signature_engraver"
    \hide Clef
    \hide KeySignature
    \magnifyStaff #2/3
  } {
    \ossia
  }  
  \new Staff \rightHand
>>