# typed: strong

module Telnyx
  module Models
    class NotificationChannelRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NotificationChannelRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # A Notification Channel
      sig { returns(T.nilable(Telnyx::NotificationChannel)) }
      attr_reader :data

      sig { params(data: Telnyx::NotificationChannel::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::NotificationChannel::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # A Notification Channel
        data: nil
      )
      end

      sig { override.returns({ data: Telnyx::NotificationChannel }) }
      def to_hash
      end
    end
  end
end
