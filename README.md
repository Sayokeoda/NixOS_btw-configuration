# Flake NixOS Esqueleto

Estructura mínima para instalar NixOS con Btrfs y Home Manager.
- Reemplaza `TU_USUARIO` por tu usuario real.
- Copia `hardware-configuration.nix` generado por `nixos-generate-config --root /mnt` a `hosts/laptop/hardware.nix`.
- Durante la instalación: `nixos-install --flake /mnt/etc/nixos#laptop`.
- Después del primer arranque: `home-manager switch --flake /etc/nixos#TU_USUARIO`.
