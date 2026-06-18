kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- junction: freedesktop-sdk.bst
  (@): include/_private/fsdk-depends-type.yml
  filename:
  - public-stacks/runtime-minimal.bst

sources:
- kind: git_repo
  url: freedesktop:wtaymans/fdk-aac-stripped
  ref: 0fc0e0e0b89de3becd5f099eae725f13eeecc0d1
