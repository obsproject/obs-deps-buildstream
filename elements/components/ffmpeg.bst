kind: make
description: FFmpeg component based on the Freedesktop SDK config

(@):
- elements/include/_private/ffmpeg.yml

build-depends:
  (>):
  - components/nv-codec.bst

depends:
  (>):
  - components/librist.bst
  - components/srt.bst
  - components/x264.bst

variables:
  conf-extra: >-
    --enable-encoders
    --enable-decoders
    --disable-programs
    --disable-devices
    --enable-gnutls
    --enable-gpl
    --enable-libx264
    --enable-libopus
    --enable-libvorbis
    --enable-libvpx
    --enable-librist
    --enable-libsrt
    --enable-libaom
    --enable-libsvtav1
    --enable-nvenc

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{datadir}/ffmpeg/examples'
        - '%{datadir}/ffmpeg/examples/**'
      obs-unneeded:
        - '%{datadir}/ffmpeg/examples'
        - '%{datadir}/ffmpeg/examples/**'

sources:
- kind: git_repo
  url: github:FFmpeg/FFmpeg.git
  track: n8.1
  ref: 9047fa1b084f76b1b4d065af2d743df1b40dfb56
- kind: patch
  path: patches/ffmpeg/0001-flvdec-handle-unknown.patch
- kind: patch
  path: patches/ffmpeg/0002-libaomenc-presets.patch
