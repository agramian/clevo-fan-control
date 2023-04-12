# Clevo Fan Control on Linux

## Ubuntu installation

### Build from source
1. Remove conflicting packages: `sudo apt remove -y libayatana-appindicator3-1`
2. Install the necessary packages (dependencies): `sudo apt install -y gcc cmake libappindicator3-dev libgtk-3-dev pkg-config git`
3. Clone the repo: `git clone https://github.com/comexr/fan-control.git`
4. Create a directory for installation files: `mkdir fan`
5. Enter the directory: `cd fan`
6. Install the driver: 
```shell
cmake -DUSER=$(whoami) -DGROUP=$(whoami) -DHOME=/home/$(whoami) ~/clevo-fan-control
cmake --build .
sudo cmake --install .
```
7. Reboot to apply changes: `reboot`

### Uninstalling

Use the `install_manifest.txt` generated when installing to remove the
files.

```shell
sudo xargs rm < install_manifest.txt
```
