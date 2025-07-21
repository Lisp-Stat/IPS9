
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
    Jupyter notebooks for statistics education using Common Lisp
    <br />
    <a href="https://lisp-stat.github.io/IPS9/"><strong>📖 View Notebooks with Outputs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/Lisp-Stat/IPS9/issues">Report Bug</a>
    ·
    <a href="https://github.com/Lisp-Stat/IPS9/issues">Request Feature</a>
  </p>
</p>

## 📖 View the Notebooks

**[View all notebooks with outputs here](https://lisp-stat.github.io/IPS9/)**

The notebooks in this repository are stored without outputs to keep the git history clean. 
The executed versions with all outputs are automatically built and published when changes are pushed to the main branch.

  <p align="center">
	From the book <em>Introduction to the Practice of Statistics</em>
	<br />
    <a href="https://lisp-stat.dev/docs/examples"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/Lisp-Stat/IPS/issues">Report Bug</a>
    ·
    <a href="https://github.com/Lisp-Stat/IPS/issues">Request Feature</a>
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
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
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

  This repository contains worked Jupyter notebook examples from the book,
  _Introduction to the Practice of Statistics_, ninth edition.


### Built With

* [Lisp-Stat](https://github.com/Lisp-Stat/lisp-stat)
* [common-lisp-jupyter](https://github.com/yitzchak/common-lisp-jupyter)

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these steps:

### Prerequisites

An ANSI Common Lisp implementation. Developed and tested with [SBCL](https://www.sbcl.org/)

### Installation

1. Install [common-lisp-jupyter](https://github.com/yitzchak/common-lisp-jupyter)
1. Clone the repository
   ```sh
   cd ~/quicklisp/local-projects &&
   git clone https://github.com/Lisp-Stat/IPS.git
   ```
2. Reset the ASDF source-registry to find the new system (from the REPL)
   ```lisp
   (asdf:clear-source-registry)
   ```
3. Load the system
   ```lisp
   (ql:quickload :ips)
   ```

<!-- USAGE EXAMPLES -->
## Usage

  Run Jupyter-Lab in the IPS directory above. You should see the example notebooks.


## VS Code vs. Jupyter Notebooks

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
