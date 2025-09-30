# typed: strong

module Telnyx
  module Models
    class LedgerBillingGroupReportCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::LedgerBillingGroupReportCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::LedgerBillingGroupReport)) }
      attr_reader :data

      sig { params(data: Telnyx::LedgerBillingGroupReport::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::LedgerBillingGroupReport::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::LedgerBillingGroupReport }) }
      def to_hash
      end
    end
  end
end
