kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/plog.bst

depends:
- junction: freedesktop-sdk.bst
  (@): include/_private/fsdk-depends-type.yml
  filename:
  - components/libnice.bst
  - components/libsrtp2.bst
  - components/openssl.bst
- components/usrsctp.bst

variables:
  cmake-local: >-
    -DPREFER_SYSTEM_LIB=ON
    -DUSE_NICE=ON
    -DNO_WEBSOCKET=ON
    -DNO_EXAMPLES=ON
    -DNO_TESTS=ON

public:
  bst:
    split-rules:
      # Put the examples licenses as extra
      extra:
      - "%{project_licensedir}/libdatachannel/examples"
      - "%{project_licensedir}/libdatachannel/examples/**"

sources:
- kind: git_repo
  url: github:paullouisageneau/libdatachannel.git
  track: v0.24.2
  ref: 4e4f4892dccb2a57fe3a490d0c9d958de4244e74
