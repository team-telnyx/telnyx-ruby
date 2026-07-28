# frozen_string_literal: true

module Telnyx
  module Models
    module EmailDomains
      # @see Telnyx::Resources::EmailDomains::Webhooks#update
      class WebhookUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute domain_id
        #
        #   @return [String]
        required :domain_id, String

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute events
        #
        #   @return [Array<Symbol, Telnyx::Models::EmailDomains::EmailWebhookEvent>, nil]
        optional :events, -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::EmailDomains::EmailWebhookEvent] }

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(domain_id:, id:, events: nil, url: nil, request_options: {})
        #   @param domain_id [String]
        #   @param id [String]
        #   @param events [Array<Symbol, Telnyx::Models::EmailDomains::EmailWebhookEvent>]
        #   @param url [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
