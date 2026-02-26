# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      class PhoneNumberAssignmentByProfileListPhoneNumberStatusResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Messaging10dlc::PhoneNumberAssignmentByProfileListPhoneNumberStatusResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[Telnyx::Messaging10dlc::ProfileAssignmentPhoneNumbers]
          )
        end
        attr_accessor :records

        sig do
          params(
            records:
              T::Array[
                Telnyx::Messaging10dlc::ProfileAssignmentPhoneNumbers::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(records:)
        end

        sig do
          override.returns(
            {
              records:
                T::Array[Telnyx::Messaging10dlc::ProfileAssignmentPhoneNumbers]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
