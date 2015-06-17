# coding: utf-8
$LOAD_PATH << File.expand_path('../lib', __FILE__)
require 'jdbc/db2/version'

Gem::Specification.new do |spec|
  spec.name          = "jdbc-db2"
  spec.version       = Jdbc::DB2::VERSION
  spec.authors       = ["Pierre Paridans"]
  spec.email         = ["pierre.paridans@arag.be"]
  spec.description   = %q{Install this gem `require 'jdbc/db2'`}
  spec.summary       = %q{DB2 JDBC driver for JRuby.}
  spec.homepage      = "https://github.com/pparidans/jdbc-db2"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
