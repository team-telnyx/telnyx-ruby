# typed: strong

module Telnyx
  module Models
    class NotificationSettingDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NotificationSettingDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::NotificationSetting)) }
      attr_reader :data

      sig { params(data: Telnyx::NotificationSetting::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::NotificationSetting::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::NotificationSetting }) }
      def to_hash
      end
    end
  end
end
