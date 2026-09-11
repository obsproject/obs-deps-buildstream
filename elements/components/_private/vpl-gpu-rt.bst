kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- junction: freedesktop-sdk.bst
  (@): include/_private/fsdk-depends-type.yml
  filename:
  - components/libva.bst

variables:
  cmake-local: >-
    -DBUILD_RUNTIME=ON
    -DBUILD_TESTS=OFF
    -DBUILD_TOOLS=OFF

public:
  bst:
    split-rules:
      runtime:
        (>):
        - "%{libdir}/libmfx-gen"
        - "%{libdir}/libmfx-gen/**"

sources:
- kind: git_repo
  url: github:intel/vpl-gpu-rt.git
  track: intel-onevpl-26.2.4
  ref: 4a0c2b926e09e8c1c10db73bcefbbfb395cd1430
