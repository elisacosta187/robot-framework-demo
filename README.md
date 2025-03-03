# 🤖 Demo - Robot Framework

This project contains automated UI tests for SauceDemo, a demo e-commerce site.

## How to setup the project

### Clone the repository

SSH

```
git clone git@github.com:elisacosta187/robot-framework-demo.git
```

HTTPS

```
git clone https://github.com/elisacosta187/robot-framework-demo.git
```
### Install Robot Framework & SeleniumLibrary
Make sure pip is installed, if not, run:

```
brew install python
```

Then install Robot Framework & SeleniumLibrary:

```
pip install robotframework robotframework-seleniumlibrary
```

## Useful commands

| Command                                           | Description                                                   |
| ------------------------------------------------- | ------------------------------------------------------------- |
| `robot --output=./test-results ./tests`           | Run all tests.                                                |
| `robot --output=./test-results -debug ./tests`    | Run all tests in debug mode.                                  |

## Useful links

[Robot Framework documentation](https://robotframework.org/robotframework/)
