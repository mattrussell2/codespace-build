This is effectively a prebuild for github codespaces. 

The package listed here: ghcr.io/mattrussell2/codespace-build:1.0.0 was built from the `Dockerfile` in the repo. 

And the `.devcontainer/devcontainer.json` file uses this package to build a codespace. 

So in other words, copy the `.devcontainer` folder into your repo and modify `devcontainer.json` to your heart's content. 

Then, creating a codespace from your repo should take ~90 seconds, with no need to pay for the prebuild space. 
