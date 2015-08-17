\header {
    title = "La maison devant le monde"
    composer = "Rémi"
    %piece = "Prélude."
  }

upper = \relative c'' {
  \clef treble
  \key f \minor
  \time 8/4

  %aes8 g8 aes8 g8 aes8 g8 aes8 g8 c8 bes2
  aes8 g8 aes8 g8 aes8 g8 aes8 g8 c8 bes2


}

lower = \relative c {
  \clef bass
  \key f \minor
  \time 8/4

  f,4 c'4 f4 aes4 des,4 f4 aes4 f4

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