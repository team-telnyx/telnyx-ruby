# typed: strong

module Telnyx
  module Models
    module AI
      class McpServerCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::McpServerCreateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :url

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :allowed_tools

        sig { returns(T.nilable(String)) }
        attr_accessor :api_key_ref

        sig do
          params(
            name: String,
            type: String,
            url: String,
            allowed_tools: T.nilable(T::Array[String]),
            api_key_ref: T.nilable(String),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          name:,
          type:,
          url:,
          allowed_tools: nil,
          api_key_ref: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: String,
              type: String,
              url: String,
              allowed_tools: T.nilable(T::Array[String]),
              api_key_ref: T.nilable(String),
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
