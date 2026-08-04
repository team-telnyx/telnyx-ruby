# typed: strong

module Telnyx
  module Models
    class EmailMessageBatchResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::EmailMessageBatchResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Telnyx::EmailInboxes::EmailMessage]) }
      attr_accessor :data

      sig do
        returns(T::Array[Telnyx::Models::EmailMessageBatchResponse::Error])
      end
      attr_accessor :errors

      sig { returns(Telnyx::Models::EmailMessageBatchResponse::Meta) }
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::Models::EmailMessageBatchResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::EmailInboxes::EmailMessage::OrHash],
          errors:
            T::Array[Telnyx::Models::EmailMessageBatchResponse::Error::OrHash],
          meta: Telnyx::Models::EmailMessageBatchResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, errors:, meta:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::EmailInboxes::EmailMessage],
            errors: T::Array[Telnyx::Models::EmailMessageBatchResponse::Error],
            meta: Telnyx::Models::EmailMessageBatchResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Error < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailMessageBatchResponse::Error,
              Telnyx::Internal::AnyHash
            )
          end

        # Batch item errors use `message` (not `detail`) for the human-readable text.
        sig do
          returns(
            Telnyx::Models::EmailMessageBatchResponse::Error::Code::TaggedSymbol
          )
        end
        attr_accessor :code

        # Zero-based index of the failed message in the request array.
        sig { returns(Integer) }
        attr_accessor :index

        sig { returns(String) }
        attr_accessor :message

        sig do
          params(
            code:
              Telnyx::Models::EmailMessageBatchResponse::Error::Code::OrSymbol,
            index: Integer,
            message: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Batch item errors use `message` (not `detail`) for the human-readable text.
          code:,
          # Zero-based index of the failed message in the request array.
          index:,
          message:
        )
        end

        sig do
          override.returns(
            {
              code:
                Telnyx::Models::EmailMessageBatchResponse::Error::Code::TaggedSymbol,
              index: Integer,
              message: String
            }
          )
        end
        def to_hash
        end

        # Batch item errors use `message` (not `detail`) for the human-readable text.
        module Code
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::EmailMessageBatchResponse::Error::Code
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BAD_REQUEST =
            T.let(
              :bad_request,
              Telnyx::Models::EmailMessageBatchResponse::Error::Code::TaggedSymbol
            )
          NOT_FOUND =
            T.let(
              :not_found,
              Telnyx::Models::EmailMessageBatchResponse::Error::Code::TaggedSymbol
            )
          FORBIDDEN =
            T.let(
              :forbidden,
              Telnyx::Models::EmailMessageBatchResponse::Error::Code::TaggedSymbol
            )
          SERVICE_UNAVAILABLE =
            T.let(
              :service_unavailable,
              Telnyx::Models::EmailMessageBatchResponse::Error::Code::TaggedSymbol
            )
          VALIDATION_ERROR =
            T.let(
              :validation_error,
              Telnyx::Models::EmailMessageBatchResponse::Error::Code::TaggedSymbol
            )
          RECIPIENT_SUPPRESSED =
            T.let(
              :recipient_suppressed,
              Telnyx::Models::EmailMessageBatchResponse::Error::Code::TaggedSymbol
            )
          REPUTATION_SUSPENDED =
            T.let(
              :reputation_suspended,
              Telnyx::Models::EmailMessageBatchResponse::Error::Code::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::EmailMessageBatchResponse::Error::Code::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailMessageBatchResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :failed

        sig { returns(Integer) }
        attr_accessor :succeeded

        sig { returns(Integer) }
        attr_accessor :total

        sig do
          params(failed: Integer, succeeded: Integer, total: Integer).returns(
            T.attached_class
          )
        end
        def self.new(failed:, succeeded:, total:)
        end

        sig do
          override.returns(
            { failed: Integer, succeeded: Integer, total: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
