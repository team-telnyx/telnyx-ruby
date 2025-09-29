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

        sig do
          returns(
            T.nilable(
              Telnyx::Models::RecordingTranscriptionListResponse::Meta::Cursors
            )
          )
        end
        attr_reader :cursors

        sig do
          params(
            cursors:
              Telnyx::Models::RecordingTranscriptionListResponse::Meta::Cursors::OrHash
          ).void
        end
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
            cursors:
              Telnyx::Models::RecordingTranscriptionListResponse::Meta::Cursors::OrHash,
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
            {
              cursors:
                Telnyx::Models::RecordingTranscriptionListResponse::Meta::Cursors,
              next_: String,
              previous: String
            }
          )
        end
        def to_hash
        end

        class Cursors < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::RecordingTranscriptionListResponse::Meta::Cursors,
                Telnyx::Internal::AnyHash
              )
            end

          # Opaque identifier of next page.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # Opaque identifier of previous page.
          sig { returns(T.nilable(String)) }
          attr_reader :before

          sig { params(before: String).void }
          attr_writer :before

          sig do
            params(after: String, before: String).returns(T.attached_class)
          end
          def self.new(
            # Opaque identifier of next page.
            after: nil,
            # Opaque identifier of previous page.
            before: nil
          )
          end

          sig { override.returns({ after: String, before: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
