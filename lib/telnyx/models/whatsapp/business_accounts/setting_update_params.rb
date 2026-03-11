# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module BusinessAccounts
        # @see Telnyx::Resources::Whatsapp::BusinessAccounts::Settings#update
        class SettingUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute timezone
          #   IANA timezone identifier
          #
          #   @return [String, nil]
          optional :timezone, String

          # @!attribute webhook_enabled
          #   Enable/disable receiving Whatsapp events
          #
          #   @return [Boolean, nil]
          optional :webhook_enabled, Telnyx::Internal::Type::Boolean

          # @!attribute webhook_events
          #
          #   @return [Array<String>, nil]
          optional :webhook_events, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute webhook_failover_url
          #   Failover URL to send Whatsapp events
          #
          #   @return [String, nil]
          optional :webhook_failover_url, String

          # @!attribute webhook_url
          #   URL to send Whatsapp events
          #
          #   @return [String, nil]
          optional :webhook_url, String

          # @!method initialize(id:, name: nil, timezone: nil, webhook_enabled: nil, webhook_events: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
          #   @param id [String]
          #
          #   @param name [String]
          #
          #   @param timezone [String] IANA timezone identifier
          #
          #   @param webhook_enabled [Boolean] Enable/disable receiving Whatsapp events
          #
          #   @param webhook_events [Array<String>]
          #
          #   @param webhook_failover_url [String] Failover URL to send Whatsapp events
          #
          #   @param webhook_url [String] URL to send Whatsapp events
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
