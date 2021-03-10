# frozen_string_literal: true

# Helper script to parse the command line options.

require "optparse"
require "ostruct"
require "yaml"

CONFIG = OpenStruct.new(
  document_url: "https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf",
  **YAML.safe_load(open("config.yaml")).to_h
)
OptionParser.new do |opts|
  opts.banner = "Telnyx fax demo\nUsage: bundle exec fax.rb -- [options]"

  opts.on("-h", "--help", "Prints this help") do
    puts opts
    exit
  end

  opts.on(
    "-h=URL", "--webhook-url=URL",
    "[REQUIRED] URL to send webhook events to. This should be an address exposed to the internet. For testing purposes try Ngrok or Hookbin."
  ) { |url| CONFIG.webhook_url = url }

  opts.on(
    "-k=KEY", "--api-key=KEY", "[REQUIRED] Telnyx API key."
  ) { |key| CONFIG.api_key = Telnyx.api_key = key }

  opts.on(
    "--to=NUMBER", "Phone number to send a fax to"
  ) { |number| CONFIG.to = number }

  opts.on(
    "--document-url=URL", "URL for document to fax. Default is https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf"
  ) { |url| CONFIG.document_url = url }
end.parse!

missing_args = %i[webhook_url api_key] - CONFIG.to_h.keys
missing_args.any? and raise OptionParser::MissingArgument, "missing the following options: [#{missing_args.join ', '}]. Use --help for more information."
CONFIG.to_h.values.any?(&:nil?) and raise "Missing config values, check config.yaml"
