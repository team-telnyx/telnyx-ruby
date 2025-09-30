# frozen_string_literal: true

module Telnyx
  module Models
    class FaxFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute event_type
      #   The type of event being delivered.
      #
      #   @return [Symbol, Telnyx::Models::FaxFailedWebhookEvent::EventType, nil]
      optional :event_type, enum: -> { Telnyx::FaxFailedWebhookEvent::EventType }

      # @!attribute payload
      #
      #   @return [Telnyx::Models::FaxFailedWebhookEvent::Payload, nil]
      optional :payload, -> { Telnyx::FaxFailedWebhookEvent::Payload }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::FaxFailedWebhookEvent::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::FaxFailedWebhookEvent::RecordType }

      # @!method initialize(id: nil, event_type: nil, payload: nil, record_type: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param event_type [Symbol, Telnyx::Models::FaxFailedWebhookEvent::EventType] The type of event being delivered.
      #
      #   @param payload [Telnyx::Models::FaxFailedWebhookEvent::Payload]
      #
      #   @param record_type [Symbol, Telnyx::Models::FaxFailedWebhookEvent::RecordType] Identifies the type of the resource.

      # The type of event being delivered.
      #
      # @see Telnyx::Models::FaxFailedWebhookEvent#event_type
      module EventType
        extend Telnyx::Internal::Type::Enum

        FAX_FAILED = :"fax.failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::FaxFailedWebhookEvent#payload
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
        #   @return [Symbol, Telnyx::Models::FaxFailedWebhookEvent::Payload::Direction, nil]
        optional :direction, enum: -> { Telnyx::FaxFailedWebhookEvent::Payload::Direction }

        # @!attribute failure_reason
        #   Cause of the sending failure
        #
        #   @return [Symbol, Telnyx::Models::FaxFailedWebhookEvent::Payload::FailureReason, nil]
        optional :failure_reason, enum: -> { Telnyx::FaxFailedWebhookEvent::Payload::FailureReason }

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
        #   @return [Symbol, Telnyx::Models::FaxFailedWebhookEvent::Payload::Status, nil]
        optional :status, enum: -> { Telnyx::FaxFailedWebhookEvent::Payload::Status }

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

        # @!method initialize(client_state: nil, connection_id: nil, direction: nil, failure_reason: nil, fax_id: nil, from: nil, media_name: nil, original_media_url: nil, status: nil, to: nil, user_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::FaxFailedWebhookEvent::Payload} for more details.
        #
        #   @param client_state [String] State received from a command.
        #
        #   @param connection_id [String] The ID of the connection used to send the fax.
        #
        #   @param direction [Symbol, Telnyx::Models::FaxFailedWebhookEvent::Payload::Direction] The direction of the fax.
        #
        #   @param failure_reason [Symbol, Telnyx::Models::FaxFailedWebhookEvent::Payload::FailureReason] Cause of the sending failure
        #
        #   @param fax_id [String] Identifies the fax.
        #
        #   @param from [String] The phone number, in E.164 format, the fax will be sent from.
        #
        #   @param media_name [String] The media_name used for the fax's media. Must point to a file previously uploade
        #
        #   @param original_media_url [String] The original URL to the PDF used for the fax's media. If media_name was supplied
        #
        #   @param status [Symbol, Telnyx::Models::FaxFailedWebhookEvent::Payload::Status] The status of the fax.
        #
        #   @param to [String] The phone number, in E.164 format, the fax will be sent to or SIP URI
        #
        #   @param user_id [String] Identifier of the user to whom the fax belongs

        # The direction of the fax.
        #
        # @see Telnyx::Models::FaxFailedWebhookEvent::Payload#direction
        module Direction
          extend Telnyx::Internal::Type::Enum

          INBOUND = :inbound
          OUTBOUND = :outbound

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Cause of the sending failure
        #
        # @see Telnyx::Models::FaxFailedWebhookEvent::Payload#failure_reason
        module FailureReason
          extend Telnyx::Internal::Type::Enum

          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the fax.
        #
        # @see Telnyx::Models::FaxFailedWebhookEvent::Payload#status
        module Status
          extend Telnyx::Internal::Type::Enum

          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::FaxFailedWebhookEvent#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EVENT = :event

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
