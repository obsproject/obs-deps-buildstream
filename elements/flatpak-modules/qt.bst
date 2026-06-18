kind: compose
description: Composition for the OBS Studio Qt dependencies

(?):
- platform != "flatpak":
    (!): |
      This element is not buildable for non-flatpak platform.

config:
  exclude:
    - doc
    - extra
    - qmake
    - obs-unneeded

build-depends:
- qt.bst
- manifests/qt.bst
