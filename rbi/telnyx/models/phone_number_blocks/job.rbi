# typed: strong

module Telnyx
  module Models
    module PhoneNumberBlocks
      class Job < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::PhoneNumberBlocks::Job, Telnyx::Internal::AnyHash)
          end

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
            T.nilable(T::Array[Telnyx::PhoneNumberBlocks::Job::FailedOperation])
          )
        end
        attr_reader :failed_operations

        sig do
          params(
            failed_operations:
              T::Array[Telnyx::PhoneNumberBlocks::Job::FailedOperation::OrHash]
          ).void
        end
        attr_writer :failed_operations

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # Indicates the completion status of the background operation.
        sig do
          returns(
            T.nilable(Telnyx::PhoneNumberBlocks::Job::Status::TaggedSymbol)
          )
        end
        attr_reader :status

        sig do
          params(status: Telnyx::PhoneNumberBlocks::Job::Status::OrSymbol).void
        end
        attr_writer :status

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::PhoneNumberBlocks::Job::SuccessfulOperation]
            )
          )
        end
        attr_reader :successful_operations

        sig do
          params(
            successful_operations:
              T::Array[
                Telnyx::PhoneNumberBlocks::Job::SuccessfulOperation::OrHash
              ]
          ).void
        end
        attr_writer :successful_operations

        # Identifies the type of the background job.
        sig do
          returns(T.nilable(Telnyx::PhoneNumberBlocks::Job::Type::TaggedSymbol))
        end
        attr_reader :type

        sig do
          params(type: Telnyx::PhoneNumberBlocks::Job::Type::OrSymbol).void
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
              T::Array[Telnyx::PhoneNumberBlocks::Job::FailedOperation::OrHash],
            record_type: String,
            status: Telnyx::PhoneNumberBlocks::Job::Status::OrSymbol,
            successful_operations:
              T::Array[
                Telnyx::PhoneNumberBlocks::Job::SuccessfulOperation::OrHash
              ],
            type: Telnyx::PhoneNumberBlocks::Job::Type::OrSymbol,
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
          # Identifies the type of the resource.
          record_type: nil,
          # Indicates the completion status of the background operation.
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
                T::Array[Telnyx::PhoneNumberBlocks::Job::FailedOperation],
              record_type: String,
              status: Telnyx::PhoneNumberBlocks::Job::Status::TaggedSymbol,
              successful_operations:
                T::Array[Telnyx::PhoneNumberBlocks::Job::SuccessfulOperation],
              type: Telnyx::PhoneNumberBlocks::Job::Type::TaggedSymbol,
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
                Telnyx::PhoneNumberBlocks::Job::FailedOperation,
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
                T::Array[Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error]
              )
            )
          end
          attr_reader :errors

          sig do
            params(
              errors:
                T::Array[
                  Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error::OrHash
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
                  Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error::OrHash
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
                    Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error
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
                  Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error,
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
                  Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error::Meta
                )
              )
            end
            attr_reader :meta

            sig do
              params(
                meta:
                  Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error::Meta::OrHash
              ).void
            end
            attr_writer :meta

            sig do
              returns(
                T.nilable(
                  Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error::Source
                )
              )
            end
            attr_reader :source

            sig do
              params(
                source:
                  Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error::Source::OrHash
              ).void
            end
            attr_writer :source

            sig do
              params(
                code: String,
                title: String,
                detail: String,
                meta:
                  Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error::Meta::OrHash,
                source:
                  Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error::Source::OrHash
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
                    Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error::Meta,
                  source:
                    Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error::Source
                }
              )
            end
            def to_hash
            end

            class Meta < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error::Meta,
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
                    Telnyx::PhoneNumberBlocks::Job::FailedOperation::Error::Source,
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

        # Indicates the completion status of the background operation.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PhoneNumberBlocks::Job::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::PhoneNumberBlocks::Job::Status::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :in_progress,
              Telnyx::PhoneNumberBlocks::Job::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::PhoneNumberBlocks::Job::Status::TaggedSymbol
            )
          FAILED =
            T.let(:failed, Telnyx::PhoneNumberBlocks::Job::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::PhoneNumberBlocks::Job::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class SuccessfulOperation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumberBlocks::Job::SuccessfulOperation,
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
            T.type_alias { T.all(Symbol, Telnyx::PhoneNumberBlocks::Job::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DELETE_PHONE_NUMBER_BLOCK =
            T.let(
              :delete_phone_number_block,
              Telnyx::PhoneNumberBlocks::Job::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::PhoneNumberBlocks::Job::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
