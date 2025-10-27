# frozen_string_literal: true

require_relative "lib/telnyx/version"

Gem::Specification.new do |s|
  s.name = "telnyx"
  s.version = Telnyx::VERSION
  s.summary = "Global communications APIs for Voice, SMS, MMS, WhatsApp, Fax, IoT, SIP, and Call Control."
  s.description = "Official Telnyx SDK for Ruby developers. Integrate Voice, SMS, MMS, WhatsApp, Fax, Wireless IoT, SIP Trunking, Call Control, Number Management, and Emergency Services — all built on Telnyx's private carrier-grade cloud."
  s.authors = ["Telnyx"]
  s.email = "support@telnyx.com"
  s.homepage = "https://gemdocs.org/gems/telnyx"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/team-telnyx/telnyx-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end
