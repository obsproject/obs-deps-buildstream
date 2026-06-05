kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- junction: freedesktop-sdk.bst
  (@): include/_private/fsdk-depends-type.yml
  filename:
  - public-stacks/runtime-minimal.bst

variables:
  license-files: >-
    LICENSE
    third-party-programs.txt

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
      devel:
        (>):
        # vars.sh script in etc
        - "%{sysconfdir}"
        - "%{sysconfdir}/**"
        - "%{datadir}/vpl/examples"
        - "%{datadir}/vpl/examples/**"
      obs-unneeded:
        - "%{sysconfdir}"
        - "%{sysconfdir}/**"
        - "%{datadir}/vpl/examples"
        - "%{datadir}/vpl/examples/**"
        - "%{project_licensedir}/libvpl/examples"
        - "%{project_licensedir}/libvpl/examples/**"

sources:
- kind: git_repo
  url: github:intel/libvpl.git
  track: v2.16.0
  ref: 778a66d6c6537f08eabb91955dbbf1bce3812894
