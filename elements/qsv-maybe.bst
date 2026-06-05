kind: stack
description: Enable QSV (Intel) dependencies depending on the targeted arch

(?):
- target_arch == "x86_64":
    depends:
      - components/_private/intel-media-sdk.bst
      - components/_private/libvpl.bst
      - components/_private/vpl-gpu-rt.bst
