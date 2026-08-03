# typed: strong

module Telnyx
  module Models
    module EmailValidations
      class BatchCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailValidations::BatchCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Shape returned by the create endpoint. Includes duplicates_removed.
        sig do
          returns(Telnyx::Models::EmailValidations::BatchCreateResponse::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::EmailValidations::BatchCreateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::EmailValidations::BatchCreateResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Shape returned by the create endpoint. Includes duplicates_removed.
          data:
        )
        end

        sig do
          override.returns(
            {
              data: Telnyx::Models::EmailValidations::BatchCreateResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::EmailValidations::BatchCreateResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Integer) }
          attr_accessor :duplicates_removed

          sig do
            returns(
              Telnyx::Models::EmailValidations::BatchCreateResponse::Data::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          sig do
            returns(
              Telnyx::EmailValidations::EmailValidationBatchStatus::TaggedSymbol
            )
          end
          attr_accessor :status

          sig { returns(Integer) }
          attr_accessor :total

          sig { returns(T.nilable(String)) }
          attr_reader :webhook_url

          sig { params(webhook_url: String).void }
          attr_writer :webhook_url

          # Shape returned by the create endpoint. Includes duplicates_removed.
          sig do
            params(
              id: String,
              duplicates_removed: Integer,
              record_type:
                Telnyx::Models::EmailValidations::BatchCreateResponse::Data::RecordType::OrSymbol,
              status:
                Telnyx::EmailValidations::EmailValidationBatchStatus::OrSymbol,
              total: Integer,
              webhook_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            duplicates_removed:,
            record_type:,
            status:,
            total:,
            webhook_url: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                duplicates_removed: Integer,
                record_type:
                  Telnyx::Models::EmailValidations::BatchCreateResponse::Data::RecordType::TaggedSymbol,
                status:
                  Telnyx::EmailValidations::EmailValidationBatchStatus::TaggedSymbol,
                total: Integer,
                webhook_url: String
              }
            )
          end
          def to_hash
          end

          module RecordType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::EmailValidations::BatchCreateResponse::Data::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMAIL_VALIDATION_BATCH =
              T.let(
                :email_validation_batch,
                Telnyx::Models::EmailValidations::BatchCreateResponse::Data::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::EmailValidations::BatchCreateResponse::Data::RecordType::TaggedSymbol
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
end
