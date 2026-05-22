# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::UserData#update
      class UserDataUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute webhook_failover_url
        #   Failover URL to send Whatsapp signup events
        #
        #   @return [String, nil]
        optional :webhook_failover_url, String

        # @!attribute webhook_url
        #   URL to send Whatsapp signup events
        #
        #   @return [String, nil]
        optional :webhook_url, String

        # @!method initialize(webhook_failover_url: nil, webhook_url: nil, request_options: {})
        #   @param webhook_failover_url [String] Failover URL to send Whatsapp signup events
        #
        #   @param webhook_url [String] URL to send Whatsapp signup events
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
