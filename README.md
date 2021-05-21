# Stage 3

Sample repository to bootstrap full Gentoo from stage3 with luet.

## Install dependencies

Get luet:

```bash
curl https://get.mocaccino.org/luet/get_luet_root.sh | sudo sh
```

Run as root:
```bash
$ mkdir build
$ luet build --only-target-package --concurrency 1 --live-output --no-spinner --all --destination=${PWD}/build --tree=${PWD}/packages # Build all
$ luet create-repo --name "mocaccino-stage3" --output ${PWD}/build --packages ${PWD}/build --tree ${PWD}/packages # Create the repository
```

Resulting packages can be found in `build`!
