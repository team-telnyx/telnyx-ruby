# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class ActionVerifyOwnershipResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # The list of phone numbers which you own and are in an editable state
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data::Found
                ]
              )
            )
          end
          attr_reader :found

          sig do
            params(
              found:
                T::Array[
                  Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data::Found::OrHash
                ]
            ).void
          end
          attr_writer :found

          # Phone numbers that are not found in the account
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :not_found

          sig { params(not_found: T::Array[String]).void }
          attr_writer :not_found

          # Identifies the type of the resource.
          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig do
            params(
              found:
                T::Array[
                  Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data::Found::OrHash
                ],
              not_found: T::Array[String],
              record_type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The list of phone numbers which you own and are in an editable state
            found: nil,
            # Phone numbers that are not found in the account
            not_found: nil,
            # Identifies the type of the resource.
            record_type: nil
          )
          end

          sig do
            override.returns(
              {
                found:
                  T::Array[
                    Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data::Found
                  ],
                not_found: T::Array[String],
                record_type: String
              }
            )
          end
          def to_hash
          end

          class Found < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data::Found,
                  Telnyx::Internal::AnyHash
                )
              end

            # The phone number in E.164 format
            sig { returns(T.nilable(String)) }
            attr_reader :number_val_e164

            sig { params(number_val_e164: String).void }
            attr_writer :number_val_e164

            # Identifies the resource.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig do
              params(id: String, number_val_e164: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Identifies the resource.
              id: nil,
              # The phone number in E.164 format
              number_val_e164: nil
            )
            end

            sig { override.returns({ id: String, number_val_e164: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
