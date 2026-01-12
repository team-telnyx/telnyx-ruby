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
      attr_accessor :billing_group_id

      # identifies the connection to set on the numbers when ported
      sig { returns(T.nilable(String)) }
      attr_accessor :connection_id

      # identifies the emergency address to set on the numbers when ported
      sig { returns(T.nilable(String)) }
      attr_accessor :emergency_address_id

      # identifies the messaging profile to set on the numbers when ported
      sig { returns(T.nilable(String)) }
      attr_accessor :messaging_profile_id

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      sig do
        params(
          billing_group_id: T.nilable(String),
          connection_id: T.nilable(String),
          emergency_address_id: T.nilable(String),
          messaging_profile_id: T.nilable(String),
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
            billing_group_id: T.nilable(String),
            connection_id: T.nilable(String),
            emergency_address_id: T.nilable(String),
            messaging_profile_id: T.nilable(String),
            tags: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
