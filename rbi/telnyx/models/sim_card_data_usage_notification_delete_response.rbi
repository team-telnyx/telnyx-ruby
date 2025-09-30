# typed: strong

module Telnyx
  module Models
    class SimCardDataUsageNotificationDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SimCardDataUsageNotificationDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # The SIM card individual data usage notification information.
      sig { returns(T.nilable(Telnyx::SimCardDataUsageNotification)) }
      attr_reader :data

      sig { params(data: Telnyx::SimCardDataUsageNotification::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::SimCardDataUsageNotification::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # The SIM card individual data usage notification information.
        data: nil
      )
      end

      sig { override.returns({ data: Telnyx::SimCardDataUsageNotification }) }
      def to_hash
      end
    end
  end
end
