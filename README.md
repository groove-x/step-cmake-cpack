# step-cmake-cpack [![wercker status](https://app.wercker.com/status/b37900dc41e6dae0b0c7f3b397f6f7f7/s "wercker status")](https://app.wercker.com/project/bykey/b37900dc41e6dae0b0c7f3b397f6f7f7)

Wercker step to create debian package using CPack with CMake

## Usage

```yaml
build:
  steps:
    - groove-x/cmake-cpack
```

```yaml
build:
  steps:
    - groove-x/cmake-cpack:
      cmake_arguments: -D FOO=BAR
      cmake_source_path: /foo/bar
      cmake_build_dir: /foo/bar/build
```
