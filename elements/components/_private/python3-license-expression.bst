kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

runtime-depends:
- freedesktop-sdk.bst:components/python3.bst
- components/_private/python3-boolean.py.bst

sources:
- kind: pypi
  name: license-expression
  ref:
    sha256sum: 73448f0aacd8d0808895bdc4b2c8e01a8d67646e4188f887375398c761f340fd
    suffix: 40/71/d89bb0e71b1415453980fd32315f2a037aad9f7f70f695c7cec7035feb13/license_expression-30.4.4.tar.gz
