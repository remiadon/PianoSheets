\header {
    title = "La Teulère"
    composer = "Rémi"
    %piece = "Prélude."
  }

upper = \relative c'' {
  \clef treble
  \key f \minor
  \time 6/2

  r1 r1 r8
  r1 r1 r8
  r1 r1 r8
  r1 r1
  c,8 f8 c8 f8 c8 f1 r2
  c8 f8 c8 f8 c8 f4 ees4 f2 r2
  c8 f8 c8 f8 c8 f1 r2
  c8 f8 c8 f8 c8 f4 ees4 f2 r2


}

lower = \relative c {
  \clef bass
  \key f \minor
  \time 17/8
  %\time 3/4
  %\relative { a'8^"pizz." g f e a4-"scherz." f }

  f,4 g8 aes8 
  f4 g8 aes8
  ees4 g8 aes8 g8
  des8 g8 aes8 g8

  f4 g8 aes8 
  f4 g8 aes8
  ees4 g8 aes8
  des,4 g8 aes8 g8

  f4 g8 aes8 
  f4 g8 aes8
  ees4 g8 aes8 g8
  des8 g8 aes8 g8

  f4 g8 aes8 
  f4 g8 aes8
  ees4 g8 aes8
  des,4 g8 aes8 g8

  f4 g8 aes8 
  f4 g8 aes8
  ees4 g8 aes8 g8
  des8 g8 aes8 g8

  f4 g8 aes8 
  f4 g8 aes8
  ees4 g8 aes8
  des,4 g8 aes8 g8

  f4 g8 aes8 
  f4 g8 aes8
  ees4 g8 aes8 g8
  des8 g8 aes8 g8

  f4 g8 aes8 
  f4 g8 aes8
  ees4 g8 aes8
  des,4 g8 aes8 g8
  
}

\score {
  \new PianoStaff <<
    %\set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
  indent = 2\cm
  \context {
    \StaffGroup
    \override StaffGrouper.staff-staff-spacing.basic-distance = #8
  }
  \context {
    \Voice
    \override TextScript.padding = #1
    \override Glissando.thickness = #3
  }
}
  \midi { }
}
