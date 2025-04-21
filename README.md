# Amadej Kastelic CV

Prebuilt CV is available under releases - [CV_AmadejKastelic.pdf](https://github.com/amadejkastelic/cv/releases/download/resume/CV_AmadejKastelic.pdf)

## Building

### Using Nix

- Run `nix build`
- Open the resume at `result/CV_AmadejKastelic.pdf` in your preferred PDF viewer

### Typst

- Install typst
- Run `typst compile resume.typ`
- Open the resume at `resume.pdf` in your preferred PDF viewer

## Development

- Run `nix develop` to create a development shell with all necessary packages
