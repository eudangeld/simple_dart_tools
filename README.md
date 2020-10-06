[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![GitHub license](https://img.shields.io/github/license/eudangeld/simple_dart_tools)](https://github.com/eudangeld/simple_dart_tools)

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/eudangeld/simple_dart_tools">
    <img src="assets/logo-readme.png" alt="Logo" width="80" height="80">
  </a>
  <h3 align="center">LinuxScripts</h3>
</p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [Simple Dart Tool](#simple-dart-tool)
    - [Built With](#built-with)
  - [Getting Started](#getting-started)
    - [Using on flutter projects](#using-on-flutter-projects)
    - [Importing](#importing)
    - [Basic Usage](#basic-usage)
    - [Running the tests](#running-the-tests)
  - [Usage](#usage)
  - [Roadmap](#roadmap)
  - [Contributing](#contributing)
  - [License](#license)
  - [Contact](#contact)
  - [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->

## About The Project

<p align="center">
  <a href="https://github.com/eudangeld/simple_dart_tools">
    <!-- You can add logo for your LinuxScript -->
    <!-- <img src="" alt="Logo" width="100" height="100"> -->
  </a>
</p>

# Simple Dart Tool

Simple validators for dart/flotter projects projects.

Validators

- Validate email
- Validate Brazilian cpf

### Built With

This section should list any major frameworks that you built your project using. Leave any add-ons/plugins for the acknowledgements section. Here are a few examples.

- [Dart](https://dart.dev/)
- [Java](https://www.java.com/)
- [Dart](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html)

<!-- GETTING STARTED -->

## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Using on flutter projects

Add this in your pubspec.yaml file

```
 simple_dart_tools:
    git: git://github.com/eudangeld/simple_dart_tools.git
```

### Importing

```
import 'package:simple_dart_tools/dart_tools.dart';
```

### Basic Usage

```
DartValidators tools = DartValidators();
if (!tools.validateEmail(value))print('your warning')
```

### Running the tests

On project folder run `Flutter test`

<!-- USAGE EXAMPLES -->

## Usage

Here is the description about...

- add some more features.
- use pictures for demo if you can
- or use gif images here if you want

<!-- Here you can add documentation link for the more user-understanble -->

_For more examples, please refer to the [Documentation]()_

<!-- ROADMAP -->

## Roadmap

See the [open issues](https://github.com/eudangeld/simple_dart_tools) for a list of proposed features (and known issues).

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->

## License

<!-- Here you can add license link  -->

Distributed under the License. See [`LICENSE`](https://choosealicense.com/licenses/mit/) for more information.

<!-- CONTACT -->

## Contact

Project Link: [https://github.com/eudangeld/simple_dart_tools](https://github.com/eudangeld/simple_dart_tools)

<!-- ACKNOWLEDGEMENTS -->

## Acknowledgements

- [Img Shields](https://shields.io)
- [Choose an Open Source License](https://choosealicense.com)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/eudangeld/simple_dart_tools.svg?style=flat
[contributors-url]: https://github.com/eudangeld/simple_dart_tools/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/eudangeld/simple_dart_tools.svg?style=flat
[forks-url]: https://github.com/eudangeld/simple_dart_tools/network/members
[stars-shield]: https://img.shields.io/github/stars/eudangeld/simple_dart_tools.svg?style=flat
[stars-url]: https://github.com/eudangeld/simple_dart_tools/stargazers
[issues-shield]: https://img.shields.io/github/issues/eudangeld/simple_dart_tools.svg?style=flat
[issues-url]: https://github.com/eudangeld/simple_dart_tools/issues
