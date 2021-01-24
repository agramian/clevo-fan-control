# Clevo Fan Control on Linux

A service for controlling the fans on Clevo laptops. Fan speed can be 
set manually to a specific fan duty percentage value or to automatic 
mode which provides a "silent" profile to override the machine's default
fan curve.

## Dependencies

The following dependencies must be installed on the machine using the 
package manager available for your Linux distribution.

- GCC
- CMake
- AppIndicator3
- GTK+3

## Build and Install

To install the service, run the following from a directory where you are
comfortable having temporary build files generated.

By default the service will be installed to `/usr/local/bin`.

```shell
cmake <path/to/clevo-fan-control>
cmake --build .
sudo cmake --install .
```

### Uninstalling

Use the `install_manifest.txt` generated when installing to remove the
files.

```shell
sudo xargs rm < install_manifest.txt
```

## Usage

### Automatic mode

`/usr/local/bin/clevo-fan-control`

### Manually setting a fan duty percentage

`/usr/local/bin/clevo-fan-control <0-100>`

## TODO

- [ ] Provide necessary files or instructions for autostarting
- [ ] Convert to or also support KStatusNotifierItem (KSNI)
- [ ] Port from C to C++
- [ ] Provide multiple fan profiles
- [ ] Support custom fan curves via an input file
- [ ] Implement use of Meson, Bazel or possible other build/dependency 
  management system
- [ ] Build AppImage for cross-distribution support

## Credits and Acknowledgements

This project is based on
[Clevo Fan Control Indicator for Ubuntu](https://github.com/SkyLandTW/clevo-indicator).

The fan profiles are based off the ones provided with the
[Tuxedo Control Center](https://github.com/tuxedocomputers/tuxedo-control-center/blob/master/src/common/models/TccFanTable.ts)
.
