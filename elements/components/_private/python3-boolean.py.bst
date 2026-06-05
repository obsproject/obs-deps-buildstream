kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst

runtime-depends:
- freedesktop-sdk.bst:components/python3.bst

sources:
- kind: pypi
  name: boolean.py
  ref:
    sha256sum: 60cbc4bad079753721d32649545505362c754e121570ada4658b852a3a318d95
    suffix: c4/cf/85379f13b76f3a69bca86b60237978af17d6aa0bc5998978c3b8cf05abb2/boolean_py-5.0.tar.gz
