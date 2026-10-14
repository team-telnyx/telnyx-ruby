# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class TokenGroupResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::LlmTokenGateway::TokenGroupResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::LlmTokenGateway::TokenGroup) }
        attr_reader :data

        sig { params(data: Telnyx::LlmTokenGateway::TokenGroup::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::LlmTokenGateway::TokenGroup::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: Telnyx::LlmTokenGateway::TokenGroup }) }
        def to_hash
        end
      end
    end
  end
end
