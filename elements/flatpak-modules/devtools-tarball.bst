kind: filter
description: Filter to generate the devtools tarball with only /app

(@): include/_private/fp-modules-common.yml

config:
  include:
  - app

build-depends:
- flatpak-modules/devtools-compose.bst
