kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

runtime-depends:
- freedesktop-sdk.bst:components/python3.bst
- components/_private/python3-beartype.bst
- freedesktop-sdk.bst:components/python3-click.bst
- components/_private/python3-license-expression.bst
- freedesktop-sdk.bst:components/python3-ply.bst
- freedesktop-sdk.bst:components/python3-pyyaml.bst
- components/_private/python3-rdflib.bst
- freedesktop-sdk.bst:components/python3-semantic-version.bst
- components/_private/python3-uritools.bst
- components/_private/python3-xmltodict.bst

sources:
- kind: pypi
  name: spdx-tools
  ref:
    sha256sum: be600beb2f762f0116025e05490d399e724f668bef84025a7c421bb266688bdb
    suffix: 2f/99/33383f587b59cbd191cc1c0fd5408e550b9275e0090d32561cbddc973fdc/spdx_tools-0.8.5.tar.gz
