# typed: strong

module Telnyx
  module Models
    class WebhookDeliveryListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WebhookDeliveryListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Uniquely identifies the webhook_delivery record.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Detailed delivery attempts, ordered by most recent.
      sig { returns(T.nilable(T::Array[Telnyx::Attempt])) }
      attr_reader :attempts

      sig { params(attempts: T::Array[Telnyx::Attempt::OrHash]).void }
      attr_writer :attempts

      # ISO 8601 timestamp indicating when the last webhook response has been received.
      sig { returns(T.nilable(Time)) }
      attr_reader :finished_at

      sig { params(finished_at: Time).void }
      attr_writer :finished_at

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # ISO 8601 timestamp indicating when the first request attempt was initiated.
      sig { returns(T.nilable(Time)) }
      attr_reader :started_at

      sig { params(started_at: Time).void }
      attr_writer :started_at

      # Delivery status: 'delivered' when successfuly delivered or 'failed' if all
      # attempts have failed.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::WebhookDeliveryListResponse::Status::TaggedSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: Telnyx::Models::WebhookDeliveryListResponse::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # Uniquely identifies the user that owns the webhook_delivery record.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      # Original webhook JSON data. Payload fields vary according to event type.
      sig do
        returns(T.nilable(Telnyx::Models::WebhookDeliveryListResponse::Webhook))
      end
      attr_reader :webhook

      sig do
        params(
          webhook: Telnyx::Models::WebhookDeliveryListResponse::Webhook::OrHash
        ).void
      end
      attr_writer :webhook

      # Record of all attempts to deliver a webhook.
      sig do
        params(
          id: String,
          attempts: T::Array[Telnyx::Attempt::OrHash],
          finished_at: Time,
          record_type: String,
          started_at: Time,
          status: Telnyx::Models::WebhookDeliveryListResponse::Status::OrSymbol,
          user_id: String,
          webhook: Telnyx::Models::WebhookDeliveryListResponse::Webhook::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies the webhook_delivery record.
        id: nil,
        # Detailed delivery attempts, ordered by most recent.
        attempts: nil,
        # ISO 8601 timestamp indicating when the last webhook response has been received.
        finished_at: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # ISO 8601 timestamp indicating when the first request attempt was initiated.
        started_at: nil,
        # Delivery status: 'delivered' when successfuly delivered or 'failed' if all
        # attempts have failed.
        status: nil,
        # Uniquely identifies the user that owns the webhook_delivery record.
        user_id: nil,
        # Original webhook JSON data. Payload fields vary according to event type.
        webhook: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            attempts: T::Array[Telnyx::Attempt],
            finished_at: Time,
            record_type: String,
            started_at: Time,
            status:
              Telnyx::Models::WebhookDeliveryListResponse::Status::TaggedSymbol,
            user_id: String,
            webhook: Telnyx::Models::WebhookDeliveryListResponse::Webhook
          }
        )
      end
      def to_hash
      end

      # Delivery status: 'delivered' when successfuly delivered or 'failed' if all
      # attempts have failed.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Models::WebhookDeliveryListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DELIVERED =
          T.let(
            :delivered,
            Telnyx::Models::WebhookDeliveryListResponse::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Telnyx::Models::WebhookDeliveryListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::WebhookDeliveryListResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Webhook < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::WebhookDeliveryListResponse::Webhook,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the type of resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The type of event being delivered.
        sig { returns(T.nilable(String)) }
        attr_reader :event_type

        sig { params(event_type: String).void }
        attr_writer :event_type

        # ISO 8601 datetime of when the event occurred.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :payload

        sig { params(payload: T::Hash[Symbol, T.anything]).void }
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::WebhookDeliveryListResponse::Webhook::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Models::WebhookDeliveryListResponse::Webhook::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        # Original webhook JSON data. Payload fields vary according to event type.
        sig do
          params(
            id: String,
            event_type: String,
            occurred_at: Time,
            payload: T::Hash[Symbol, T.anything],
            record_type:
              Telnyx::Models::WebhookDeliveryListResponse::Webhook::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the type of resource.
          id: nil,
          # The type of event being delivered.
          event_type: nil,
          # ISO 8601 datetime of when the event occurred.
          occurred_at: nil,
          payload: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              event_type: String,
              occurred_at: Time,
              payload: T::Hash[Symbol, T.anything],
              record_type:
                Telnyx::Models::WebhookDeliveryListResponse::Webhook::RecordType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Identifies the type of the resource.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::WebhookDeliveryListResponse::Webhook::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::Models::WebhookDeliveryListResponse::Webhook::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::WebhookDeliveryListResponse::Webhook::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
