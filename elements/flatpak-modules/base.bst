kind: compose
description: Composition to allow only shared libraries and debug symbols from non-Qt dependencies

(@): include/_private/fp-modules-common.yml

config:
  exclude:
    - devel
    - doc
    - extra
    - obs-unneeded

build-depends:
- non-devtools.bst
- manifests/deps.bst
