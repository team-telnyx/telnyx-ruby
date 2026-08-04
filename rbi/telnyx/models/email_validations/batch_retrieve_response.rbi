# typed: strong

module Telnyx
  module Models
    module EmailValidations
      class BatchRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailValidations::BatchRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Shape returned by the GET endpoint. Does not include duplicates_removed.
        sig do
          returns(Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Shape returned by the GET endpoint. Does not include duplicates_removed.
          data:
        )
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::RecordType::TaggedSymbol
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

          sig { returns(T.nilable(Time)) }
          attr_reader :completed_at

          sig { params(completed_at: Time).void }
          attr_writer :completed_at

          # Map keyed by original email address. Present only when the batch is completed.
          sig do
            returns(
              T.nilable(
                T::Hash[
                  Symbol,
                  Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result
                ]
              )
            )
          end
          attr_reader :results

          sig do
            params(
              results:
                T::Hash[
                  Symbol,
                  Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::OrHash
                ]
            ).void
          end
          attr_writer :results

          sig { returns(T.nilable(String)) }
          attr_reader :webhook_url

          sig { params(webhook_url: String).void }
          attr_writer :webhook_url

          # Shape returned by the GET endpoint. Does not include duplicates_removed.
          sig do
            params(
              id: String,
              record_type:
                Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::RecordType::OrSymbol,
              status:
                Telnyx::EmailValidations::EmailValidationBatchStatus::OrSymbol,
              total: Integer,
              completed_at: Time,
              results:
                T::Hash[
                  Symbol,
                  Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::OrHash
                ],
              webhook_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            record_type:,
            status:,
            total:,
            completed_at: nil,
            # Map keyed by original email address. Present only when the batch is completed.
            results: nil,
            webhook_url: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                record_type:
                  Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::RecordType::TaggedSymbol,
                status:
                  Telnyx::EmailValidations::EmailValidationBatchStatus::TaggedSymbol,
                total: Integer,
                completed_at: Time,
                results:
                  T::Hash[
                    Symbol,
                    Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result
                  ],
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
                  Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMAIL_VALIDATION_BATCH =
              T.let(
                :email_validation_batch,
                Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Result < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks
              )
            end
            attr_reader :checks

            sig do
              params(
                checks:
                  Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks::OrHash
              ).void
            end
            attr_writer :checks

            sig { returns(String) }
            attr_accessor :email

            sig { returns(Float) }
            attr_accessor :risk_score

            sig { returns(T::Boolean) }
            attr_accessor :valid

            # Suggested correction for typo. Omitted when nil.
            sig { returns(T.nilable(String)) }
            attr_reader :did_you_mean

            sig { params(did_you_mean: String).void }
            attr_writer :did_you_mean

            sig do
              params(
                checks:
                  Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks::OrHash,
                email: String,
                risk_score: Float,
                valid: T::Boolean,
                did_you_mean: String
              ).returns(T.attached_class)
            end
            def self.new(
              checks:,
              email:,
              risk_score:,
              valid:,
              # Suggested correction for typo. Omitted when nil.
              did_you_mean: nil
            )
            end

            sig do
              override.returns(
                {
                  checks:
                    Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks,
                  email: String,
                  risk_score: Float,
                  valid: T::Boolean,
                  did_you_mean: String
                }
              )
            end
            def to_hash
            end

            class Checks < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(Telnyx::EmailValidationCheck) }
              attr_reader :disposable

              sig do
                params(disposable: Telnyx::EmailValidationCheck::OrHash).void
              end
              attr_writer :disposable

              sig { returns(Telnyx::EmailValidationCheck) }
              attr_reader :mx

              sig { params(mx: Telnyx::EmailValidationCheck::OrHash).void }
              attr_writer :mx

              sig { returns(Telnyx::EmailValidationCheck) }
              attr_reader :role_based

              sig do
                params(role_based: Telnyx::EmailValidationCheck::OrHash).void
              end
              attr_writer :role_based

              sig { returns(Telnyx::EmailValidationCheck) }
              attr_reader :syntax

              sig { params(syntax: Telnyx::EmailValidationCheck::OrHash).void }
              attr_writer :syntax

              sig do
                returns(
                  Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks::Typo
                )
              end
              attr_reader :typo

              sig do
                params(
                  typo:
                    Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks::Typo::OrHash
                ).void
              end
              attr_writer :typo

              sig do
                params(
                  disposable: Telnyx::EmailValidationCheck::OrHash,
                  mx: Telnyx::EmailValidationCheck::OrHash,
                  role_based: Telnyx::EmailValidationCheck::OrHash,
                  syntax: Telnyx::EmailValidationCheck::OrHash,
                  typo:
                    Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks::Typo::OrHash
                ).returns(T.attached_class)
              end
              def self.new(disposable:, mx:, role_based:, syntax:, typo:)
              end

              sig do
                override.returns(
                  {
                    disposable: Telnyx::EmailValidationCheck,
                    mx: Telnyx::EmailValidationCheck,
                    role_based: Telnyx::EmailValidationCheck,
                    syntax: Telnyx::EmailValidationCheck,
                    typo:
                      Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks::Typo
                  }
                )
              end
              def to_hash
              end

              class Typo < Telnyx::Models::EmailValidationCheck
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data::Result::Checks::Typo,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Suggested correction for common typos. Omitted when nil.
                sig { returns(T.nilable(String)) }
                attr_reader :suggestion

                sig { params(suggestion: String).void }
                attr_writer :suggestion

                sig { params(suggestion: String).returns(T.attached_class) }
                def self.new(
                  # Suggested correction for common typos. Omitted when nil.
                  suggestion: nil
                )
                end

                sig { override.returns({ suggestion: String }) }
                def to_hash
                end
              end
            end
          end
        end
      end
    end
  end
end
