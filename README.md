# tj5-atomic &nbsp; [![bluebuild build badge](https://github.com/tj5miniop/tj5-atomic/actions/workflows/build.yml/badge.svg)](https://github.com/tj5miniop/tj5-atomic/actions/workflows/build.yml)

Tj5-atomic - my own custom image based on Bazzite for my personal needs - it aim's to create a "base" system which can be built upon while still delivering what you expect from Bazzite.
# note this will be changing to an independent project once the core system is set up
## NOTICE - this image will soon be archived,a new system will be developed 

> [!WARNING]  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/tj5miniop/tj5-atomic:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/tj5miniop/tj5-atomic:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/how-to/generate-iso/#_top). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/tj5miniop/tj5-atomic
```
