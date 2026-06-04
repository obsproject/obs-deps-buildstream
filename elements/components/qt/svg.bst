kind: cmake

(@):
- elements/include/_private/qt.yml
- elements/include/_private/depends-qtbase.bst.yml

variables:
  qt-element-name: svg

sources:
- kind: tar
  url: qt_archive:%{qt-api-version}/%{qt-version}/submodules/qtsvg-everywhere-src-%{qt-version}.tar.xz
  ref: b3223fe005f6a4c7f21f34e4ee6ce0094737cff9503ba15bbb171ac18794f76d
