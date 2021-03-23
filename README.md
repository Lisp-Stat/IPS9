
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
  <a href="https://github.com/Lisp-Stat/IPS">
    <img src="https://lisp-stat.dev/images/stats-image.svg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Lisp-Stat Examples</h3>

  <p align="center">
	From the book _Introduction to the Practice of Statistics_
	<br />
    <a href="https://lisp-stat.dev/docs/examples"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/Lisp-Stat/IPS/issues">Report Bug</a>
    ·
    <a href="https://github.com/Lisp-Stat/IPS/issues">Request Feature</a>
    ·
    <a href="https://lisp-stat.github.io/ips/">Reference Manual</a>
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

  Note that Github won't render these in-situ because it does not have
  a Common Lisp kernel. You will need to check out the repo to follow
  along.

### Built With

* [Lisp-Stat](https://github.com/Lisp-Stat/lisp-stat)
* [common-lisp-jupyter](https://github.com/yitzchak/common-lisp-jupyter)

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these steps:

### Prerequisites

An ANSI Common Lisp implementation. Developed and tested with
[SBCL](https://www.sbcl.org/) and
[CCL](https://github.com/Clozure/ccl).

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


<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/Lisp-Stat/IPS/issues) for a
list of proposed features (and known issues). We will include
additional examples in the chapter order of the book

## Resources

This system is part of the [Lisp-Stat](https://lisp-stat.dev/) project; that should be your first stop for information. Also see the <!-- [resources](https://lisp-stat.dev/resources) and -->
[community](https://lisp-stat.dev/community) page for more
information.

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**. Please see [CONTRIBUTING](CONTRIBUTING.md) for details on the code of conduct, and the process for submitting pull requests.

<!-- LICENSE -->
## License

Distributed under the MS-PL License. See [LICENSE](LICENSE) for more infoqrmation.



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
