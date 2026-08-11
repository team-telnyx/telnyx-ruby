# typed: strong

module Telnyx
  module Models
    module Rcs
      class EinBrandIdentifier < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::EinBrandIdentifier, Telnyx::Internal::AnyHash)
          end

        sig { returns(Symbol) }
        attr_accessor :identifier_type

        # Nine digits, optionally formatted as NN-NNNNNNN.
        sig { returns(String) }
        attr_accessor :value

        sig do
          params(value: String, identifier_type: Symbol).returns(
            T.attached_class
          )
        end
        def self.new(
          # Nine digits, optionally formatted as NN-NNNNNNN.
          value:,
          identifier_type: :EIN
        )
        end

        sig { override.returns({ identifier_type: Symbol, value: String }) }
        def to_hash
        end
      end
    end
  end
end
