#import "@preview/fontawesome:0.6.0": *
#import "@preview/modern-cv:0.9.0": *

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
  description: link("https://veza.com", "Veza"),
)

#resume-item[
  - Built backend services for Access Intelligence, Access AI, and Access Hub products.
  - Developed Go microservices powering access graph visualization and permission analysis.
  - Integrated with 300+ enterprise systems (AWS, Okta, Snowflake) to collect identity and entitlement data.
  - Implemented APIs for querying who can do what to which data across SaaS and cloud environments.
  - Supported ML-powered recommendations by building data pipelines for access intelligence.
  - Ensured high availability and performance for identity security services processing enterprise-scale data.
]

#resume-entry(
  title: "Senior Software Engineer",
  location: "Remote - Ljubljana, Slovenia",
  date: "2021 - 2024",
  description: link("https://bitstamp.net", "Bitstamp"),
)

#resume-item[
  - Built event-based transaction monitoring system processing high volumes of cryptocurrency transactions.
  - Developed compliance workflows for AML/KYC reviews, user onboarding, and regulatory reporting with performance-optimized background jobs.
  - Implemented event-driven architecture ensuring zero-downtime operation for critical monitoring services.
  - Created common circuit breaker library used across all microservices for fault tolerance and resilience.
  - Developed BAF (Bitstamp Application Framework) providing high-level building blocks for microservices infrastructure and infrastructure-as-code.
  - Architected and deployed first Go microservice using DDD patterns, replacing monolithic Django backend.
  - Code reviewed and mentored junior engineers on best practices, event systems, and shared infrastructure libraries.
]

#resume-entry(
  title: "Software Engineer",
  location: "Ljubljana, Slovenia",
  date: "2018 - 2021",
  description: link("https://rekono.si", "Osi / Rekono"),
)

#resume-item[
  - Built and maintained Rekono IdP, Slovenia's digital identity platform used by banks and government.
  - Developed Java/Spring Boot backend for core authentication, SAML/OAuth federation, and identity verification.
  - Implemented integrations with banking systems and public services for citizen authentication.
  - Ensured compliance with eIDAS EU regulations and national identity standards.
  - Code reviewed and mentored team members on security best practices, identity protocols, and system reliability.
  - Supported SSO, MFA, and identity features critical to banking and government operations.
]

#resume-entry(
  title: "Software Engineer Intern",
  location: "Kranj, Slovenia",
  date: "2018",
  description: link("https://iskraemeco.com", "Iskraemeco"),
)

#resume-item[
  - Built backend APIs for smart meter management web application.
  - Developed endpoints for metering data collection, device monitoring, and reporting.
  - Supported electricity meter infrastructure used across 80+ countries globally.
]

= Projects

#resume-entry(
  title: "nixpkgs",
  location: [#github-link("NixOS/nixpkgs")],
  date: "Sep. 2024 - Present",
  description: "Maintainer",
)

#resume-item[
  - Contributed to and maintained packages and modules in nixpkgs
]

#resume-entry(
  title: "Hyprlux",
  location: [#github-link("amadejkastelic/Hyprlux")],
  date: "Sep. 2024 - Present",
  description: "Creator",
)

#resume-item[
  - Built utility for Hyprland window manager to apply display shaders.
  - Developed configuration system for custom visual effects.
]

#resume-entry(
  title: "Discord Embed Bot",
  location: github-link("amadejkastelic/discord-video-embed-bot"),
  date: "Jul. 2023 - Present",
  description: "Creator",
)

#resume-item[
  - Created Discord bot that embeds content from Reddit, Twitter, and YouTube.
  - Handled API rate limits and implemented content caching for performance.
  - Supported multiple social platforms with unified embed format.
]

#resume-entry(
  title: "NixOS Configuration",
  location: github-link("amadejkastelic/nixos-config"),
  date: "Apr. 2024 - Present",
  description: "Creator",
)

#resume-item[
  - Built reproducible NixOS configuration with declarative system management.
  - Included configuration for all my systems including infrastructure.
]

= Skills

#resume-skill-item("Skills", (
  strong("Go"),
  strong("Python"),
  strong("AWS"),
  "Nix...",
))
#resume-skill-item("Spoken Languages", (strong("English"), "Slovene"))
