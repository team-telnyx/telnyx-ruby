# typed: strong

module Telnyx
  module Models
    class PortingOrderPhoneNumberConfiguration < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PortingOrderPhoneNumberConfiguration,
            Telnyx::Internal::AnyHash
          )
        end

      # identifies the billing group to set on the numbers when ported
      sig { returns(T.nilable(String)) }
      attr_reader :billing_group_id

      sig { params(billing_group_id: String).void }
      attr_writer :billing_group_id

      # identifies the connection to set on the numbers when ported
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      # identifies the emergency address to set on the numbers when ported
      sig { returns(T.nilable(String)) }
      attr_reader :emergency_address_id

      sig { params(emergency_address_id: String).void }
      attr_writer :emergency_address_id

      # identifies the messaging profile to set on the numbers when ported
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_profile_id

      sig { params(messaging_profile_id: String).void }
      attr_writer :messaging_profile_id

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      sig do
        params(
          billing_group_id: String,
          connection_id: String,
          emergency_address_id: String,
          messaging_profile_id: String,
          tags: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # identifies the billing group to set on the numbers when ported
        billing_group_id: nil,
        # identifies the connection to set on the numbers when ported
        connection_id: nil,
        # identifies the emergency address to set on the numbers when ported
        emergency_address_id: nil,
        # identifies the messaging profile to set on the numbers when ported
        messaging_profile_id: nil,
        tags: nil
      )
      end

      sig do
        override.returns(
          {
            billing_group_id: String,
            connection_id: String,
            emergency_address_id: String,
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
