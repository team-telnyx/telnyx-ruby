# typed: strong

module Telnyx
  module Models
    class MessagingNumbersBulkUpdateRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::BulkMessagingSettingsUpdatePhoneNumbers))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::BulkMessagingSettingsUpdatePhoneNumbers::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::BulkMessagingSettingsUpdatePhoneNumbers::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::BulkMessagingSettingsUpdatePhoneNumbers }
        )
      end
      def to_hash
      end
    end
  end
end
