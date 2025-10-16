kind: junction

sources:
- kind: git_tag
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  # Update include/strip.yml, elements/include/ffmpeg.yml and elements/plugins if bumping Freedesktop SDK release branch
  track: release/25.08
  track-tags: True
  ref: freedesktop-sdk-25.08.2-0-g2772ab3c978ca761082aa428a9d47eee04650072

config:
  options:
    target_arch: '%{target_arch}'
    bootstrap_build_arch: '%{target_arch}'
