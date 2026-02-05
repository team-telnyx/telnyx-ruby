# typed: strong

module Telnyx
  module Models
    class NumberOrderStatusUpdate < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::NumberOrderStatusUpdate, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::NumberOrderStatusUpdate::Data) }
      attr_reader :data

      sig { params(data: Telnyx::NumberOrderStatusUpdate::Data::OrHash).void }
      attr_writer :data

      sig { returns(Telnyx::NumberOrderStatusUpdate::Meta) }
      attr_reader :meta

      sig { params(meta: Telnyx::NumberOrderStatusUpdate::Meta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: Telnyx::NumberOrderStatusUpdate::Data::OrHash,
          meta: Telnyx::NumberOrderStatusUpdate::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data: Telnyx::NumberOrderStatusUpdate::Data,
            meta: Telnyx::NumberOrderStatusUpdate::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NumberOrderStatusUpdate::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier for the event
        sig { returns(String) }
        attr_accessor :id

        # The type of event being sent
        sig { returns(String) }
        attr_accessor :event_type

        # ISO 8601 timestamp of when the event occurred
        sig { returns(Time) }
        attr_accessor :occurred_at

        sig { returns(Telnyx::NumberOrderWithPhoneNumbers) }
        attr_reader :payload

        sig do
          params(payload: Telnyx::NumberOrderWithPhoneNumbers::OrHash).void
        end
        attr_writer :payload

        # Type of record
        sig { returns(String) }
        attr_accessor :record_type

        sig do
          params(
            id: String,
            event_type: String,
            occurred_at: Time,
            payload: Telnyx::NumberOrderWithPhoneNumbers::OrHash,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the event
          id:,
          # The type of event being sent
          event_type:,
          # ISO 8601 timestamp of when the event occurred
          occurred_at:,
          payload:,
          # Type of record
          record_type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              event_type: String,
              occurred_at: Time,
              payload: Telnyx::NumberOrderWithPhoneNumbers,
              record_type: String
            }
          )
        end
        def to_hash
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NumberOrderStatusUpdate::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        # Webhook delivery attempt number
        sig { returns(Integer) }
        attr_accessor :attempt

        # URL where the webhook was delivered
        sig { returns(String) }
        attr_accessor :delivered_to

        sig do
          params(attempt: Integer, delivered_to: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Webhook delivery attempt number
          attempt:,
          # URL where the webhook was delivered
          delivered_to:
        )
        end

        sig { override.returns({ attempt: Integer, delivered_to: String }) }
        def to_hash
        end
      end
    end
  end
end
