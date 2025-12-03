# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WebhookDeliveries#list
    class WebhookDeliveryListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::WebhookDeliveryListResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::WebhookDeliveryListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::Storage::Buckets::PaginationMetaSimple, nil]
      optional :meta, -> { Telnyx::Storage::Buckets::PaginationMetaSimple }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::WebhookDeliveryListResponse::Data>]
      #   @param meta [Telnyx::Models::Storage::Buckets::PaginationMetaSimple]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the webhook_delivery record.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute attempts
        #   Detailed delivery attempts, ordered by most recent.
        #
        #   @return [Array<Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt>, nil]
        optional :attempts,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt] }

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
        #   @return [Symbol, Telnyx::Models::WebhookDeliveryListResponse::Data::Status, nil]
        optional :status, enum: -> { Telnyx::Models::WebhookDeliveryListResponse::Data::Status }

        # @!attribute user_id
        #   Uniquely identifies the user that owns the webhook_delivery record.
        #
        #   @return [String, nil]
        optional :user_id, String

        # @!attribute webhook
        #   Original webhook JSON data. Payload fields vary according to event type.
        #
        #   @return [Telnyx::Models::WebhookDeliveryListResponse::Data::Webhook, nil]
        optional :webhook, -> { Telnyx::Models::WebhookDeliveryListResponse::Data::Webhook }

        # @!method initialize(id: nil, attempts: nil, finished_at: nil, record_type: nil, started_at: nil, status: nil, user_id: nil, webhook: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::WebhookDeliveryListResponse::Data} for more details.
        #
        #   Record of all attempts to deliver a webhook.
        #
        #   @param id [String] Uniquely identifies the webhook_delivery record.
        #
        #   @param attempts [Array<Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt>] Detailed delivery attempts, ordered by most recent.
        #
        #   @param finished_at [Time] ISO 8601 timestamp indicating when the last webhook response has been received.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param started_at [Time] ISO 8601 timestamp indicating when the first request attempt was initiated.
        #
        #   @param status [Symbol, Telnyx::Models::WebhookDeliveryListResponse::Data::Status] Delivery status: 'delivered' when successfuly delivered or 'failed' if all attem
        #
        #   @param user_id [String] Uniquely identifies the user that owns the webhook_delivery record.
        #
        #   @param webhook [Telnyx::Models::WebhookDeliveryListResponse::Data::Webhook] Original webhook JSON data. Payload fields vary according to event type.

        class Attempt < Telnyx::Internal::Type::BaseModel
          # @!attribute errors
          #   Webhook delivery error codes.
          #
          #   @return [Array<Integer>, nil]
          optional :errors, Telnyx::Internal::Type::ArrayOf[Integer]

          # @!attribute finished_at
          #   ISO 8601 timestamp indicating when the attempt has finished.
          #
          #   @return [Time, nil]
          optional :finished_at, Time

          # @!attribute http
          #   HTTP request and response information.
          #
          #   @return [Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt::HTTP, nil]
          optional :http, -> { Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt::HTTP }

          # @!attribute started_at
          #   ISO 8601 timestamp indicating when the attempt was initiated.
          #
          #   @return [Time, nil]
          optional :started_at, Time

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt::Status, nil]
          optional :status, enum: -> { Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt::Status }

          # @!method initialize(errors: nil, finished_at: nil, http: nil, started_at: nil, status: nil)
          #   Webhook delivery attempt details.
          #
          #   @param errors [Array<Integer>] Webhook delivery error codes.
          #
          #   @param finished_at [Time] ISO 8601 timestamp indicating when the attempt has finished.
          #
          #   @param http [Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt::HTTP] HTTP request and response information.
          #
          #   @param started_at [Time] ISO 8601 timestamp indicating when the attempt was initiated.
          #
          #   @param status [Symbol, Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt::Status]

          # @see Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt#http
          class HTTP < Telnyx::Internal::Type::BaseModel
            # @!attribute request
            #   Request details.
            #
            #   @return [Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt::HTTP::Request, nil]
            optional :request, -> { Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt::HTTP::Request }

            # @!attribute response
            #   Response details, optional.
            #
            #   @return [Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt::HTTP::Response, nil]
            optional :response,
                     -> { Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt::HTTP::Response },
                     nil?: true

            # @!method initialize(request: nil, response: nil)
            #   HTTP request and response information.
            #
            #   @param request [Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt::HTTP::Request] Request details.
            #
            #   @param response [Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt::HTTP::Response, nil] Response details, optional.

            # @see Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt::HTTP#request
            class Request < Telnyx::Internal::Type::BaseModel
              # @!attribute headers
              #   List of headers, limited to 10kB.
              #
              #   @return [Array<Array<String>>, nil]
              optional :headers, Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::ArrayOf[String]]

              # @!attribute url
              #
              #   @return [String, nil]
              optional :url, String

              # @!method initialize(headers: nil, url: nil)
              #   Request details.
              #
              #   @param headers [Array<Array<String>>] List of headers, limited to 10kB.
              #
              #   @param url [String]
            end

            # @see Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt::HTTP#response
            class Response < Telnyx::Internal::Type::BaseModel
              # @!attribute body
              #   Raw response body, limited to 10kB.
              #
              #   @return [String, nil]
              optional :body, String

              # @!attribute headers
              #   List of headers, limited to 10kB.
              #
              #   @return [Array<Array<String>>, nil]
              optional :headers, Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::ArrayOf[String]]

              # @!attribute status
              #
              #   @return [Integer, nil]
              optional :status, Integer

              # @!method initialize(body: nil, headers: nil, status: nil)
              #   Response details, optional.
              #
              #   @param body [String] Raw response body, limited to 10kB.
              #
              #   @param headers [Array<Array<String>>] List of headers, limited to 10kB.
              #
              #   @param status [Integer]
            end
          end

          # @see Telnyx::Models::WebhookDeliveryListResponse::Data::Attempt#status
          module Status
            extend Telnyx::Internal::Type::Enum

            DELIVERED = :delivered
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Delivery status: 'delivered' when successfuly delivered or 'failed' if all
        # attempts have failed.
        #
        # @see Telnyx::Models::WebhookDeliveryListResponse::Data#status
        module Status
          extend Telnyx::Internal::Type::Enum

          DELIVERED = :delivered
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::WebhookDeliveryListResponse::Data#webhook
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
          #   @return [Object, nil]
          optional :payload, Telnyx::Internal::Type::Unknown

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [Symbol, Telnyx::Models::WebhookDeliveryListResponse::Data::Webhook::RecordType, nil]
          optional :record_type, enum: -> { Telnyx::Models::WebhookDeliveryListResponse::Data::Webhook::RecordType }

          # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
          #   Original webhook JSON data. Payload fields vary according to event type.
          #
          #   @param id [String] Identifies the type of resource.
          #
          #   @param event_type [String] The type of event being delivered.
          #
          #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
          #
          #   @param payload [Object]
          #
          #   @param record_type [Symbol, Telnyx::Models::WebhookDeliveryListResponse::Data::Webhook::RecordType] Identifies the type of the resource.

          # Identifies the type of the resource.
          #
          # @see Telnyx::Models::WebhookDeliveryListResponse::Data::Webhook#record_type
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
