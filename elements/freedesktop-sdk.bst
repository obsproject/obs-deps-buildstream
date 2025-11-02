kind: junction

sources:
- kind: git_tag
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  # Update include/strip.yml, elements/include/ffmpeg.yml and elements/plugins if bumping Freedesktop SDK release branch
  track: release/25.08
  track-tags: True
  ref: freedesktop-sdk-25.08.3-0-g4a527662788a742074839b162326761eca00e3a4

config:
  options:
    target_arch: '%{target_arch}'
    bootstrap_build_arch: '%{target_arch}'
