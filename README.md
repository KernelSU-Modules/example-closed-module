# Example Closed Module Demo — source repository

This repository shows the **closed-source** layout for [KernelSU Modules](https://modules.kernelsu.org).
It is public only so that it can serve as an example: **keep your own source repository private.**

| Repository | Visibility | Contains |
| --- | --- | --- |
| `example-closed-module` (this one) | private for real modules | source, `module.yaml`, `DESCRIPTION.md`, icon, build script, release workflow |
| [`example-closed-module-dist`](https://github.com/KernelSU-Modules/example-closed-module-dist) | **public** | synced metadata + immutable releases with the module ZIP |

Pushing a `v*` tag runs `.github/workflows/release.yml`: it builds the ZIP, syncs `module.yaml`,
`DESCRIPTION.md` and the icon to the release repository, creates the tag there and publishes an
immutable release. The KernelSU Modules App is installed on the **release repository only**.

Full guide: [Closed-source modules](https://developers.kernelsu.org/docs/closed-source).

## License

[MIT](LICENSE)
