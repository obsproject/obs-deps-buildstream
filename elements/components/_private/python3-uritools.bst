kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

runtime-depends:
- freedesktop-sdk.bst:components/python3.bst

sources:
- kind: pypi
  name: uritools
  ref:
    sha256sum: fa60028843a8be651699a1ee2b399066eeaef349224b32a177efa4aeba463f00
    suffix: d7/75/b1f0e26e0c080c2febdd3a98a752c9fbcf078778f60fe90ea489dc8226ed/uritools-6.1.2.tar.gz
