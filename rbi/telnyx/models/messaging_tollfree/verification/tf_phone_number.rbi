# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        class TfPhoneNumber < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessagingTollfree::Verification::TfPhoneNumber,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :phone_number

          # A phone number
          sig { params(phone_number: String).returns(T.attached_class) }
          def self.new(phone_number:)
          end

          sig { override.returns({ phone_number: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
