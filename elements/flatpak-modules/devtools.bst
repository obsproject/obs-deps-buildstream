kind: compose
description: Composition to allow only tools used to build OBS Studio from non-Qt dependencies

(?):
- platform != "flatpak":
    (!): |
      This element is not buildable for non-flatpak platform.

config:
  exclude:
    - debug
    - devel
    - doc
    - extra
    - obs-unneeded

build-depends:
- devtools.bst
