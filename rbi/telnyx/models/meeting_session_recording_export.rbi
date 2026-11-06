# typed: strong

module Telnyx
  module Models
    class MeetingSessionRecordingExport < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MeetingSessionRecordingExport,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :bucket

      sig { returns(T.nilable(Integer)) }
      attr_accessor :bytes

      sig { returns(T.nilable(Time)) }
      attr_accessor :exported_at

      sig { returns(String) }
      attr_accessor :key

      sig { returns(String) }
      attr_accessor :region

      sig do
        returns(Telnyx::MeetingSessionRecordingExport::Status::TaggedSymbol)
      end
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

      # Customer Storage recording reference. Pending is not downloadable; exported
      # means upload was verified; failed is terminal. Download with ordinary Storage
      # authorization. No presigned URL is returned.
      sig do
        params(
          bucket: String,
          bytes: T.nilable(Integer),
          exported_at: T.nilable(Time),
          key: String,
          region: String,
          status: Telnyx::MeetingSessionRecordingExport::Status::OrSymbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        bucket:,
        bytes:,
        exported_at:,
        key:,
        region:,
        status:,
        type: :video
      )
      end

      sig do
        override.returns(
          {
            bucket: String,
            bytes: T.nilable(Integer),
            exported_at: T.nilable(Time),
            key: String,
            region: String,
            status: Telnyx::MeetingSessionRecordingExport::Status::TaggedSymbol,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::MeetingSessionRecordingExport::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Telnyx::MeetingSessionRecordingExport::Status::TaggedSymbol
          )
        EXPORTED =
          T.let(
            :exported,
            Telnyx::MeetingSessionRecordingExport::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Telnyx::MeetingSessionRecordingExport::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::MeetingSessionRecordingExport::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
