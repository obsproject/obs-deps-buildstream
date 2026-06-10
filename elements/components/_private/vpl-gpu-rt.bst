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
  track: intel-onevpl-26.1.5
  ref: c74d193957c059c4850726dbfc5772b8d9d18c4b
