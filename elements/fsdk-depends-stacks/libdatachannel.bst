kind: stack
description: Stack of libdatachannel dependencies from the Freedesktop SDK

depends:
- junction: freedesktop-sdk.bst
  filename:
  - public-stacks/runtime-minimal.bst
  - components/libnice.bst
  - components/libsrtp2.bst
  - components/openssl.bst
