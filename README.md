# Clevo Fan Control on Linux

A service for controlling the fans on Clevo laptops.
Fan speed can be set manually to a specific fan duty percentage value
or to automatic mode which provides a "silent" profile to override the
machine's default fan curve.

## Dependencies

The following dependencies must be installed on the machine using the
package manager available for your Linux distribution.

- AppIndicator3
- GTK +3
- GCC

Build and Install
-----------------

Run the following to install the service to the `/usr/local/bin` directory.

```shell
make install
```

## Usage

### Automatic mode
`/usr/local/bin/clevo-fan-control`

### Manually setting a fan duty percentage

`/usr/local/bin/clevo-fan-control <0-100>`

## TODO
- [ ] Provide necessary files or instructions for autostarting
- [ ] Convert to or also support KStatusNotif
- [ ] Port from C to C++
- [ ] Provide multiple fan profiles
- [ ] Support custom fan curves via an input file

## Credits and Acknowledgements

This project is based on 
[Clevo Fan Control Indicator for Ubuntu](https://github.com/SkyLandTW/clevo-indicator).
