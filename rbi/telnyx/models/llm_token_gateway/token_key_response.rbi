# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class TokenKeyResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::LlmTokenGateway::TokenKeyResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::LlmTokenGateway::TokenKey) }
        attr_reader :data

        sig { params(data: Telnyx::LlmTokenGateway::TokenKey::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::LlmTokenGateway::TokenKey::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: Telnyx::LlmTokenGateway::TokenKey }) }
        def to_hash
        end
      end
    end
  end
end
