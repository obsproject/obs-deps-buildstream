kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- (@): include/_private/fsdk-depends-type.yml
  filename: fsdk-depends-stacks/srt.bst

variables:
  cmake-local: >-
    -DENABLE_SHARED=ON
    -DENABLE_STATIC=OFF
    -DENABLE_APPS=OFF
    -DENABLE_LOGGING=OFF

public:
  bst:
    split-rules:
      extra:
        - "%{bindir}/srt-ffplay"

sources:
- kind: git_repo
  url: github:Haivision/srt.git
  track: v1.5.3
  ref: 09f35c0f1743e23f514cb41444504a7faeacf89e
- kind: patch
  path: patches/srt/0001-enable-proper-cmake-build-types.patch
