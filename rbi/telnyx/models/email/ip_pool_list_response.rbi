# typed: strong

module Telnyx
  module Models
    module Email
      class IPPoolListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Email::IPPoolListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::Email::IPPool]) }
        attr_accessor :data

        sig do
          params(data: T::Array[Telnyx::Email::IPPool::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: T::Array[Telnyx::Email::IPPool] }) }
        def to_hash
        end
      end
    end
  end
end
