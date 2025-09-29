# typed: strong

module Telnyx
  module Models
    module Messaging
      class RcRetrieveCapabilitiesResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Messaging::RcRetrieveCapabilitiesResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Messaging::RcsCapabilities)) }
        attr_reader :data

        sig { params(data: Telnyx::Messaging::RcsCapabilities::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Messaging::RcsCapabilities::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::Messaging::RcsCapabilities }) }
        def to_hash
        end
      end
    end
  end
end
