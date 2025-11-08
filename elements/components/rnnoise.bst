kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  license-files-extra: >-
    README
    AUTHORS

  conf-local: >-
    --disable-doc
    --disable-examples

config:
  install-commands:
    (>):
    # Delete duplicate license files
    - |
      set -euo pipefail # Force bash
      rm -f "%{install-root}%{datadir}/doc/rnnoise/"{README,AUTHORS,COPYING}
      rmdir --ignore-fail-on-non-empty "%{install-root}%{datadir}/doc"{/rnnoise,}

public:
  bst:
    split-rules:
      runtime:
        (>):
        - "%{datadir}"
        - "%{datadir}/**"

sources:
- kind: git_repo
  url: github:xiph/rnnoise.git
  ref: 085d8f484af6141b1b88281a4043fb9215cead01
