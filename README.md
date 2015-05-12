# homebrew-cmu-sphinx

[![Build Status](http://img.shields.io/travis/watsonbox/homebrew-cmu-sphinx.svg?style=flat)](https://travis-ci.org/watsonbox/homebrew-cmu-sphinx)

[Homebrew](http://brew.sh/) head-only [tap](https://github.com/Homebrew/homebrew/wiki/brew-tap) for [CMU Sphinx](http://cmusphinx.sourceforge.net/). Please see caveats for using head-only versions [here](https://github.com/Homebrew/homebrew-headonly#why-is-head-only-bad).

This has been tested on OSX Mavericks 10.9.5 and Yosemite 10.10.3. Feedback for other versions welcomed.

A lot of functionality has been added since the last stable CMU sphinx release (0.8) at the end of 2012. Most notably for OSX users this includes [support for the OpenAL audio backend](https://github.com/cmusphinx/sphinxbase/commit/5cc55c4721273681200e1f754ff0798ac073b950) which fixes [this bug](http://sourceforge.net/p/cmusphinx/bugs/389/) and supports live audio recognition on OSX.

There is also currently no stable [Sphinxtrain](https://github.com/cmusphinx/sphinxtrain) formula in the main Homebrew repository.


## Usage

Add the Homebrew tap:

```bash
$ brew tap watsonbox/cmu-sphinx
```

You'll see some warnings as these formulae conflict with those in the main reponitory, but that's fine.

Install the libraries:

```bash
$ brew install --HEAD watsonbox/cmu-sphinx/cmu-sphinxbase
$ brew install --HEAD watsonbox/cmu-sphinx/cmu-sphinxtrain # optional
$ brew install --HEAD watsonbox/cmu-sphinx/cmu-pocketsphinx
```

You can test continuous recognition as follows:

```bash
$ pocketsphinx_continuous -inmic yes
```

### Re-installing

To re-install, uninstall before following the instructions above:

```bash
$ brew uninstall cmu-sphinxbase
$ brew uninstall cmu-sphinxtrain
$ brew uninstall cmu-pocketsphinx
```


## Troubleshooting

Please be aware that these are development versions of CMU Sphinx packages and as such are expected to be unstable. You can submit bugs [here](https://sourceforge.net/p/cmusphinx/bugs/).

**syntax error near unexpected token no-define' ./configure: line 2366:AM_INIT_AUTOMAKE(no-define foreign)'**

A few people seem to be experiencing this error (as descibed in #2). The solution seems to be to run the following and retry:

```bash
$ brew doctor
$ brew prune
```
