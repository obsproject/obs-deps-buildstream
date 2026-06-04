kind: filter
description: Filter to generate the Qt tarball with only /app

(@): include/_private/fp-modules-common.yml

config:
  include:
  - app

build-depends:
- flatpak-modules/qt-compose.bst
