kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

variables:
  cmake-local: -DPLOG_BUILD_SAMPLES=OFF

sources:
- kind: git_repo
  url: github:SergiusTheBest/plog.git
  track: 1.1.11
  ref: e21baecd4753f14da64ede979c5a19302618b752
