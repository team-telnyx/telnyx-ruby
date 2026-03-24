# typed: strong

module Telnyx
  module Models
    module AI
      class ToolCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ToolCreateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :display_name

        sig { returns(String) }
        attr_accessor :type

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

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :webhook

        sig { params(webhook: T::Hash[Symbol, T.anything]).void }
        attr_writer :webhook

        sig do
          params(
            display_name: String,
            type: String,
            function: T::Hash[Symbol, T.anything],
            handoff: T::Hash[Symbol, T.anything],
            invite: T::Hash[Symbol, T.anything],
            retrieval: T::Hash[Symbol, T.anything],
            timeout_ms: Integer,
            webhook: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          display_name:,
          type:,
          function: nil,
          handoff: nil,
          invite: nil,
          retrieval: nil,
          timeout_ms: nil,
          webhook: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              display_name: String,
              type: String,
              function: T::Hash[Symbol, T.anything],
              handoff: T::Hash[Symbol, T.anything],
              invite: T::Hash[Symbol, T.anything],
              retrieval: T::Hash[Symbol, T.anything],
              timeout_ms: Integer,
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
