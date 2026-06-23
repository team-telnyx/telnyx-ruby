# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      class WhatsappUserData < Telnyx::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute webhook_failover_url
        #   Failover URL to receive Whatsapp signup events
        #
        #   @return [String, nil]
        optional :webhook_failover_url, String

        # @!attribute webhook_url
        #   URL to receive Whatsapp signup events
        #
        #   @return [String, nil]
        optional :webhook_url, String

        # @!method initialize(created_at: nil, record_type: nil, updated_at: nil, webhook_failover_url: nil, webhook_url: nil)
        #   @param created_at [Time]
        #
        #   @param record_type [String]
        #
        #   @param updated_at [Time]
        #
        #   @param webhook_failover_url [String] Failover URL to receive Whatsapp signup events
        #
        #   @param webhook_url [String] URL to receive Whatsapp signup events
      end
    end

    WhatsappUserData = Whatsapp::WhatsappUserData
  end
end
