[Closure Linter](https://developers.google.com/closure/utilities/docs/linter_howto) plugin for https://github.com/jish/pre-commit

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
