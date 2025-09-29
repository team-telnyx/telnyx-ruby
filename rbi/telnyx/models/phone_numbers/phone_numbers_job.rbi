# typed: strong

module Telnyx
  module Models
    PhoneNumbersJob = PhoneNumbers::PhoneNumbersJob

    module PhoneNumbers
      class PhoneNumbersJob < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::PhoneNumbersJob,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::PhoneNumbers::PhoneNumbersJob::PhoneNumber]
            )
          )
        end
        attr_reader :phone_numbers

        sig do
          params(
            phone_numbers:
              T::Array[
                Telnyx::PhoneNumbers::PhoneNumbersJob::PhoneNumber::OrHash
              ]
          ).void
        end
        attr_writer :phone_numbers

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # ISO 8601 formatted date indicating when the estimated time of completion of the
        # background job.
        sig { returns(T.nilable(Time)) }
        attr_reader :etc

        sig { params(etc: Time).void }
        attr_writer :etc

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation]
            )
          )
        end
        attr_reader :failed_operations

        sig do
          params(
            failed_operations:
              T::Array[
                Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::OrHash
              ]
          ).void
        end
        attr_writer :failed_operations

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::PhoneNumbers::PhoneNumbersJob::PendingOperation]
            )
          )
        end
        attr_reader :pending_operations

        sig do
          params(
            pending_operations:
              T::Array[
                Telnyx::PhoneNumbers::PhoneNumbersJob::PendingOperation::OrHash
              ]
          ).void
        end
        attr_writer :pending_operations

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # Indicates the completion status of the background update.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumbers::PhoneNumbersJob::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::PhoneNumbers::PhoneNumbersJob::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::PhoneNumbers::PhoneNumbersJob::SuccessfulOperation
              ]
            )
          )
        end
        attr_reader :successful_operations

        sig do
          params(
            successful_operations:
              T::Array[
                Telnyx::PhoneNumbers::PhoneNumbersJob::SuccessfulOperation::OrHash
              ]
          ).void
        end
        attr_writer :successful_operations

        # Identifies the type of the background job.
        sig do
          returns(
            T.nilable(Telnyx::PhoneNumbers::PhoneNumbersJob::Type::TaggedSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: Telnyx::PhoneNumbers::PhoneNumbersJob::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # ISO 8601 formatted date indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            created_at: String,
            etc: Time,
            failed_operations:
              T::Array[
                Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::OrHash
              ],
            pending_operations:
              T::Array[
                Telnyx::PhoneNumbers::PhoneNumbersJob::PendingOperation::OrHash
              ],
            phone_numbers:
              T::Array[
                Telnyx::PhoneNumbers::PhoneNumbersJob::PhoneNumber::OrHash
              ],
            record_type: String,
            status: Telnyx::PhoneNumbers::PhoneNumbersJob::Status::OrSymbol,
            successful_operations:
              T::Array[
                Telnyx::PhoneNumbers::PhoneNumbersJob::SuccessfulOperation::OrHash
              ],
            type: Telnyx::PhoneNumbers::PhoneNumbersJob::Type::OrSymbol,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # ISO 8601 formatted date indicating when the estimated time of completion of the
          # background job.
          etc: nil,
          failed_operations: nil,
          pending_operations: nil,
          phone_numbers: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # Indicates the completion status of the background update.
          status: nil,
          successful_operations: nil,
          # Identifies the type of the background job.
          type: nil,
          # ISO 8601 formatted date indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              etc: Time,
              failed_operations:
                T::Array[
                  Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation
                ],
              pending_operations:
                T::Array[
                  Telnyx::PhoneNumbers::PhoneNumbersJob::PendingOperation
                ],
              phone_numbers:
                T::Array[Telnyx::PhoneNumbers::PhoneNumbersJob::PhoneNumber],
              record_type: String,
              status:
                Telnyx::PhoneNumbers::PhoneNumbersJob::Status::TaggedSymbol,
              successful_operations:
                T::Array[
                  Telnyx::PhoneNumbers::PhoneNumbersJob::SuccessfulOperation
                ],
              type: Telnyx::PhoneNumbers::PhoneNumbersJob::Type::TaggedSymbol,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        class FailedOperation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation,
                Telnyx::Internal::AnyHash
              )
            end

          # The phone number's ID
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error
                ]
              )
            )
          end
          attr_reader :errors

          sig do
            params(
              errors:
                T::Array[
                  Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error::OrHash
                ]
            ).void
          end
          attr_writer :errors

          # The phone number in e164 format.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          sig do
            params(
              id: String,
              errors:
                T::Array[
                  Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error::OrHash
                ],
              phone_number: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The phone number's ID
            id: nil,
            errors: nil,
            # The phone number in e164 format.
            phone_number: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                errors:
                  T::Array[
                    Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error
                  ],
                phone_number: String
              }
            )
          end
          def to_hash
          end

          class Error < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :code

            sig { returns(String) }
            attr_accessor :title

            sig { returns(T.nilable(String)) }
            attr_reader :detail

            sig { params(detail: String).void }
            attr_writer :detail

            sig do
              returns(
                T.nilable(
                  Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error::Meta
                )
              )
            end
            attr_reader :meta

            sig do
              params(
                meta:
                  Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error::Meta::OrHash
              ).void
            end
            attr_writer :meta

            sig do
              returns(
                T.nilable(
                  Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error::Source
                )
              )
            end
            attr_reader :source

            sig do
              params(
                source:
                  Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error::Source::OrHash
              ).void
            end
            attr_writer :source

            sig do
              params(
                code: String,
                title: String,
                detail: String,
                meta:
                  Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error::Meta::OrHash,
                source:
                  Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error::Source::OrHash
              ).returns(T.attached_class)
            end
            def self.new(code:, title:, detail: nil, meta: nil, source: nil)
            end

            sig do
              override.returns(
                {
                  code: String,
                  title: String,
                  detail: String,
                  meta:
                    Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error::Meta,
                  source:
                    Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error::Source
                }
              )
            end
            def to_hash
            end

            class Meta < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error::Meta,
                    Telnyx::Internal::AnyHash
                  )
                end

              # URL with additional information on the error.
              sig { returns(T.nilable(String)) }
              attr_reader :url

              sig { params(url: String).void }
              attr_writer :url

              sig { params(url: String).returns(T.attached_class) }
              def self.new(
                # URL with additional information on the error.
                url: nil
              )
              end

              sig { override.returns({ url: String }) }
              def to_hash
              end
            end

            class Source < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation::Error::Source,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Indicates which query parameter caused the error.
              sig { returns(T.nilable(String)) }
              attr_reader :parameter

              sig { params(parameter: String).void }
              attr_writer :parameter

              # JSON pointer (RFC6901) to the offending entity.
              sig { returns(T.nilable(String)) }
              attr_reader :pointer

              sig { params(pointer: String).void }
              attr_writer :pointer

              sig do
                params(parameter: String, pointer: String).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Indicates which query parameter caused the error.
                parameter: nil,
                # JSON pointer (RFC6901) to the offending entity.
                pointer: nil
              )
              end

              sig { override.returns({ parameter: String, pointer: String }) }
              def to_hash
              end
            end
          end
        end

        class PendingOperation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumbers::PhoneNumbersJob::PendingOperation,
                Telnyx::Internal::AnyHash
              )
            end

          # The phone number's ID
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The phone number in e164 format.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # The phone numbers pending confirmation on update results. Entries in this list
          # are transient, and will be moved to either successful_operations or
          # failed_operations once the processing is done.
          sig do
            params(id: String, phone_number: String).returns(T.attached_class)
          end
          def self.new(
            # The phone number's ID
            id: nil,
            # The phone number in e164 format.
            phone_number: nil
          )
          end

          sig { override.returns({ id: String, phone_number: String }) }
          def to_hash
          end
        end

        class PhoneNumber < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumbers::PhoneNumbersJob::PhoneNumber,
                Telnyx::Internal::AnyHash
              )
            end

          # The phone number's ID
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The phone number in e164 format.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # The unique phone numbers given as arguments in the job creation.
          sig do
            params(id: String, phone_number: String).returns(T.attached_class)
          end
          def self.new(
            # The phone number's ID
            id: nil,
            # The phone number in e164 format.
            phone_number: nil
          )
          end

          sig { override.returns({ id: String, phone_number: String }) }
          def to_hash
          end
        end

        # Indicates the completion status of the background update.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PhoneNumbers::PhoneNumbersJob::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::PhoneNumbers::PhoneNumbersJob::Status::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :in_progress,
              Telnyx::PhoneNumbers::PhoneNumbersJob::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::PhoneNumbers::PhoneNumbersJob::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::PhoneNumbers::PhoneNumbersJob::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Telnyx::PhoneNumbers::PhoneNumbersJob::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::PhoneNumbersJob::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class SuccessfulOperation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumbers::PhoneNumbersJob::SuccessfulOperation,
                Telnyx::Internal::AnyHash
              )
            end

          # The phone number's ID
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The phone number in e164 format.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # The phone numbers successfully updated.
          sig do
            params(id: String, phone_number: String).returns(T.attached_class)
          end
          def self.new(
            # The phone number's ID
            id: nil,
            # The phone number in e164 format.
            phone_number: nil
          )
          end

          sig { override.returns({ id: String, phone_number: String }) }
          def to_hash
          end
        end

        # Identifies the type of the background job.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PhoneNumbers::PhoneNumbersJob::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UPDATE_EMERGENCY_SETTINGS =
            T.let(
              :update_emergency_settings,
              Telnyx::PhoneNumbers::PhoneNumbersJob::Type::TaggedSymbol
            )
          DELETE_PHONE_NUMBERS =
            T.let(
              :delete_phone_numbers,
              Telnyx::PhoneNumbers::PhoneNumbersJob::Type::TaggedSymbol
            )
          UPDATE_PHONE_NUMBERS =
            T.let(
              :update_phone_numbers,
              Telnyx::PhoneNumbers::PhoneNumbersJob::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::PhoneNumbersJob::Type::TaggedSymbol
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
