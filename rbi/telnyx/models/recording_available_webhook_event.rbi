# typed: strong

module Telnyx
  module Models
    class RecordingAvailableWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::RecordingAvailableWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique event id; deduplicate deliveries on it.
      sig { returns(String) }
      attr_accessor :id

      # Available recording types.
      sig { returns(Telnyx::RecordingAvailableWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: Telnyx::RecordingAvailableWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # Event type.
      sig do
        returns(Telnyx::RecordingAvailableWebhookEvent::Event::TaggedSymbol)
      end
      attr_accessor :event

      # When the event occurred.
      sig { returns(Time) }
      attr_accessor :occurred_at

      # Envelope version.
      sig { returns(String) }
      attr_accessor :version

      sig do
        params(
          id: String,
          data: Telnyx::RecordingAvailableWebhookEvent::Data::OrHash,
          event: Telnyx::RecordingAvailableWebhookEvent::Event::OrSymbol,
          occurred_at: Time,
          version: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique event id; deduplicate deliveries on it.
        id:,
        # Available recording types.
        data:,
        # Event type.
        event:,
        # When the event occurred.
        occurred_at:,
        # Envelope version.
        version:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            data: Telnyx::RecordingAvailableWebhookEvent::Data,
            event: Telnyx::RecordingAvailableWebhookEvent::Event::TaggedSymbol,
            occurred_at: Time,
            version: String
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::RecordingAvailableWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Available recording types.
        sig { returns(T::Array[String]) }
        attr_accessor :recording_types

        # The meeting session this event belongs to.
        sig { returns(String) }
        attr_accessor :session_id

        # Available recording types.
        sig do
          params(recording_types: T::Array[String], session_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Available recording types.
          recording_types:,
          # The meeting session this event belongs to.
          session_id:
        )
        end

        sig do
          override.returns(
            { recording_types: T::Array[String], session_id: String }
          )
        end
        def to_hash
        end
      end

      # Event type.
      module Event
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::RecordingAvailableWebhookEvent::Event)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECORDING_AVAILABLE =
          T.let(
            :"recording.available",
            Telnyx::RecordingAvailableWebhookEvent::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::RecordingAvailableWebhookEvent::Event::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
