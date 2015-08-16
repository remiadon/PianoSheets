upper = \relative c'' {
  \clef treble
  \key ees \major
  \time 7/8

  %a4 b c d
}

lower = \relative c {
  \clef bass
  \key ees \major
  \time 12/4
  %\time 3/4
  %\relative { a'8^"pizz." g f e a4-"scherz." f }
	
  { g8_\markup{\italic"let ring"} ees' g ees g ees }
  aes, ees' g ees g ees
  bes ees g ees g ees
  aes, ees' g ees g ees
  
  g, ees' g ees g ees
  aes, ees' g ees g ees
  bes ees g ees g ees
  c ees g ees g ees
  
  g, ees' g ees g ees
  aes, ees' g ees g ees
  bes ees g ees g ees
  aes, ees' g ees g ees
  
  g, ees' g ees g ees
  aes, ees' g ees g ees
  bes ees g ees g ees
  g ees g ees g ees
  
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
