# typed: strong

module Telnyx
  module Models
    module Messaging
      class RcListBulkCapabilitiesResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Messaging::RcListBulkCapabilitiesResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[Telnyx::Messaging::RcsCapabilities])) }
        attr_reader :data

        sig do
          params(
            data: T::Array[Telnyx::Messaging::RcsCapabilities::OrHash]
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: T::Array[Telnyx::Messaging::RcsCapabilities::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::Messaging::RcsCapabilities] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
