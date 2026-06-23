# typed: strong

module Telnyx
  module Models
    class UpdatePhoneNumberMessagingSettingsRequest < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::UpdatePhoneNumberMessagingSettingsRequest,
            Telnyx::Internal::AnyHash
          )
        end

      # Configure the messaging product for this number:
      #
      # - Omit this field or set its value to `null` to keep the current value.
      # - Set this field to a quoted product ID to set this phone number to that product
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_product

      sig { params(messaging_product: String).void }
      attr_writer :messaging_product

      # Configure the messaging profile this phone number is assigned to:
      #
      # - Omit this field or set its value to `null` to keep the current value.
      # - Set this field to `""` to unassign the number from its messaging profile
      # - Set this field to a quoted UUID of a messaging profile to assign this number
      #   to that messaging profile
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_profile_id

      sig { params(messaging_profile_id: String).void }
      attr_writer :messaging_profile_id

      # Tags to set on this phone number.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      sig do
        params(
          messaging_product: String,
          messaging_profile_id: String,
          tags: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Configure the messaging product for this number:
        #
        # - Omit this field or set its value to `null` to keep the current value.
        # - Set this field to a quoted product ID to set this phone number to that product
        messaging_product: nil,
        # Configure the messaging profile this phone number is assigned to:
        #
        # - Omit this field or set its value to `null` to keep the current value.
        # - Set this field to `""` to unassign the number from its messaging profile
        # - Set this field to a quoted UUID of a messaging profile to assign this number
        #   to that messaging profile
        messaging_profile_id: nil,
        # Tags to set on this phone number.
        tags: nil
      )
      end

      sig do
        override.returns(
          {
            messaging_product: String,
            messaging_profile_id: String,
            tags: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
