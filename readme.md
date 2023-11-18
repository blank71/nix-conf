# install directory

```
# parted

(parted) print list
(parted) select /dev/nvme0n1
(parted) mklabel gpt
(parted) mkpart primary 512MB -16GB
(parted) mkpart primary linux-swap -16GB 100%
(parted) mkpart ESP fat32 1MB 512MB
(parted) set 3 esp on

# mkfs.ext4 -L nixos /dev/nvme0n1p1
# mkswap -L swap /dev/nvme0n1p3
# mkfs.fat -F 32 -n boot /dev/sda2

# mount /dev/disk/by-label/nixos /mnt
# mkdir -p /mnt/boot
# mount /dev/disk/by-label/boot /mnt/boot

# swapon /dev/nvme0n1p3
# nixos-generate-config --root /mnt

# nix-env -f '<nixpkgs>' -iA vim
# nix-env -f '<nixpkgs>' -iA git

# cd /mnt/etc/nixos/
# git clone https://github.com/blank71/nix-conf.git

# cp hardware-configuration.nix nix-conf
# cd nix-conf
# nixos-install --flake .#myNixOS
# reboot
```
```
# passwd bl
```