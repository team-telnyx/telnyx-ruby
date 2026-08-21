# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantCloneParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AssistantCloneParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :assistant_id

        sig { returns(T.nilable(String)) }
        attr_reader :idempotency_key

        sig { params(idempotency_key: String).void }
        attr_writer :idempotency_key

        sig do
          params(
            assistant_id: String,
            idempotency_key: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(assistant_id:, idempotency_key: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              assistant_id: String,
              idempotency_key: String,
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
