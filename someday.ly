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
  r1 r1 r1 r1

  ees8 d2 r8
  ees8 d2 r8
  f4 r8 ees4 d8 r16 \tiny{d16} \normalsize{ees8} d2  % total of 6 blacks

  ees8 d2 r8
  ees8 d2 r8
  ees1 r2

  \pageBreak

  ees8 d2 r8
  f8 ees2 r8
  g4 r8 f4 ees8 r16 \tiny{ees16} \normalsize{f8} ees2  % total of 6 blacks

  ees8 d4 d4 d8
  ees8 d4 d4 r8
  d1 r2

  aes'8 g2 r8
  bes8 aes2 r8
  g4 r8 f4 ees8 r16 \tiny{ees16} \normalsize{f8} ees2

  aes8 g4 g4 g8
  aes8 g4 g4 g8
  g1 r2

  aes8 g2 r8
  %bes8 aes2 r8
  aes8 g2 r8
  c4 bes4 r8 g8 f8 ees2 r8

  aes8 g4 g4 g8
  aes8 g4 g4 g8
  g1 r2

  \pageBreak
  
  aes8 g2 r8
  bes8 aes2 r8
  g2 r8 d8 ees8 f2 r8

  aes8 g4 g4 g8
  aes8 g4 g4 g8
  g1 r2

  c,8 bes2 r8
  c8 bes2 r8
  c8 bes2 r8
  c8 bes2 r8

  c8 bes4 bes4 r8
  c8 bes2 r8
  c8 bes4 r16 \tiny{ees32 des32} \small{c4} \normalsize{bes2} r4


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

  g, ees' g ees g ees
  aes, ees' g ees g ees
  bes ees g ees g ees
  aes, ees' g ees g ees
  
  g, ees' g ees g ees
  aes, ees' g ees g ees
  bes ees g ees g ees
  g ees g ees g ees

  g, ees' g ees g ees
  aes, ees' g ees g ees
  bes ees g ees g ees
  aes, ees' g ees g ees

  g, ees' g ees g ees
  aes, ees' g ees g ees
  bes ees g ees g ees
  g ees g ees g ees

  c ees g ees g ees
  d ees g ees g ees
  bes ees g ees g ees
  c ees g ees g ees

  c ees g ees g ees
  d ees g ees g ees
  bes ees g ees g ees
  c ees g ees g ees

  c ees g ees g ees
  d ees g ees g ees
  bes ees g ees g ees
  c ees g ees g ees

  c ees g ees g ees
  d ees g ees g ees
  bes ees g ees g ees
  c ees g ees g ees

  c ees g ees g ees
  d ees g ees g ees
  bes ees g ees g ees
  c ees g ees g ees

  c ees g ees g ees
  d ees g ees g ees
  bes ees g ees g ees
  c ees g ees g ees

  aes,, ees' aes ees aes ees
  ges, des' aes' des, aes' des,
  
  aes ees' aes ees aes ees
  ges, des' aes' des, aes' des,

  aes ees' aes ees aes ees
  ges, des' aes' des, aes' des,

  aes ees' aes ees aes ees
  ges, des' aes' des, aes' des,
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
