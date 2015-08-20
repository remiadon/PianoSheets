\header {
    title = "Someday"
    composer = "Rémi"
    %piece = "Prélude."
  }

upper = \relative c'' {
  \clef treble
  \key ees \major
  \time 6/2

  %a4 b c d
  r1 r1 r1 r1
  r1 r1 r1 r1
  r1 r1 r1 r2 r4 r8 r16

  d16 ees1 r2 r4
  \tiny{d16} \normalsize{ees8} f8 \tiny{f16} r8 \normalsize{g4} r8 f4 ees4 \tiny{ees16} \normalsize{f8} ees2 r1 r2
  r1


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

  { g8_\markup{\italic"let ring"} ees' g ees g ees }
  aes, ees' g ees g ees
  bes ees g ees g ees
  aes, ees' g ees g ees

  % \bar "" \break

  g, ees' g ees g ees
  aes, ees' g ees g ees
  bes ees g ees g ees
  c ees g ees g ees

  
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
