kind: compose
description: Composition for the OBS Studio Qt dependencies

(@): include/_private/fp-modules-common.yml

config:
  exclude:
    - doc
    - exec-blocklist
    - extra

build-depends:
- qt.bst
- manifests/qt.bst
