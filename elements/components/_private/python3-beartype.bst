kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-hatchling.bst

runtime-depends:
- freedesktop-sdk.bst:components/python3.bst

sources:
- kind: pypi
  name: beartype
  ref:
    sha256sum: 8f82b54aa723a2848a56008d18875f91c1db02c32ef6a62319a002e3e25a975f
    suffix: c7/94/1009e248bbfbab11397abca7193bea6626806be9a327d399810d523a07cb/beartype-0.22.9.tar.gz
