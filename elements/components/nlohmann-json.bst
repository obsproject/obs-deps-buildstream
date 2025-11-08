kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

variables:
  cmake-local: -DJSON_BuildTests=OFF

config:
  install-commands:
    (>):
    # Delete documentation about licensing picked by install-extra
    - rm -rf "%{install-root}%{project_licensedir}/nlohmann-json/docs"

sources:
- kind: git_repo
  url: github:nlohmann/json.git
  track: v3.11.3
  ref: 9cca280a4d0ccf0c08f47a99aa71d1b0e52f8d03
