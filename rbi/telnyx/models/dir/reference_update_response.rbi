# typed: strong

module Telnyx
  module Models
    module Dir
      class ReferenceUpdateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Dir::ReferenceUpdateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # A reference (business or financial) on a DIR, in the customer-facing shape. No
        # internal identifiers are exposed.
        sig { returns(Telnyx::Dir::Reference) }
        attr_reader :data

        sig { params(data: Telnyx::Dir::Reference::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Dir::Reference::OrHash).returns(T.attached_class)
        end
        def self.new(
          # A reference (business or financial) on a DIR, in the customer-facing shape. No
          # internal identifiers are exposed.
          data:
        )
        end

        sig { override.returns({ data: Telnyx::Dir::Reference }) }
        def to_hash
        end
      end
    end
  end
end
