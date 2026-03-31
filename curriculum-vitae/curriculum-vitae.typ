#let name = "David Wood"

#set document(
  title: name + "'s Curriculum Vitae",
  author: name
)
#set text(font: "Austera Text", size: 10pt, lang: "en")
#set page(
  footer: text(8pt, fill: gray)[
    #grid(
      columns: (1fr, 1fr, 1fr),
      {
        let fmt = "[month repr:long] [day], [year]"
        align(left)[
          Generated #datetime.today().display(fmt)
        ]
      },
      align(center)[#(name)'s Curriculum Vitae],
      align(right, context(counter(page).display())),
    )
  ],
  margin: (
    top: 1.5cm,
    bottom: 2cm,
    left: 2cm,
    right: 2cm
  )
)
#set list(tight: false, indent: 5mm)
#set par(leading: 0.45em)

#show heading: it => [
  #set text(10pt, weight: "light")
  #pad(bottom: 0.5mm)[
    #pad(top: 0pt, bottom: -10pt, it.body)
    #line(length: 100%, stroke: 0.25pt)
  ]
]
#show link: it => [
  #underline(stroke: 0.1mm + gray, offset: 0.75mm, it.body)
]

#let title(
  name: "",
  subtitles: (),
  contacts: ()
) = {
  align(center)[
    #block(text(weight: "light", 2.5em, name))
    #grid(
      columns: (auto),
      row-gutter: 3mm,
      subtitles.join(" · "),
      text(size: 8pt, fill: gray, contacts.join(" · ")),
    )

  ]
}

#let entry(
  body,
) = {
  pad(
    top: 0.1mm,
    bottom: 0.1mm,
    left: 5mm,
    right: 5mm,
    {
      body
    }
  )
}

#let exp(
  body,
  title: "",
  subtitle: "",
  location: "",
  period: ""
) = {
  entry({
    grid(
      columns: (auto, 1fr),
      row-gutter: 2mm,
      align(left, strong(title)),
      align(right, text(gray, location)),
      align(left, emph(subtitle)),
      align(right, text(gray, period))
    )
    body
  })
}

#let prev(
  title: "",
  period: ""
) = {
  entry({
    grid(
      columns: (1fr),
      rows: (auto, auto),
      row-gutter: 2mm,
      align(center, text(size: 8pt, fill: gray, title)),
      align(center, text(size: 8pt, fill: silver, period)),
    )
  })
}

#title(
  name: name,
  subtitles: (
    "Principal Software Engineer",
    "Open Source Maintainer",
    "Edinburgh, Scotland",
  ),
  contacts: (
    link("mailto:hello@davidtw.co")[hello#(sym.at)davidtw.co],
    link("https://davidtw.co")[https://davidtw.co],
    link("https://github.com/davidtwco")[#(sym.at)davidtwco],
  )
)

= Open Source
#exp(
  title: "Rust Foundation / Rust Programming Language",
  subtitle: "Board Member / Project Director",
  location: "",
  period: "Oct 2025 - Present",
)[
  As board member representing the Rust Project to the Rust Foundation, I'm responsible for
  ensuring the Foundation is serving the needs of the Rust Project and its members. This involves
  working closely with the Foundation's executive staff to ensure the Foundation is well-informed
  of the views and priorities of the Rust Project's leadership council and members. In addition, I
  provide regular updates to the other members of the Foundation's board on developments within the
  Rust Project.

  In addition, within the Rust Project as a _Project Director_, I'm responsible for ensuring that
  the Project's relationship with the Foundation is healthy and productive; that the Project is
  aware of the needs, views and priorities of the Foundation; and that the Foundation's ongoing
  efforts within the project are successful.
]

#exp(
  title: "Rust Programming Language",
  subtitle: "Compiler Team Co-Lead",
  location: "",
  period: "Aug 2023 - Present",
)[
  In collaboration with my compiler team co-lead, I’m responsible for representing the Rust compiler
  team; owning the compiler team’s decisions; making unilateral approval for trivial or urgent
  issues; driving the team’s weekly meetings; communicating with other members of Rust leadership;
  authoring communication on behalf of the team; and supporting compiler team members in their
  contributions.

  Since becoming co-lead, I have landed an RFC to
  #link("https://github.com/rust-lang/rfcs/pull/3599")[restructure the compiler team], improved
  review queue capacity, improved our documentation (especially with regards to our processes and
  policies), ran regular triage meetings, and ensured the team's well-functioning.

  I've also written about the team's
  #link("https://davidtw.co/posts/on-ongoing-work-in-the-rust-compiler-team")[ongoing work],
  #link("https://davidtw.co/posts/on-compiler-team-membership-part-i")[membership],
  #link("https://davidtw.co/posts/on-the-compiler-teams-review-queue")[review queue], and the 
  #link("https://davidtw.co/posts/on-the-shape-of-the-rust-project")[overall structure of the project].
]

#exp(
  title: "Rust Programming Language",
  subtitle: "Compiler Team Maintainer",
  location: "",
  period: "Oct 2017 - Present",
)[
  As member of the Rust compiler team, I am responsible for the implementation and maintenance of
  the Rust compiler, which involves having merge privileges; being assigned patches to review;
  fixing high-priority bugs; and reviewing backports, major change proposals and compiler RFCs.

  I regularly contribute bug fixes, diagnostic improvements and refactorings; as well as lead or
  contribute to engineering efforts to implement new features in the Rust compiler. Since starting
  to contribute to Rust, the projects I have worked on include non-lexical lifetimes, split
  debuginfo, `#[non_exhaustive]`, diagnostics, scalable vectors, and build-std.
]

= Work Experience
#exp(
  title: "Arm Holdings plc",
  subtitle: "Principal Software Engineer",
  location: "Edinburgh, Scotland",
  period: "Apr 2026 - Present"
)[
  Within the Rust team at Arm, we contribute improved Arm platform support to the upstream Rust
  project and ecosystem, prioritising requests from our partners with Rust workloads; and perform
  internal research on the advantages and impact of potential and upcoming architecture features
  on Rust workloads. As lead of the team, I am responsible for:

  #list(
    [mentoring and line management of team members, helping them achieve their goals and succeed
     in the team and company],
    [the team's relationship with the upstream Rust Project, building community consensus around our
     objectives and owning Arm's commitments to upstream],
    [representing Arm within the Rust community at conferences and upstream project events],
    [planning the team's work, establishing and communicating our priorities and roadmap to
     leadership],
    [ensuring the team is high-performing and achieving its objectives],
    [sharing Rust knowledge and expertise internally],
    [my own engineering contributions to our ongoing projects, such as
     #link("https://github.com/rust-lang/rfcs/pull/3729")[extending the language to be able to
     support Arm's Scalable Vector Extension (SVE)]],
  )
]

#exp(
  title: "Arm Holdings plc",
  subtitle: "Staff Software Engineer",
  location: "Edinburgh, Scotland",
  period: "Sep 2024 - Apr 2026"
)[]

#exp(
  title: "Huawei Technologies Research & Development UK Ltd.",
  subtitle: "Senior Software Engineer A, Programming Languages Lab",
  location: "Edinburgh, Scotland",
  period: "Nov 2022 - Aug 2024"
)[
  Within the Central Software Institute of Huawei R&D, I leveraged my Rust experience to accelerate
  and guarantee Rust's successful adoption, involving:

  #list(
    [contributions to the upstream Rust compiler, prioritising features and bugs which impacted
     Huawei's business units],
    [directly working with internal customers to recognise Rust opportunities, advising and
     assisting teams adopting Rust, and identifying and prioritizing requirements for upstream
     contributions],
    [supporting HQ colleagues in maintaining the internal toolchain and knowledge sharing of Rust
     compiler internals],
    [participation in Huawei's Technical Management Committee to define internal coding standards
     for Rust],
    [internally representing the Edinburgh Research Centre within Huawei by promoting my work in
     company publications and presenting to leadership from other parts of the organisation],
    [externally representing Huawei by speaking at international conferences and attending as a
     sponsor],
  )

  I was awarded Huawei's "President Award of the 2012 Laboratories", "President's Award of the
  European Academy", "Gold Team Award", "Innovation Spark Award", and "Future Star" awards.
]

#exp(
  title: "Huawei Technologies Research & Development UK Ltd.",
  subtitle: "Senior Software Engineer B, Programming Languages Lab",
  location: "Edinburgh, Scotland",
  period: "Aug 2021 - Nov 2022"
)[]

#exp(
  title: "Codeplay Software Ltd.",
  subtitle: "Senior Software Engineer",
  location: "Edinburgh, Scotland",
  period: "Nov 2020 - Aug 2021"
)[]

#prev(
  title: [Earlier experience available #link("https://www.linkedin.com/in/davidtwco/")[on LinkedIn]],
  period: "Jun 2014 - Jun 2016, Apr 2015 - Feb 2017, May 2017 - Sep 2017, Sep 2018 - Nov 2018, Sep 2017 - Nov 2020"
)

= Education
#exp(
  title: "University of Glasgow",
  subtitle: "MSci Software Engineering with Work Placement, Honours of the First Class",
  location: "Glasgow, Scotland",
  period: "Sep 2015 - Jun 2020"
)[
  I graduated with a GPA of 20.0 (out of a maximum 22.0) and
  #link("https://davidtw.co/media/masters_dissertation.pdf")[completed my MSci project on
  "Polymorphisation"], a code-size optimisation in the Rust compiler to reduce unnecessary
  monomorphisation during code generation. In my first year, I was awarded "Best Computing Science
  Student Intending Single Honours" and in my final year, "Most Outstanding Project in MSci SE WP".
]

#exp(
  title: "Glasgow Caledonian University",
  subtitle: "Nuffield Foundation Placement",
  location: "Glasgow, Scotland",
  period: "May 2014 - Jul 2024"
)[]

= Awards
#exp(
  title: link("https://openuk.uk/awards/")[Individual Category - Runner-up],
  subtitle: "OpenUK Awards 2025",
  location: "London, UK",
  period: "Dec 2025"
)[]

#exp(
  title: link("https://www.sigplan.org/Awards/Software/")[Programming Languages Software Award],
  subtitle: "ACM SIGPLAN",
  location: "Copenhagen, Denmark",
  period: "Jun 2024"
)[]

= Conference Speaking
#exp(
  title: "Rust Nation UK",
  subtitle: "Extending Rust's notions of sizedness",
  location: "London, UK",
  period: "Feb 2026"
)[]

#exp(
  title: "QCon",
  subtitle: "Split DWARF in rustc",
  location: "Shanghai, China",
  period: "Nov 2022"
)[]
