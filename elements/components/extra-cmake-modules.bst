kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING:BOOL=OFF
    -DBUILD_HTML_DOCS:BOOL=OFF
    -DBUILD_MAN_DOCS:BOOL=OFF
    -DBUILD_QTHELP_DOCS:BOOL=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - "%{datadir}/ECM"
        - "%{datadir}/ECM/**"

sources:
- kind: git_repo
  url: github:KDE/extra-cmake-modules.git
  track: v6.26.0
  ref: a1dac86d6c848473d840b748b82694ef6916a3ca
