# typed: strong

module Telnyx
  module Models
    class RecordingExportedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::RecordingExportedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique event id; deduplicate deliveries on it.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Telnyx::RecordingExportedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: Telnyx::RecordingExportedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # Event type.
      sig do
        returns(Telnyx::RecordingExportedWebhookEvent::Event::TaggedSymbol)
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
          data: Telnyx::RecordingExportedWebhookEvent::Data::OrHash,
          event: Telnyx::RecordingExportedWebhookEvent::Event::OrSymbol,
          occurred_at: Time,
          version: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique event id; deduplicate deliveries on it.
        id:,
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
            data: Telnyx::RecordingExportedWebhookEvent::Data,
            event: Telnyx::RecordingExportedWebhookEvent::Event::TaggedSymbol,
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
              Telnyx::RecordingExportedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :bucket

        sig { returns(Integer) }
        attr_accessor :bytes

        sig { returns(String) }
        attr_accessor :key

        sig { returns(String) }
        attr_accessor :region

        sig { returns(String) }
        attr_accessor :session_id

        sig { returns(String) }
        attr_accessor :sha256

        sig { returns(Symbol) }
        attr_accessor :type

        sig do
          params(
            bucket: String,
            bytes: Integer,
            key: String,
            region: String,
            session_id: String,
            sha256: String,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          bucket:,
          bytes:,
          key:,
          region:,
          session_id:,
          sha256:,
          type: :video
        )
        end

        sig do
          override.returns(
            {
              bucket: String,
              bytes: Integer,
              key: String,
              region: String,
              session_id: String,
              sha256: String,
              type: Symbol
            }
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
            T.all(Symbol, Telnyx::RecordingExportedWebhookEvent::Event)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECORDING_EXPORTED =
          T.let(
            :"recording.exported",
            Telnyx::RecordingExportedWebhookEvent::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::RecordingExportedWebhookEvent::Event::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
