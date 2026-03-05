# typed: strong

module Telnyx
  module Models
    class NotificationChannelUpdateParams < Telnyx::Models::NotificationChannel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::NotificationChannelUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :notification_channel_id

      sig do
        params(
          notification_channel_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(notification_channel_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            notification_channel_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
