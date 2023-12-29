# lens-npm-run

Use npm to run a script

## Usage

```toml
[hololens]
package = "holo/lens-npm-run/12" # node12, node14, and node16 are available

[hololens.npm-run]
# env = "production" # change to development if you need devDependencies installed
# install = "npm ci" # change if you need custom install
command = "build" # to run e.g. `npm run build`
output_dir = "dist" # if not set, build command expected to output tree hash

[hololens.input]
root = "src/webapp"
files = "**"

[hololens.output]
merge = "replace"
```
