# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class PhoneNumberRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnections::PhoneNumberRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::ExternalConnections::ExternalConnectionPhoneNumber
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::ExternalConnections::ExternalConnectionPhoneNumber }
          )
        end
        def to_hash
        end
      end
    end
  end
end
