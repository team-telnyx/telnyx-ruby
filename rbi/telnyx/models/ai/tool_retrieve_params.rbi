# typed: strong

module Telnyx
  module Models
    module AI
      class ToolRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ToolRetrieveParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :tool_id

        sig do
          params(
            tool_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(tool_id:, request_options: {})
        end

        sig do
          override.returns(
            { tool_id: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
