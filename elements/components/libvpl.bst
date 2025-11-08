kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  license-files-extra: third-party-programs.txt

  cmake-local: >-
    -DBUILD_SHARED_LIBS=ON
    -DENABLE_LIBDIR_IN_RUNTIME_SEARCH=ON
    -DINSTALL_DEV=ON
    -DBUILD_EXPERIMENTAL=OFF
    -DBUILD_EXAMPLES=OFF

config:
  install-commands:
    (>):
    # Delete duplicate license files
    - rm -rf "%{install-root}%{datadir}/vpl/licensing"

public:
  bst:
    split-rules:
      # Put the vars.sh script in etc and examples as extra
      extra:
      - "%{sysconfdir}"
      - "%{sysconfdir}/**"
      - "%{datadir}/vpl/examples"
      - "%{datadir}/vpl/examples/**"
      - "%{project_licensedir}/libvpl/examples"
      - "%{project_licensedir}/libvpl/examples/**"
      runtime:
        (>):
        - "%{datadir}"
        - "%{datadir}/**"

sources:
- kind: git_repo
  url: github:intel/libvpl.git
  track: v2.15.0
  ref: c45b5d786bf7cdabbe49ff1bab78693ad78feb78
