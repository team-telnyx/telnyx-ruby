# frozen_string_literal: true

require "telnyx"
require_relative "options"
require "sinatra/base"
require "json"
require "amazing_print"
require "uri"

class WebhookServer < Sinatra::Base
  set :port, 9090

  def initialize
    super
    Thread.new { telnyx_setup }
  end

  def telnyx_setup
    @fax_application = Telnyx::FaxApplication.retrieve CONFIG.fax_app_id
    @fax_application.webhook_event_url = CONFIG.webhook_url
    @fax_application.save

    puts "## Fax Send Request ##"
    ap @sent_fax = Telnyx::Fax.create(
      connection_id: CONFIG["outbound_connection_id"],
      media_url: CONFIG.document_url,
      to: CONFIG.to,
      from: CONFIG.from,
      outbound_voice_profile_id: CONFIG.outbound_voice_profile_id
    )
  end

  # Receive webhooks
  post "/*" do
    hook = JSON.parse(request.body.read, symbolize_names: true)
    puts "## Received Webhook ##"
    ap hook
    200
  end
end

WebhookServer.run!
