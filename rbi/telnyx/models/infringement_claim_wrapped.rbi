# typed: strong

module Telnyx
  module Models
    class InfringementClaimWrapped < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::InfringementClaimWrapped, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::InfringementClaim) }
      attr_reader :data

      sig { params(data: Telnyx::InfringementClaim::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::InfringementClaim::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: Telnyx::InfringementClaim }) }
      def to_hash
      end
    end
  end
end
