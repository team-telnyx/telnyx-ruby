# typed: strong

module Telnyx
  module Models
    class EnterpriseRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::EnterpriseRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::EnterprisePublic) }
      attr_reader :data

      sig { params(data: Telnyx::EnterprisePublic::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::EnterprisePublic::OrHash).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({ data: Telnyx::EnterprisePublic }) }
      def to_hash
      end
    end
  end
end
