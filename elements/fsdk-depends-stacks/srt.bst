kind: stack
description: Stack of libsrt dependencies from the Freedesktop SDK

depends:
- junction: freedesktop-sdk.bst
  filename:
  - public-stacks/runtime-minimal.bst
  - components/openssl.bst
