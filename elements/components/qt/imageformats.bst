kind: cmake

(@):
- elements/include/qt.yml

build-depends:
  (>):
  - freedesktop-sdk.bst:components/libtiff.bst
  - freedesktop-sdk.bst:components/libwebp.bst

depends:
  (>):
  - components/qt/base.bst

variables:
  qt-element-name: imageformats

  cmake-local: >-
    -DFEATURE_jasper=OFF
    -DFEATURE_mng=OFF
    -DFEATURE_tiff=ON
    -DFEATURE_system_tiff=ON
    -DFEATURE_webp=ON
    -DFEATURE_system_webp=ON

sources:
- kind: tar
  url: qt_archive:%{qt-api-version}/%{qt-version}/submodules/qtimageformats-everywhere-src-%{qt-version}.tar.xz
  ref: 84605dd91037482b5b7c7ecc5c27aee8acc1cd7f1fe77bc564777ddf365d7d28
