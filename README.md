[Closure Linter](https://developers.google.com/closure/utilities/docs/linter_howto) plugin for [Pre-commit](https://github.com/jish/pre-commit). It enables ability to check your Javascript code with [Google JavaScript Style Guide](http://google-styleguide.googlecode.com/svn/trunk/javascriptguide.xml).

## Installation

Closure Linter must be installed. The package is available in Ubuntu in the
`universe` repo from 14.04. For earlier versions there is a [ppa](https://launchpad.net/~fta/+archive/ubuntu/dev).

Install the plugin

    $ gem install pre-commit-closure-linter

### Enable as errors

Use the pre-commit command to enable the plugin

    # In your git repo
    $ pre-commit enable yaml checks closure-linter

This creates a `config/pre_commit.yml` configuratiuon file which will
inform `pre-commit` to use `pre-commit-closure-linter` plugin for this project.

### Enable as warnings

Use the pre-commit command to enable the plugin

    # In your git repo
    $ pre-commit enable yaml warnings closure-linter

### Configuration

You can store your configuration options into a file named `.gjslintrc` and put this file in the root directory of your project. [Here](https://gist.github.com/tsevan/94bd649054b7c64181a3) you can find an example file. You can get the full list of all available options using `gjslint --help`.
