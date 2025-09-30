kind: junction

sources:
- kind: git_tag
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: release/24.08
  track-tags: True
  ref: freedesktop-sdk-24.08.26-0-g9673d931e0bbd49d60f808ab1d4389ffa443b342
- kind: create_custom_fdo_sdk_include_ffmpeg

config:
  options:
    target_arch: '%{target_arch}'
    bootstrap_build_arch: '%{target_arch}'
