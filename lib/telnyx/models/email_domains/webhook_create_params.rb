# frozen_string_literal: true

module Telnyx
  module Models
    module EmailDomains
      # @see Telnyx::Resources::EmailDomains::Webhooks#create
      class WebhookCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute domain_id
        #
        #   @return [String]
        required :domain_id, String

        # @!attribute events
        #   At least one event type is required.
        #
        #   @return [Array<Symbol, Telnyx::Models::EmailDomains::EmailWebhookEvent>]
        required :events, -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::EmailDomains::EmailWebhookEvent] }

        # @!attribute url
        #   HTTPS endpoint to deliver subscribed events to.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(domain_id:, events:, url:, request_options: {})
        #   @param domain_id [String]
        #
        #   @param events [Array<Symbol, Telnyx::Models::EmailDomains::EmailWebhookEvent>] At least one event type is required.
        #
        #   @param url [String] HTTPS endpoint to deliver subscribed events to.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
