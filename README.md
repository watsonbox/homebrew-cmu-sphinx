# homebrew-cmu-sphinx

[Homebrew](http://brew.sh/) head-only [tap](https://github.com/Homebrew/homebrew/wiki/brew-tap) for [CMU Sphinx](http://cmusphinx.sourceforge.net/). Please see caveats for using head-only versions [here](https://github.com/Homebrew/homebrew-headonly#why-is-head-only-bad).

A lot of functionality has been added since the last stable CMU sphinx release (0.8) at the end of 2012. Most notably for OSX users this includes [support for the OpenAL audio backend](https://github.com/cmusphinx/sphinxbase/commit/5cc55c4721273681200e1f754ff0798ac073b950) which fixes [this bug](http://sourceforge.net/p/cmusphinx/bugs/389/) and supports live audio recognition on OSX.


## Usage

Add the Homebrew tap:

```bash
$ brew tap watsonbox/cmu-sphinx
```
Install the libraries:

```bash
$ brew install watsonbox/cmu-sphinx/cmu-sphinxbase
$ brew install watsonbox/cmu-sphinx/cmu-pocketsphinx
```
