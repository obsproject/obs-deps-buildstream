kind: compose
description: Composition to allow only tools used to build OBS Studio from non-Qt dependencies

(@): include/_private/fp-modules-common.yml

config:
  exclude:
    - debug
    - devel
    - doc
    - extra
    - obs-unneeded

build-depends:
- devtools.bst
