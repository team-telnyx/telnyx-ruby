# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      # @see Telnyx::Resources::Enterprises::Reputation#update_webhook
      class ReputationUpdateWebhookParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute enterprise_id
        #
        #   @return [String]
        required :enterprise_id, String

        # @!attribute webhook_url
        #   HTTPS URL on a publicly routable host. Send `null` to stop receiving
        #   number-ownership events.
        #
        #   @return [String, nil]
        required :webhook_url, String, nil?: true

        # @!method initialize(enterprise_id:, webhook_url:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Enterprises::ReputationUpdateWebhookParams} for more details.
        #
        #   @param enterprise_id [String]
        #
        #   @param webhook_url [String, nil] HTTPS URL on a publicly routable host. Send `null` to stop receiving number-owne
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
