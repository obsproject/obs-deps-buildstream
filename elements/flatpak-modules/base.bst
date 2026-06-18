kind: compose
description: Composition to allow only shared libraries and debug symbols from non-Qt dependencies

(?):
- platform != "flatpak":
    (!): |
      This element is not buildable for non-flatpak platform.

config:
  exclude:
    - devel
    - doc
    - extra
    - obs-unneeded

build-depends:
- non-devtools.bst
- manifests/deps.bst
