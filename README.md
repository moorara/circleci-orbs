[![Build Status][circleci-image]][circleci-url]
[![Build Status][devops-orb-image]][devops-orb-url]
[![Build Status][golang-orb-image]][golang-orb-url]
[![Build Status][node-orb-image]][node-orb-url]

# CircleCI Orbs

A collection of common and reusable [CircleCI Orbs](https://circleci.com/orbs).

## Guides

  - https://circleci.com/docs/2.0/creating-orbs
  - https://circleci.com/docs/2.0/configuration-reference

### Summary

  - Namespaces are owned by organizations and only organization owners can create namespaces.
  - Orb versions may be added to the registry either as **development versions** or **production versions**.
  - Production versions are always a *semantic version*.
  - Development versions are always prefixed with `dev:` and tagged with a string (`dev:<< your-string >>`).
  - Only organization owners can publish production orbs.
  - Any member of an organization can publish development orbs in namespaces.
  - Organization owners can promote any dev orb to be a semantically versioned production orb.
  - Development orbs are *mutable* and *expire* after 90 days.
  - Production orbs are *immutable* and *long-lived*.
  - Use development orbs only while actively developing your orb.
  - Do NOT rely on a development orb in any production software.

### Commands

  - `circleci namespace create <name> <vcs-type> <org-name> [flags]`
  - `circleci orb create <namespace>/<orb> [flags]`
  - `circleci orb list <namespace> [flags]`
  - `circleci orb validate <path> [flags]`
  - `circleci orb publish <path> <namespace>/<orb>@<version> [flags]`
  - `circleci orb publish increment <path> <namespace>/<orb> <segment> [flags]`
  - `circleci orb publish promote <namespace>/<orb>@<version> <segment> [flags]`


[circleci-url]: https://circleci.com/gh/moorara/circleci-orbs/tree/main
[circleci-image]: https://circleci.com/gh/moorara/circleci-orbs/tree/main.svg?style=shield
[devops-orb-url]: https://circleci.com/orbs/registry/orb/moorara/devops
[devops-orb-image]: https://img.shields.io/endpoint.svg?label=devops&url=https://badges.circleci.io/orb/moorara/devops
[golang-orb-url]: https://circleci.com/orbs/registry/orb/moorara/golang
[golang-orb-image]: https://img.shields.io/endpoint.svg?label=golang&url=https://badges.circleci.io/orb/moorara/golang
[node-orb-url]: https://circleci.com/orbs/registry/orb/moorara/node
[node-orb-image]: https://img.shields.io/endpoint.svg?label=node&url=https://badges.circleci.io/orb/moorara/node
