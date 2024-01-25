This is a docker container with stuff I use pre-installed. 

The package listed here: ghcr.io/mattrussell2/codespace-build:1.0.0 was built from the `Dockerfile` in the repo. 

It's built on Jammy Jellyfish, and has a suite of python packages and R packages installed. VSCode extensions for Jupyter Notebook, R, Github Copilot, and Monokai Pro are preinstalled. Synth-Shell is preconfigured as well. 

And the `.devcontainer/devcontainer.json` file uses this package to build a codespace. 

So in other words, copy the `.devcontainer` folder into your repo and modify `devcontainer.json` to your heart's content. 

Then, creating a codespace from your repo should take ~two minutes, with no need to pay for the prebuild space. 

You can also configure the Dockerfile and build your own package with it; then just upload it to dockerhub or ghcr.io and update the `image` field in the `devcontainer.json` file. 
