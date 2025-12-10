# typed: strong

module Telnyx
  module Models
    module Number10dlc
      class PhoneNumberAssignmentByProfileRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # An enumeration.
        sig do
          returns(
            Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrieveResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(String) }
        attr_accessor :task_id

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            status:
              Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrieveResponse::Status::OrSymbol,
            task_id: String,
            created_at: Time,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # An enumeration.
          status:,
          task_id:,
          created_at: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              status:
                Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrieveResponse::Status::TaggedSymbol,
              task_id: String,
              created_at: Time,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # An enumeration.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrieveResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrieveResponse::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :processing,
              Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrieveResponse::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrieveResponse::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrieveResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrieveResponse::Status::TaggedSymbol
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
