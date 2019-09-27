# frozen_string_literal: true

$LOAD_PATH.unshift(::File.join(::File.dirname(__FILE__), "lib"))

require "telnyx/version"

Gem::Specification.new do |s|
  s.name = "telnyx"
  s.version = Telnyx::VERSION
  s.required_ruby_version = ">= 2.1.0"
  s.summary = "Ruby bindings for the Telnyx API"
  s.description = "Telnyx enables anyone to deliver enterprise-grade real-time communications over the internet. See https://telnyx.com for details."
  s.author = "Telnyx"
  s.email = "support@telnyx.com"
  s.homepage = "https://developers.telnyx.com"
  s.license = "MIT"

  s.metadata = {
    "documentation_uri" => "https://developers.telnyx.com/docs/api/v2/overview",
    "github_repo"       => "ssh://github.com/team-telnyx/telnyx-ruby",
    "homepage_uri"      => "https://telnyx.com",
    "source_code_uri"   => "https://github.com/team-telnyx/telnyx-ruby",
  }

  s.add_dependency("faraday", "~> 0.13", "< 0.16")
  s.add_dependency("net-http-persistent", "~> 3.0")
  s.add_dependency("ed25519", "~> 1")

  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| ::File.basename(f) }
  s.require_paths = ["lib"]
end
