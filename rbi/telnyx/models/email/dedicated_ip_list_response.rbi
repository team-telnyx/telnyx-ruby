# typed: strong

module Telnyx
  module Models
    module Email
      class DedicatedIPListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Email::DedicatedIPListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::Email::DedicatedIP]) }
        attr_accessor :data

        sig do
          params(data: T::Array[Telnyx::Email::DedicatedIP::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: T::Array[Telnyx::Email::DedicatedIP] }) }
        def to_hash
        end
      end
    end
  end
end
