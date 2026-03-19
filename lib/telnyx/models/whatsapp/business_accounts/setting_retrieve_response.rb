# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module BusinessAccounts
        # @see Telnyx::Resources::Whatsapp::BusinessAccounts::Settings#retrieve
        class SettingRetrieveResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Whatsapp::BusinessAccounts::SettingRetrieveResponse::Data, nil]
          optional :data, -> { Telnyx::Models::Whatsapp::BusinessAccounts::SettingRetrieveResponse::Data }

          # @!method initialize(data: nil)
          #   @param data [Telnyx::Models::Whatsapp::BusinessAccounts::SettingRetrieveResponse::Data]

          # @see Telnyx::Models::Whatsapp::BusinessAccounts::SettingRetrieveResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Internal ID of Whatsapp business account
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute record_type
            #
            #   @return [String, nil]
            optional :record_type, String

            # @!attribute timezone
            #
            #   @return [String, nil]
            optional :timezone, String

            # @!attribute updated_at
            #
            #   @return [Time, nil]
            optional :updated_at, Time

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
            #   Failover URL to receive Whatsapp events
            #
            #   @return [String, nil]
            optional :webhook_failover_url, String

            # @!attribute webhook_url
            #   URL to receive Whatsapp events
            #
            #   @return [String, nil]
            optional :webhook_url, String

            # @!method initialize(id: nil, name: nil, record_type: nil, timezone: nil, updated_at: nil, webhook_enabled: nil, webhook_events: nil, webhook_failover_url: nil, webhook_url: nil)
            #   @param id [String] Internal ID of Whatsapp business account
            #
            #   @param name [String]
            #
            #   @param record_type [String]
            #
            #   @param timezone [String]
            #
            #   @param updated_at [Time]
            #
            #   @param webhook_enabled [Boolean] Enable/disable receiving Whatsapp events
            #
            #   @param webhook_events [Array<String>]
            #
            #   @param webhook_failover_url [String] Failover URL to receive Whatsapp events
            #
            #   @param webhook_url [String] URL to receive Whatsapp events
          end
        end
      end
    end
  end
end
