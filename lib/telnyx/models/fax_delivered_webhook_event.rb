# frozen_string_literal: true

module Telnyx
  module Models
    class FaxDeliveredWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute event_type
      #   The type of event being delivered.
      #
      #   @return [Symbol, Telnyx::Models::FaxDeliveredWebhookEvent::EventType, nil]
      optional :event_type, enum: -> { Telnyx::FaxDeliveredWebhookEvent::EventType }

      # @!attribute payload
      #
      #   @return [Telnyx::Models::FaxDeliveredWebhookEvent::Payload, nil]
      optional :payload, -> { Telnyx::FaxDeliveredWebhookEvent::Payload }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::FaxDeliveredWebhookEvent::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::FaxDeliveredWebhookEvent::RecordType }

      # @!method initialize(id: nil, event_type: nil, payload: nil, record_type: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param event_type [Symbol, Telnyx::Models::FaxDeliveredWebhookEvent::EventType] The type of event being delivered.
      #
      #   @param payload [Telnyx::Models::FaxDeliveredWebhookEvent::Payload]
      #
      #   @param record_type [Symbol, Telnyx::Models::FaxDeliveredWebhookEvent::RecordType] Identifies the type of the resource.

      # The type of event being delivered.
      #
      # @see Telnyx::Models::FaxDeliveredWebhookEvent#event_type
      module EventType
        extend Telnyx::Internal::Type::Enum

        FAX_DELIVERED = :"fax.delivered"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::FaxDeliveredWebhookEvent#payload
      class Payload < Telnyx::Internal::Type::BaseModel
        # @!attribute call_duration_secs
        #   The duration of the call in seconds.
        #
        #   @return [Integer, nil]
        optional :call_duration_secs, Integer

        # @!attribute client_state
        #   State received from a command.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute connection_id
        #   The ID of the connection used to send the fax.
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute direction
        #   The direction of the fax.
        #
        #   @return [Symbol, Telnyx::Models::FaxDeliveredWebhookEvent::Payload::Direction, nil]
        optional :direction, enum: -> { Telnyx::FaxDeliveredWebhookEvent::Payload::Direction }

        # @!attribute fax_id
        #   Identifies the fax.
        #
        #   @return [String, nil]
        optional :fax_id, String

        # @!attribute from
        #   The phone number, in E.164 format, the fax will be sent from.
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute media_name
        #   The media_name used for the fax's media. Must point to a file previously
        #   uploaded to api.telnyx.com/v2/media by the same user/organization. media_name
        #   and media_url/contents can't be submitted together.
        #
        #   @return [String, nil]
        optional :media_name, String

        # @!attribute original_media_url
        #   The original URL to the PDF used for the fax's media. If media_name was
        #   supplied, this is omitted
        #
        #   @return [String, nil]
        optional :original_media_url, String

        # @!attribute page_count
        #   Number of transferred pages
        #
        #   @return [Integer, nil]
        optional :page_count, Integer

        # @!attribute status
        #   The status of the fax.
        #
        #   @return [Symbol, Telnyx::Models::FaxDeliveredWebhookEvent::Payload::Status, nil]
        optional :status, enum: -> { Telnyx::FaxDeliveredWebhookEvent::Payload::Status }

        # @!attribute to
        #   The phone number, in E.164 format, the fax will be sent to or SIP URI
        #
        #   @return [String, nil]
        optional :to, String

        # @!attribute user_id
        #   Identifier of the user to whom the fax belongs
        #
        #   @return [String, nil]
        optional :user_id, String

        # @!method initialize(call_duration_secs: nil, client_state: nil, connection_id: nil, direction: nil, fax_id: nil, from: nil, media_name: nil, original_media_url: nil, page_count: nil, status: nil, to: nil, user_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::FaxDeliveredWebhookEvent::Payload} for more details.
        #
        #   @param call_duration_secs [Integer] The duration of the call in seconds.
        #
        #   @param client_state [String] State received from a command.
        #
        #   @param connection_id [String] The ID of the connection used to send the fax.
        #
        #   @param direction [Symbol, Telnyx::Models::FaxDeliveredWebhookEvent::Payload::Direction] The direction of the fax.
        #
        #   @param fax_id [String] Identifies the fax.
        #
        #   @param from [String] The phone number, in E.164 format, the fax will be sent from.
        #
        #   @param media_name [String] The media_name used for the fax's media. Must point to a file previously uploade
        #
        #   @param original_media_url [String] The original URL to the PDF used for the fax's media. If media_name was supplied
        #
        #   @param page_count [Integer] Number of transferred pages
        #
        #   @param status [Symbol, Telnyx::Models::FaxDeliveredWebhookEvent::Payload::Status] The status of the fax.
        #
        #   @param to [String] The phone number, in E.164 format, the fax will be sent to or SIP URI
        #
        #   @param user_id [String] Identifier of the user to whom the fax belongs

        # The direction of the fax.
        #
        # @see Telnyx::Models::FaxDeliveredWebhookEvent::Payload#direction
        module Direction
          extend Telnyx::Internal::Type::Enum

          INBOUND = :inbound
          OUTBOUND = :outbound

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the fax.
        #
        # @see Telnyx::Models::FaxDeliveredWebhookEvent::Payload#status
        module Status
          extend Telnyx::Internal::Type::Enum

          DELIVERED = :delivered

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::FaxDeliveredWebhookEvent#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EVENT = :event

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
