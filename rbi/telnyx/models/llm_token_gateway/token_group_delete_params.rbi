# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class TokenGroupDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::LlmTokenGateway::TokenGroupDeleteParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :idempotency_key

        sig { returns(String) }
        attr_accessor :if_match

        sig do
          params(
            id: String,
            idempotency_key: String,
            if_match: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, idempotency_key:, if_match:, request_options: {})
        end

        sig do
          override.returns(
            {
              id: String,
              idempotency_key: String,
              if_match: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
