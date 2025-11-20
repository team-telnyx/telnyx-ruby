# typed: strong

module Telnyx
  module Models
    module AI
      class McpServerUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::McpServerUpdateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :allowed_tools

        sig { returns(T.nilable(String)) }
        attr_accessor :api_key_ref

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            id: String,
            allowed_tools: T.nilable(T::Array[String]),
            api_key_ref: T.nilable(String),
            created_at: Time,
            name: String,
            type: String,
            url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          allowed_tools: nil,
          api_key_ref: nil,
          created_at: nil,
          name: nil,
          type: nil,
          url: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              allowed_tools: T.nilable(T::Array[String]),
              api_key_ref: T.nilable(String),
              created_at: Time,
              name: String,
              type: String,
              url: String,
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
