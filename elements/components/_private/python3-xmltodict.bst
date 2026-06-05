kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst

runtime-depends:
- freedesktop-sdk.bst:components/python3.bst

sources:
- kind: pypi
  name: xmltodict
  ref:
    sha256sum: 6d94c9f834dd9e44514162799d344d815a3a4faec913717a9ecbfa5be1bb8e61
    suffix: 19/70/80f3b7c10d2630aa66414bf23d210386700aa390547278c789afa994fd7e/xmltodict-1.0.4.tar.gz
