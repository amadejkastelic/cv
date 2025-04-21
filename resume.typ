#import "@preview/fontawesome:0.5.0": *
#import "@preview/modern-cv:0.8.0": *

#show: resume.with(
  author: (
    firstname: "Amadej",
    lastname: "Kastelic",
    email: "amadejkastelic7@gmail.com",
    homepage: "https://amadejk.com",
    github: "amadejkastelic",
    linkedin: "amadej-kastelic-9931a1169",
    positions: (
      "Senior Software Engineer",
    ),
  ),
  profile-picture: image("profile.jpg"),
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
  paper-size: "a4",
)

= Experience

#resume-entry(
  title: "Senior Software Engineer",
  location: "Remote - San Francisco, CA",
  date: "2024 - Present",
  description: "Veza Technologies, Inc.",
)

#resume-item[
  - Developing and maintaining a high-performance data access platform for Veza.
  - The platform is built using Go and Python, with a focus on scalability and reliability.
  - AI and ML are used to provide a seamless experience for users.
  - Working with AWS and other cloud technologies to ensure the platform is scalable and reliable.
]

#resume-entry(
  title: "Senior Software Engineer",
  location: "Remote - Ljubljana, Slovenia",
  date: "2021 - 2024",
  description: "Bitstamp d.o.o.",
)

#resume-item[
  - Developed and maintained a high-performance trading platform for cryptocurrency exchange.
  - The platform is built using Go and Python, with a focus on scalability and reliability.
  - Pushed usage of microservices and designed and deployed our first microservice using Go, DDD, infrastructure as code and event-driven architecture.
  - Collaborated with cross-functional teams to gather requirements and implement new features.
  - Conducted code reviews and provided mentorship to junior developers, fostering a culture of continuous learning and improvement.
  - Participated in the design and architecture of the system, ensuring best practices were followed.
  - Developed and maintained internal tools and libraries to improve developer productivity and streamline workflows.
  - Worked with AWS and other cloud technologies to ensure the platform is scalable and reliable.
]

#resume-entry(
  title: "Software Engineer",
  location: "Ljubljana, Slovenia",
  date: "2018 - 2021",
  description: "Osi / Rekono d.o.o.",
)

#resume-item[
  - Development and maintenance of a idp system for Slovenian banks and other companies - Rekono IdP.
  - The system is used for identity verification and management, ensuring secure access to sensitive information.
  - The system is built using Java and Spring Boot, with a focus on security and scalability.
  - Collaborated with cross-functional teams to gather requirements and implement new features.
  - Conducted code reviews and provided mentorship to junior developers, fostering a culture of continuous learning and improvement.
]

#resume-entry(
  title: "Software Engineer Intern",
  location: "Kranj, Slovenia",
  date: "2018",
  description: "Iskraemeco d.d.",
)

#resume-item[
  - Development and maintenance of a web application for managing smart meters.
  - The application is used by utility companies to manage and monitor smart meters, ensuring accurate billing and reporting.
]

= Projects

#resume-entry(
  title: "Hyprlux",
  location: [#github-link("amadejkastelic/Hyprlux")],
  date: "Sep. 2024 - Present",
  description: "Developer",
)

#resume-item[
  - Designed and implemented a utility program for Hyprland, a dynamic tiling window manager for Linux.
  - The programs allows users to easily apply shaders to their displays, enhancing the visual experience of their desktop environment.
]

#resume-entry(
  title: "Discord Embed Bot",
  location: github-link("amadejkastelic/discord-video-embed-bot"),
  date: "Jul. 2023 - Present",
  description: "Developer",
)

#resume-item[
  - Designed and implemented a Discord bot that automatically embeds posts from various social media platforms.
  - The bot supports platforms such as Reddit, Twitter, and YouTube, providing users with a seamless experience when sharing content.
]

#resume-entry(
  title: "NixOS Configuration",
  location: github-link("amadejkastelic/nixos-config"),
  date: "Apr. 2024 - Present",
  description: "Developer",
)

#resume-item[
  - Designed and implemented a NixOS configuration for my personal computer.
]

= Skills

#resume-skill-item(
  "Skills",
  (strong("Go"), strong("Python"), strong("AWS"), "Java", "Nix..."),
)
#resume-skill-item("Spoken Languages", (strong("English"), "Slovene"))
