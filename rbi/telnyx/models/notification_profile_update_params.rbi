# typed: strong

module Telnyx
  module Models
    class NotificationProfileUpdateParams < Telnyx::Models::NotificationProfile
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::NotificationProfileUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :notification_profile_id

      sig do
        params(
          notification_profile_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(notification_profile_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            notification_profile_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
