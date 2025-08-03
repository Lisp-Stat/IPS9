
<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MS-PL License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/Lisp-Stat/IPS9">
    <img src="https://lisp-stat.dev/images/stats-image.svg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">IPS9 - Introduction to the Practice of Statistics</h3>

  <p align="center">
	From the book <em>Introduction to the Practice of Statistics</em>
	<br />
    <a href="https://lisp-stat.dev/docs/examples"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/Lisp-Stat/IPS/issues">Report Bug</a>
    ·
    <a href="https://github.com/Lisp-Stat/IPS/issues">Request Feature</a>
    ·
    <a href="https://lisp-stat.github.io/IPS9/">View Outputs</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About the Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#mybinderorg">mybinder.org</a></li>
        <li><a href="#github-codespaces">GitHub Codespaces</a></li>
        <li><a href="#local">Local</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
	<li><a href="#resources">Resources</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About the Project

  This repository contains:
  
  * An OCI (docker) definition for a Jupyter notebook for statistical analysis
  * Worked Lisp-Stat examples from the book, _Introduction to the Practice of Statistics_, ninth edition
  * Tools to support publishing example notebooks to GH pages (for use on the lisp-stat.dev documentation website)

You only need the tools if you are developing documention for Lisp-Stat, otherwise you will be using the generated image.

### Built With

* [Lisp-Stat](https://github.com/Lisp-Stat/lisp-stat)
* [common-lisp-jupyter](https://github.com/yitzchak/common-lisp-jupyter)
* [Jupyter Docker Stacks](https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html)

<!-- GETTING STARTED -->
## Getting Started

### mybinder.org
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Lisp-Stat/IPS9/HEAD?urlpath=%2Fdoc%2Ftree%2Findex.ipynb)

Click on the link above to launch the notebook on [mybinder.org](https://mybinder.org/).  This is probably the option you want.

### Github codespaces
<a href='https://codespaces.new/Lisp-Stat/IPS9'><img src='https://github.com/codespaces/badge.svg' alt='Open in GitHub Codespaces' style='max-width: 100%;'></a>

Codespaces is a recent offering that allows you to run devcontainer online (they offer 60 free hours per month) Use this option if you want to 
run from VS Code, though you can also use the JupyterLab interface on Codespaces.  If it's not obvious how to access Jupyter Lab, see the [step-by-step instructions](https://github.com/Lisp-Stat/cl-jupyter-image) in the cl-jupyter-image (the base image for this repo).

### Local

This image is based on [Jupyter Docker Stacks](https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html) and using the image is well documented there, but with an important difference: that is a _base_ image.  Here you need to build/run from the Dockerfile, but since we only layer on the statistical computing machinery, the stopping/starting/user/etc. is all the same.

For a quickstart:

```shell
# From the directory where Dockerfile is...
docker build -t ips9 .
```

Now you've built the image locally with the name (tag) 'ips9' and it will behave just like any other Jupyter Docker Stacks image. You can start by following the instructions for [running the containers](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/running.html).  For example:

```
docker run -it --rm -p 10000:8888 -v "${PWD}":/home/jovyan/work ips9
```

This command starts your container running a Jupyter Server and exposes the server on host port 10000. The server logs appear in the terminal and include a URL to the Server but with the internal container port (8888) instead of the correct host port (10000).  It will mount the current directory into `work/` of the image.

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/Lisp-Stat/IPS/issues) for a
list of proposed features (and known issues). We will include
additional examples in the chapter order of the book

## Resources

This system is part of the [Lisp-Stat](https://lisp-stat.dev/)
project; that should be your first stop for information. Also see the
<!-- [resources](https://lisp-stat.dev/resources) and -->
[community](https://lisp-stat.dev/community) page for more
information.

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing
place to be learn, inspire, and create. Any contributions you make are
greatly appreciated.  Please see [CONTRIBUTING](CONTRIBUTING.md) for
details on the code of conduct, and the process for submitting pull
requests.

<!-- LICENSE -->
## License

Distributed under the MS-PL License. See [LICENSE](LICENSE) for more information.

<!-- CONTACT -->
## Contact

Project Link: [https://github.com/lisp-stat/IPS](https://github.com/Lisp-Stat/IPS)


## VS Code vs. Jupyter Notebooks

Unless you are _working on_ Lisp Stat or common-lisp-jupyter, you can ignore this section.

[common-lisp-jupyter](https://github.com/yitzchak/common-lisp-jupyter) (JupyterLab) and VS Code take different approaches to cell execution, and there isn't (yet) a good VS Code extension for Common Lisp.  If you run a notebook in VS Code you should set the cell language to 'clojure', which is the closest language for which VS Code does have support.  You'll lose some of the Common Lisp syntax highlighting, but the cells will run.  Here's a detailed explanation of the differences:

### JupyterLab Approach

- **No cell-level language identifiers** - cells don't have individual language metadata
- **Kernel determines everything** - the notebook kernel (Python, R, Julia, Common Lisp, etc.) handles all code execution and language features
- **Uniform syntax highlighting** - all code cells use the same syntax highlighting based on the kernel language
- **Simple model** - one kernel = one language for the entire notebook

### VS Code Jupyter Support

- **Cell-level language metadata** - each cell can have its own language identifier
- **Hybrid approach** - kernel handles execution, but cell language affects editor features
- **Per-cell syntax highlighting** - each cell can have different syntax highlighting
- **More complex** - allows mixed-language notebooks (though execution still goes through one kernel)

### Why VS Code Does This

VS Code's approach allows for:

- **Better editor integration** - language servers, IntelliSense, error checking per cell
- **Mixed content** - you could have SQL in one cell, Python in another (with appropriate kernels)
- **Consistent editor experience** - same language features as regular files
- **Flexibility** - syntax highlighting can differ from execution kernel

### The Trade-off

**JupyterLab's simpler approach:**

- No language confusion - kernel = language
- Consistent experience
- No metadata overhead

**VS Code's approach:**

- More flexible and powerful
- Can create confusion
- Requires language metadata management

### For Common Lisp 

**In JupyterLab with a Common Lisp kernel:**

- All cells automatically get Common Lisp syntax highlighting
- No need to specify language per cell
- Kernel handles everything

**In VS Code:**

- You need to set cell language to the closest syntax (Clojure)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/lisp-stat/IPS.svg?style=for-the-badge
[contributors-url]: https://github.com/lisp-stat/IPS/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/lisp-stat/IPS.svg?style=for-the-badge
[forks-url]: https://github.com/lisp-stat/IPS/network/members
[stars-shield]: https://img.shields.io/github/stars/lisp-stat/IPS.svg?style=for-the-badge
[stars-url]: https://github.com/lisp-stat/IPS/stargazers
[issues-shield]: https://img.shields.io/github/issues/lisp-stat/IPS.svg?style=for-the-badge
[issues-url]: https://github.com/lisp-stat/IPS/issues
[license-shield]: https://img.shields.io/github/license/lisp-stat/IPS.svg?style=for-the-badge
[license-url]: https://github.com/lisp-stat/IPS/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/company/symbolics/
