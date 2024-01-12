# Open RISC-V Initiative Website

This project contains the source code of the [Open RISC-V Initiative Website](https://open-riscv-initiative.com).

It uses the Hugo framework built in Go: [Hugo website](https://gohugo.io/)

## Development

In order to contribute to the website, you will need to install Hugo on your machine.
The installation process is nearly the same for all linux distribution as you can generally find the Hugo package
in the official repos. It's also available as a snap package.

You can find the installation instructions on the Hugo website.

- For **Linux** : https://gohugo.io/installation/linux/

- For **MacOS** : https://gohugo.io/installation/macos/

- For **Windows** : https://gohugo.io/installation/windows/

- And for **BSD** : https://gohugo.io/installation/bsd/



Once Hugo is installed, you can fork and clone the repo and launch the development mode of Hugo with this command:
```shell
git clone git@github.com:YOURUSERNAME/website.git
cd website
hugo server
```

Hugo should then download the dependencies needed for the project to run and serve the app on http://localhost:1313
