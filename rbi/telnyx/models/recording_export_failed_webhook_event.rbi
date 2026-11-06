# typed: strong

module Telnyx
  module Models
    class RecordingExportFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::RecordingExportFailedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique event id; deduplicate deliveries on it.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Telnyx::RecordingExportFailedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::RecordingExportFailedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # Event type.
      sig do
        returns(Telnyx::RecordingExportFailedWebhookEvent::Event::TaggedSymbol)
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
          data: Telnyx::RecordingExportFailedWebhookEvent::Data::OrHash,
          event: Telnyx::RecordingExportFailedWebhookEvent::Event::OrSymbol,
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
            data: Telnyx::RecordingExportFailedWebhookEvent::Data,
            event:
              Telnyx::RecordingExportFailedWebhookEvent::Event::TaggedSymbol,
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
              Telnyx::RecordingExportFailedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :bucket

        sig { returns(String) }
        attr_accessor :key

        sig do
          returns(
            Telnyx::RecordingExportFailedWebhookEvent::Data::Reason::TaggedSymbol
          )
        end
        attr_accessor :reason

        sig { returns(String) }
        attr_accessor :region

        sig { returns(String) }
        attr_accessor :session_id

        sig { returns(Symbol) }
        attr_accessor :type

        sig do
          params(
            bucket: String,
            key: String,
            reason:
              Telnyx::RecordingExportFailedWebhookEvent::Data::Reason::OrSymbol,
            region: String,
            session_id: String,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(bucket:, key:, reason:, region:, session_id:, type: :video)
        end

        sig do
          override.returns(
            {
              bucket: String,
              key: String,
              reason:
                Telnyx::RecordingExportFailedWebhookEvent::Data::Reason::TaggedSymbol,
              region: String,
              session_id: String,
              type: Symbol
            }
          )
        end
        def to_hash
        end

        module Reason
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::RecordingExportFailedWebhookEvent::Data::Reason
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INVALID_TARGET =
            T.let(
              :invalid_target,
              Telnyx::RecordingExportFailedWebhookEvent::Data::Reason::TaggedSymbol
            )
          INVALID_MEDIA =
            T.let(
              :invalid_media,
              Telnyx::RecordingExportFailedWebhookEvent::Data::Reason::TaggedSymbol
            )
          SOURCE_CHANGED =
            T.let(
              :source_changed,
              Telnyx::RecordingExportFailedWebhookEvent::Data::Reason::TaggedSymbol
            )
          SOURCE_UNAVAILABLE =
            T.let(
              :source_unavailable,
              Telnyx::RecordingExportFailedWebhookEvent::Data::Reason::TaggedSymbol
            )
          TOO_LARGE =
            T.let(
              :too_large,
              Telnyx::RecordingExportFailedWebhookEvent::Data::Reason::TaggedSymbol
            )
          STORAGE_UNAVAILABLE =
            T.let(
              :storage_unavailable,
              Telnyx::RecordingExportFailedWebhookEvent::Data::Reason::TaggedSymbol
            )
          OBJECT_CONFLICT =
            T.let(
              :object_conflict,
              Telnyx::RecordingExportFailedWebhookEvent::Data::Reason::TaggedSymbol
            )
          VERIFICATION_FAILED =
            T.let(
              :verification_failed,
              Telnyx::RecordingExportFailedWebhookEvent::Data::Reason::TaggedSymbol
            )
          WORKER_LOST =
            T.let(
              :worker_lost,
              Telnyx::RecordingExportFailedWebhookEvent::Data::Reason::TaggedSymbol
            )
          INTERNAL_ERROR =
            T.let(
              :internal_error,
              Telnyx::RecordingExportFailedWebhookEvent::Data::Reason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::RecordingExportFailedWebhookEvent::Data::Reason::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Event type.
      module Event
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::RecordingExportFailedWebhookEvent::Event)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECORDING_EXPORT_FAILED =
          T.let(
            :"recording.export_failed",
            Telnyx::RecordingExportFailedWebhookEvent::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::RecordingExportFailedWebhookEvent::Event::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
