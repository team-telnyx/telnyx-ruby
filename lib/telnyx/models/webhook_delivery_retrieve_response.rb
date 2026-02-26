# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WebhookDeliveries#retrieve
    class WebhookDeliveryRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   Record of all attempts to deliver a webhook.
      #
      #   @return [Telnyx::Models::WebhookDeliveryRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::WebhookDeliveryRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WebhookDeliveryRetrieveResponse::Data] Record of all attempts to deliver a webhook.

      # @see Telnyx::Models::WebhookDeliveryRetrieveResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the webhook_delivery record.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute attempts
        #   Detailed delivery attempts, ordered by most recent.
        #
        #   @return [Array<Telnyx::Models::Attempt>, nil]
        optional :attempts, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Attempt] }

        # @!attribute finished_at
        #   ISO 8601 timestamp indicating when the last webhook response has been received.
        #
        #   @return [Time, nil]
        optional :finished_at, Time

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute started_at
        #   ISO 8601 timestamp indicating when the first request attempt was initiated.
        #
        #   @return [Time, nil]
        optional :started_at, Time

        # @!attribute status
        #   Delivery status: 'delivered' when successfuly delivered or 'failed' if all
        #   attempts have failed.
        #
        #   @return [Symbol, Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Status, nil]
        optional :status, enum: -> { Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Status }

        # @!attribute user_id
        #   Uniquely identifies the user that owns the webhook_delivery record.
        #
        #   @return [String, nil]
        optional :user_id, String

        # @!attribute webhook
        #   Original webhook JSON data. Payload fields vary according to event type.
        #
        #   @return [Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook, nil]
        optional :webhook, -> { Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook }

        # @!method initialize(id: nil, attempts: nil, finished_at: nil, record_type: nil, started_at: nil, status: nil, user_id: nil, webhook: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::WebhookDeliveryRetrieveResponse::Data} for more details.
        #
        #   Record of all attempts to deliver a webhook.
        #
        #   @param id [String] Uniquely identifies the webhook_delivery record.
        #
        #   @param attempts [Array<Telnyx::Models::Attempt>] Detailed delivery attempts, ordered by most recent.
        #
        #   @param finished_at [Time] ISO 8601 timestamp indicating when the last webhook response has been received.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param started_at [Time] ISO 8601 timestamp indicating when the first request attempt was initiated.
        #
        #   @param status [Symbol, Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Status] Delivery status: 'delivered' when successfuly delivered or 'failed' if all attem
        #
        #   @param user_id [String] Uniquely identifies the user that owns the webhook_delivery record.
        #
        #   @param webhook [Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook] Original webhook JSON data. Payload fields vary according to event type.

        # Delivery status: 'delivered' when successfuly delivered or 'failed' if all
        # attempts have failed.
        #
        # @see Telnyx::Models::WebhookDeliveryRetrieveResponse::Data#status
        module Status
          extend Telnyx::Internal::Type::Enum

          DELIVERED = :delivered
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::WebhookDeliveryRetrieveResponse::Data#webhook
        class Webhook < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Identifies the type of resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute event_type
          #   The type of event being delivered.
          #
          #   @return [String, nil]
          optional :event_type, String

          # @!attribute occurred_at
          #   ISO 8601 datetime of when the event occurred.
          #
          #   @return [Time, nil]
          optional :occurred_at, Time

          # @!attribute payload
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :payload, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [Symbol, Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook::RecordType, nil]
          optional :record_type,
                   enum: -> { Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook::RecordType }

          # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
          #   Original webhook JSON data. Payload fields vary according to event type.
          #
          #   @param id [String] Identifies the type of resource.
          #
          #   @param event_type [String] The type of event being delivered.
          #
          #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
          #
          #   @param payload [Hash{Symbol=>Object}]
          #
          #   @param record_type [Symbol, Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook::RecordType] Identifies the type of the resource.

          # Identifies the type of the resource.
          #
          # @see Telnyx::Models::WebhookDeliveryRetrieveResponse::Data::Webhook#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            EVENT = :event

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
