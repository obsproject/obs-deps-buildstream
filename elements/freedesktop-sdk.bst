kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  # Checklist if bumping Freedesktop SDK release branch:
  # - Check include/strip.yml strip-binaries-base with include/strip.yml with strip-binaries
  # - Check elements/include/_private/ffmpeg.yml with elements/include/ffmpeg.yml
  # - Common plugins in their elements/plugins
  # - Check out elements conf and enviroments if there is something that could be ported
  track: freedesktop-sdk-26.08*
  ref-format: git-describe
  ref: freedesktop-sdk-26.08.1-0-gb02b59ffe19a49a402f357fd5fcb1d552ebc50d7

config:
  options:
    target_arch: '%{target_arch}'
    bootstrap_build_arch: '%{target_arch}'
