kind: compose
description: Composition to allow only headers, pkg-config files and CMake packages from non-Qt dependencies

(@): include/_private/fp-modules-common.yml

config:
  exclude:
    - debug
    - devtools
    - doc
    - exec-blocklist
    - extra
    - license
    - runtime
    - sbom
    - obs-unneeded

build-depends:
- deps.bst
