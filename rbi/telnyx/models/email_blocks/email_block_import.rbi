# typed: strong

module Telnyx
  module Models
    EmailBlockImport = EmailBlocks::EmailBlockImport

    module EmailBlocks
      class EmailBlockImport < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailBlocks::EmailBlockImport,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        # View-only.
        sig do
          returns(
            Telnyx::EmailBlocks::EmailBlockImport::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        sig do
          returns(Telnyx::EmailBlocks::EmailBlockImport::Status::TaggedSymbol)
        end
        attr_accessor :status

        # Data-row count at upload.
        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(Time) }
        attr_accessor :updated_at

        # Omitted until terminal success.
        sig { returns(T.nilable(Time)) }
        attr_reader :completed_at

        sig { params(completed_at: Time).void }
        attr_writer :completed_at

        # Only when `status == completed`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :created_count

        sig { params(created_count: Integer).void }
        attr_writer :created_count

        # Only when `status == completed`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :error_count

        sig { params(error_count: Integer).void }
        attr_writer :error_count

        # `{row_number: reason}`; only rendered when non-empty.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :errors

        sig { params(errors: T::Hash[Symbol, String]).void }
        attr_writer :errors

        # Only when `status == completed`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :existing_count

        sig { params(existing_count: Integer).void }
        attr_writer :existing_count

        # Only on terminal failure.
        sig { returns(T.nilable(String)) }
        attr_reader :failure_reason

        sig { params(failure_reason: String).void }
        attr_writer :failure_reason

        # Only when `status == completed`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :processed_rows

        sig { params(processed_rows: Integer).void }
        attr_writer :processed_rows

        # Omitted when nil.
        sig do
          returns(
            T.nilable(
              Telnyx::EmailBlocks::EmailBlockImport::Provider::TaggedSymbol
            )
          )
        end
        attr_reader :provider

        sig do
          params(
            provider: Telnyx::EmailBlocks::EmailBlockImport::Provider::OrSymbol
          ).void
        end
        attr_writer :provider

        # Only when `status == completed`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :skipped_count

        sig { params(skipped_count: Integer).void }
        attr_writer :skipped_count

        # Import job. Schema fields hidden: `account_id`, `csv_content`, `block_ttl_days`.
        # Nullable fields use the omit-nullable pattern.
        sig do
          params(
            id: String,
            created_at: Time,
            record_type:
              Telnyx::EmailBlocks::EmailBlockImport::RecordType::OrSymbol,
            status: Telnyx::EmailBlocks::EmailBlockImport::Status::OrSymbol,
            total: Integer,
            updated_at: Time,
            completed_at: Time,
            created_count: Integer,
            error_count: Integer,
            errors: T::Hash[Symbol, String],
            existing_count: Integer,
            failure_reason: String,
            processed_rows: Integer,
            provider: Telnyx::EmailBlocks::EmailBlockImport::Provider::OrSymbol,
            skipped_count: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          # View-only.
          record_type:,
          status:,
          # Data-row count at upload.
          total:,
          updated_at:,
          # Omitted until terminal success.
          completed_at: nil,
          # Only when `status == completed`.
          created_count: nil,
          # Only when `status == completed`.
          error_count: nil,
          # `{row_number: reason}`; only rendered when non-empty.
          errors: nil,
          # Only when `status == completed`.
          existing_count: nil,
          # Only on terminal failure.
          failure_reason: nil,
          # Only when `status == completed`.
          processed_rows: nil,
          # Omitted when nil.
          provider: nil,
          # Only when `status == completed`.
          skipped_count: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              record_type:
                Telnyx::EmailBlocks::EmailBlockImport::RecordType::TaggedSymbol,
              status:
                Telnyx::EmailBlocks::EmailBlockImport::Status::TaggedSymbol,
              total: Integer,
              updated_at: Time,
              completed_at: Time,
              created_count: Integer,
              error_count: Integer,
              errors: T::Hash[Symbol, String],
              existing_count: Integer,
              failure_reason: String,
              processed_rows: Integer,
              provider:
                Telnyx::EmailBlocks::EmailBlockImport::Provider::TaggedSymbol,
              skipped_count: Integer
            }
          )
        end
        def to_hash
        end

        # View-only.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailBlocks::EmailBlockImport::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_BLOCK_IMPORT =
            T.let(
              :email_block_import,
              Telnyx::EmailBlocks::EmailBlockImport::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailBlocks::EmailBlockImport::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailBlocks::EmailBlockImport::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::EmailBlocks::EmailBlockImport::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :processing,
              Telnyx::EmailBlocks::EmailBlockImport::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::EmailBlocks::EmailBlockImport::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::EmailBlocks::EmailBlockImport::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailBlocks::EmailBlockImport::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Omitted when nil.
        module Provider
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailBlocks::EmailBlockImport::Provider)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SENDGRID =
            T.let(
              :sendgrid,
              Telnyx::EmailBlocks::EmailBlockImport::Provider::TaggedSymbol
            )
          MAILGUN =
            T.let(
              :mailgun,
              Telnyx::EmailBlocks::EmailBlockImport::Provider::TaggedSymbol
            )
          SES =
            T.let(
              :ses,
              Telnyx::EmailBlocks::EmailBlockImport::Provider::TaggedSymbol
            )
          GENERIC =
            T.let(
              :generic,
              Telnyx::EmailBlocks::EmailBlockImport::Provider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailBlocks::EmailBlockImport::Provider::TaggedSymbol
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
