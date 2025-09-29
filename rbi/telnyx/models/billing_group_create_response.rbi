# typed: strong

module Telnyx
  module Models
    class BillingGroupCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::BillingGroupCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::BillingGroup)) }
      attr_reader :data

      sig { params(data: Telnyx::BillingGroup::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::BillingGroup::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::BillingGroup }) }
      def to_hash
      end
    end
  end
end
