# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      class BrandOptionalAttributes < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Messaging10dlc::BrandOptionalAttributes,
              Telnyx::Internal::AnyHash
            )
          end

        # The tax exempt status of the brand
        sig { returns(T.nilable(String)) }
        attr_reader :tax_exempt_status

        sig { params(tax_exempt_status: String).void }
        attr_writer :tax_exempt_status

        sig { params(tax_exempt_status: String).returns(T.attached_class) }
        def self.new(
          # The tax exempt status of the brand
          tax_exempt_status: nil
        )
        end

        sig { override.returns({ tax_exempt_status: String }) }
        def to_hash
        end
      end
    end
  end
end
