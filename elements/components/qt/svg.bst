kind: cmake

(@):
- elements/include/_private/qt.yml
- elements/include/_private/depends-qtbase.bst.yml

variables:
  qt-element-name: svg

sources:
- kind: tar
  url: qt_archive:%{qt-api-version}/%{qt-version}/submodules/qtsvg-everywhere-src-%{qt-version}.tar.xz
  ref: 7f3cf02f4824bf03c2c5859ea6db173bf1482a1daf24e6cdf7bc78cfa26a8a94
