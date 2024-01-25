This is a docker container with stuff I use pre-installed.

The package listed here: ghcr.io/mattrussell2/codespace-build:1.0.0 was built from the `Dockerfile` in the repo. 

It's built on Jammy Jellyfish, and has a suite of python and R packages installed. VSCode extensions for Jupyter Notebook, R, Github Copilot, and Monokai Pro are preinstalled. Synth-Shell is preconfigured as well. Lastly my usual vscode settings are in `.vscode/settings.json`.

And the `.devcontainer/devcontainer.json` file uses this package to build a codespace. 

So in other words, copy the `.devcontainer` folder into your repo and modify `devcontainer.json` to your heart's content. 

If you have docker and vscode, you can simply `ctrl+shift+p` -> `Open Folder in Container`, and open the repo's root directory. 

You can also use this to create a Codespace from your repo. The boot time takes ~two minutes, with no need to pay for the prebuild space if you set auto-delete to same-day. 

You can also configure the Dockerfile and build your own package with it; then just upload it to dockerhub or ghcr.io and update the `image` field in the `devcontainer.json` file. 
