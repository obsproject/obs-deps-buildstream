kind: filter
description: Filter to generate the devel tarball with only /app

(@): include/_private/fp-modules-common.yml

config:
  include:
  - app

build-depends:
- flatpak-modules/devel-compose.bst
