# typed: strong

module Telnyx
  module Models
    class RecordingTranscriptionListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::RecordingTranscriptionListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Telnyx::RecordingTranscription])) }
      attr_reader :data

      sig do
        params(data: T::Array[Telnyx::RecordingTranscription::OrHash]).void
      end
      attr_writer :data

      sig do
        returns(
          T.nilable(Telnyx::Models::RecordingTranscriptionListResponse::Meta)
        )
      end
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::Models::RecordingTranscriptionListResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::RecordingTranscription::OrHash],
          meta: Telnyx::Models::RecordingTranscriptionListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::RecordingTranscription],
            meta: Telnyx::Models::RecordingTranscriptionListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::RecordingTranscriptionListResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Cursor)) }
        attr_reader :cursors

        sig { params(cursors: Telnyx::Cursor::OrHash).void }
        attr_writer :cursors

        # Path to next page.
        sig { returns(T.nilable(String)) }
        attr_reader :next_

        sig { params(next_: String).void }
        attr_writer :next_

        # Path to previous page.
        sig { returns(T.nilable(String)) }
        attr_reader :previous

        sig { params(previous: String).void }
        attr_writer :previous

        sig do
          params(
            cursors: Telnyx::Cursor::OrHash,
            next_: String,
            previous: String
          ).returns(T.attached_class)
        end
        def self.new(
          cursors: nil,
          # Path to next page.
          next_: nil,
          # Path to previous page.
          previous: nil
        )
        end

        sig do
          override.returns(
            { cursors: Telnyx::Cursor, next_: String, previous: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
