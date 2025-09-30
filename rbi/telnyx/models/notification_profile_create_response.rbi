# typed: strong

module Telnyx
  module Models
    class NotificationProfileCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NotificationProfileCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # A Collection of Notification Channels
      sig { returns(T.nilable(Telnyx::NotificationProfile)) }
      attr_reader :data

      sig { params(data: Telnyx::NotificationProfile::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::NotificationProfile::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # A Collection of Notification Channels
        data: nil
      )
      end

      sig { override.returns({ data: Telnyx::NotificationProfile }) }
      def to_hash
      end
    end
  end
end
