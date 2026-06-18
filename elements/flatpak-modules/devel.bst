kind: compose
description: Composition to allow only headers, pkg-config files and CMake packages from non-Qt dependencies

(?):
- platform != "flatpak":
    (!): |
      This element is not buildable for non-flatpak platform.

config:
  exclude:
    - debug
    - doc
    - extra
    - license
    - runtime
    - sbom
    - obs-unneeded

build-depends:
- non-devtools.bst
