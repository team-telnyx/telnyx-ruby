# frozen_string_literal: true

module Telnyx
  module Models
    class FaxMediaProcessedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute event_type
      #   The type of event being delivered.
      #
      #   @return [Symbol, Telnyx::Models::FaxMediaProcessedWebhookEvent::EventType, nil]
      optional :event_type, enum: -> { Telnyx::FaxMediaProcessedWebhookEvent::EventType }

      # @!attribute payload
      #
      #   @return [Telnyx::Models::FaxMediaProcessedWebhookEvent::Payload, nil]
      optional :payload, -> { Telnyx::FaxMediaProcessedWebhookEvent::Payload }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::FaxMediaProcessedWebhookEvent::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::FaxMediaProcessedWebhookEvent::RecordType }

      # @!method initialize(id: nil, event_type: nil, payload: nil, record_type: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param event_type [Symbol, Telnyx::Models::FaxMediaProcessedWebhookEvent::EventType] The type of event being delivered.
      #
      #   @param payload [Telnyx::Models::FaxMediaProcessedWebhookEvent::Payload]
      #
      #   @param record_type [Symbol, Telnyx::Models::FaxMediaProcessedWebhookEvent::RecordType] Identifies the type of the resource.

      # The type of event being delivered.
      #
      # @see Telnyx::Models::FaxMediaProcessedWebhookEvent#event_type
      module EventType
        extend Telnyx::Internal::Type::Enum

        FAX_MEDIA_PROCESSED = :"fax.media.processed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::FaxMediaProcessedWebhookEvent#payload
      class Payload < Telnyx::Internal::Type::BaseModel
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
        #   @return [Symbol, Telnyx::Models::FaxMediaProcessedWebhookEvent::Payload::Direction, nil]
        optional :direction, enum: -> { Telnyx::FaxMediaProcessedWebhookEvent::Payload::Direction }

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

        # @!attribute status
        #   The status of the fax.
        #
        #   @return [Symbol, Telnyx::Models::FaxMediaProcessedWebhookEvent::Payload::Status, nil]
        optional :status, enum: -> { Telnyx::FaxMediaProcessedWebhookEvent::Payload::Status }

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

        # @!method initialize(client_state: nil, connection_id: nil, direction: nil, fax_id: nil, from: nil, media_name: nil, original_media_url: nil, status: nil, to: nil, user_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::FaxMediaProcessedWebhookEvent::Payload} for more details.
        #
        #   @param client_state [String] State received from a command.
        #
        #   @param connection_id [String] The ID of the connection used to send the fax.
        #
        #   @param direction [Symbol, Telnyx::Models::FaxMediaProcessedWebhookEvent::Payload::Direction] The direction of the fax.
        #
        #   @param fax_id [String] Identifies the fax.
        #
        #   @param from [String] The phone number, in E.164 format, the fax will be sent from.
        #
        #   @param media_name [String] The media_name used for the fax's media. Must point to a file previously uploade
        #
        #   @param original_media_url [String] The original URL to the PDF used for the fax's media. If media_name was supplied
        #
        #   @param status [Symbol, Telnyx::Models::FaxMediaProcessedWebhookEvent::Payload::Status] The status of the fax.
        #
        #   @param to [String] The phone number, in E.164 format, the fax will be sent to or SIP URI
        #
        #   @param user_id [String] Identifier of the user to whom the fax belongs

        # The direction of the fax.
        #
        # @see Telnyx::Models::FaxMediaProcessedWebhookEvent::Payload#direction
        module Direction
          extend Telnyx::Internal::Type::Enum

          INBOUND = :inbound
          OUTBOUND = :outbound

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the fax.
        #
        # @see Telnyx::Models::FaxMediaProcessedWebhookEvent::Payload#status
        module Status
          extend Telnyx::Internal::Type::Enum

          MEDIA_PROCESSED = :"media.processed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::FaxMediaProcessedWebhookEvent#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EVENT = :event

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
