\version "2.22.2"

#(set-global-staff-size 18)

\header {
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  source = "https://imslp.eu/files/imglnks/euimg/a/ae/IMSLP706005-PMLP02307-E705554_64-73-Chopin--nocturnes--Ekier-pd.pdf"
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f

  markup-system-spacing = 
    #'((basic-distance . 1)
       (padding . 0.5)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 6) 
       (minimum-distance . 4)
       (padding . 2)
       (stretchability . 40)) % defaults: 12, 8, 1, 60
      
  last-bottom-spacing = 
    #'((basic-distance . 2)
       (minimum-distance . 1)
       (padding . 2)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  top-system-spacing.minimum-distance = 10
    
  #(set-paper-size "letter")
  
  % These settings are scaled to paper-size
  top-margin = 5\mm % default 5
  bottom-margin = 6\mm % default 6
  left-margin = 10\mm % default 10
  right-margin = 10\mm % default 10
  
  tocTitleMarkup = \markup \huge \column {
    \fill-line { \null "Table of Contents" \null }
    \hspace #1
  }
  
  tocItemMarkup = \tocItemWithDotsMarkup
}
