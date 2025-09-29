# typed: strong

module Telnyx
  module Models
    module SimCards
      class ActionValidateRegistrationCodesResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SimCards::ActionValidateRegistrationCodesResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::SimCards::ActionValidateRegistrationCodesResponse::Data
              ]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::SimCards::ActionValidateRegistrationCodesResponse::Data::OrHash
              ]
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::SimCards::ActionValidateRegistrationCodesResponse::Data::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::SimCards::ActionValidateRegistrationCodesResponse::Data
                ]
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SimCards::ActionValidateRegistrationCodesResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # The validation message
          sig { returns(T.nilable(String)) }
          attr_accessor :invalid_detail

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          # The 10-digit SIM card registration code
          sig { returns(T.nilable(String)) }
          attr_reader :registration_code

          sig { params(registration_code: String).void }
          attr_writer :registration_code

          # The attribute that denotes whether the code is valid or not
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :valid

          sig { params(valid: T::Boolean).void }
          attr_writer :valid

          sig do
            params(
              invalid_detail: T.nilable(String),
              record_type: String,
              registration_code: String,
              valid: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # The validation message
            invalid_detail: nil,
            record_type: nil,
            # The 10-digit SIM card registration code
            registration_code: nil,
            # The attribute that denotes whether the code is valid or not
            valid: nil
          )
          end

          sig do
            override.returns(
              {
                invalid_detail: T.nilable(String),
                record_type: String,
                registration_code: String,
                valid: T::Boolean
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
