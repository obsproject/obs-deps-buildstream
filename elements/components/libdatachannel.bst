kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/plog.bst

depends:
- (@): include/_private/fsdk-depends-type.yml
  filename: fsdk-depends-stacks/libdatachannel.bst
- components/usrsctp.bst

variables:
  # Skip examples licenses
  license-files: LICENSE

  cmake-local: >-
    -DPREFER_SYSTEM_LIB=ON
    -DUSE_NICE=ON
    -DNO_WEBSOCKET=ON
    -DNO_EXAMPLES=ON
    -DNO_TESTS=ON

sources:
- kind: git_repo
  url: github:paullouisageneau/libdatachannel.git
  track: v0.24.2
  ref: 4e4f4892dccb2a57fe3a490d0c9d958de4244e74
