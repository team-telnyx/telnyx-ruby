# typed: strong

module Telnyx
  module Models
    module AI
      class ToolUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ToolUpdateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :tool_id

        sig { returns(T.nilable(String)) }
        attr_reader :display_name

        sig { params(display_name: String).void }
        attr_writer :display_name

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :function

        sig { params(function: T::Hash[Symbol, T.anything]).void }
        attr_writer :function

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :handoff

        sig { params(handoff: T::Hash[Symbol, T.anything]).void }
        attr_writer :handoff

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :invite

        sig { params(invite: T::Hash[Symbol, T.anything]).void }
        attr_writer :invite

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :retrieval

        sig { params(retrieval: T::Hash[Symbol, T.anything]).void }
        attr_writer :retrieval

        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout_ms

        sig { params(timeout_ms: Integer).void }
        attr_writer :timeout_ms

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :webhook

        sig { params(webhook: T::Hash[Symbol, T.anything]).void }
        attr_writer :webhook

        sig do
          params(
            tool_id: String,
            display_name: String,
            function: T::Hash[Symbol, T.anything],
            handoff: T::Hash[Symbol, T.anything],
            invite: T::Hash[Symbol, T.anything],
            retrieval: T::Hash[Symbol, T.anything],
            timeout_ms: Integer,
            type: String,
            webhook: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          tool_id:,
          display_name: nil,
          function: nil,
          handoff: nil,
          invite: nil,
          retrieval: nil,
          timeout_ms: nil,
          type: nil,
          webhook: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              tool_id: String,
              display_name: String,
              function: T::Hash[Symbol, T.anything],
              handoff: T::Hash[Symbol, T.anything],
              invite: T::Hash[Symbol, T.anything],
              retrieval: T::Hash[Symbol, T.anything],
              timeout_ms: Integer,
              type: String,
              webhook: T::Hash[Symbol, T.anything],
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
