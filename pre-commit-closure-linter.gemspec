# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pre-commit/closure-linter/version'

Gem::Specification.new do |s|
  s.name = "pre-commit-closure-linter"
  s.version = PreCommit::ClosureLinter::VERSION
  s.authors = ["Vitali Tsevan"]
  s.homepage = "http://github.com/tsevan/pre-commit-closure-linter"
  s.license = "Apache 2.0"
  s.summary = "Closure Linter plugin for jish/pre-commit"

  s.extra_rdoc_files = ["README.md"]
  s.files = Dir["lib/**/*"]

  s.metadata = {
    "plugins/pre_commit/checks/closure_linter.rb" => "1",
  }

  s.add_dependency("pre-commit")

  s.add_development_dependency("guard", "~> 2.0")
  s.add_development_dependency("guard-minitest", "~> 2.0")
  s.add_development_dependency("minitest", "~> 4.0")
  s.add_development_dependency("minitest-reporters", "~> 0")
  s.add_development_dependency("rake", ">= 12.3.3")
end
