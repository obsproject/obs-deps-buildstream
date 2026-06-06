kind: cmake

(@):
- elements/include/_private/qt.yml
- elements/include/_private/depends-qtbase.bst.yml

build-depends:
  (>):
  - freedesktop-sdk.bst:components/libtiff.bst
  - freedesktop-sdk.bst:components/libwebp.bst

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
  ref: b2bf6c6845ac175ed7f819145483ba4676f617aaa6a5012c8efee63c8bbac413
