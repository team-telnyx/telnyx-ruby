# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantA2AAgent < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AssistantA2AAgent, Telnyx::Internal::AnyHash)
          end

        # Identifies the agent and seeds the names of the tools derived from its card
        # (`a2a_<name>_<skill_id>`). Characters outside `[A-Za-z0-9_]` are replaced with
        # `_` before the tool name is built, so two agents whose names differ only in
        # punctuation collide and are rejected.
        sig { returns(String) }
        attr_accessor :name

        # The agent's base URL, or the URL of its agent card. At most 2,048 bytes once
        # UTF-8 encoded. `/.well-known/agent-card.json` is appended to the path unless it
        # already ends in `.json`. Must be an `http://` or `https://` URL for an
        # externally reachable host: internal destinations (`localhost`, private and
        # reserved IP ranges, `.local` domains) are rejected, and the hostname may not
        # contain a `{{...}}` placeholder. Placeholders in the path are allowed.
        sig { returns(String) }
        attr_accessor :url

        # When `true`, the assistant hands the turn straight back to the model and the
        # agent's answer is delivered into the conversation once it arrives, instead of
        # the caller waiting for it in silence.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :async

        sig { params(async: T::Boolean).void }
        attr_writer :async

        # Headers sent when fetching this agent's card and on every call made to it. Use
        # them to authenticate to the agent.
        sig do
          returns(T.nilable(T::Array[Telnyx::AI::AssistantA2AAgent::Header]))
        end
        attr_reader :headers

        sig do
          params(
            headers: T::Array[Telnyx::AI::AssistantA2AAgent::Header::OrHash]
          ).void
        end
        attr_writer :headers

        # Filler messages spoken while a call to this agent is in progress.
        # `request_start` messages are spoken immediately when the call begins.
        # `request_response_delayed` messages are spoken after `timing_ms` has elapsed
        # only if the agent has not answered yet. Filler messages are not used when
        # `async` is `true`.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Telnyx::AI::AssistantA2AAgent::Message::A2AAgentRequestStartMessage,
                  Telnyx::AI::AssistantA2AAgent::Message::A2AAgentRequestResponseDelayedMessage
                )
              ]
            )
          )
        end
        attr_reader :messages

        sig do
          params(
            messages:
              T::Array[
                T.any(
                  Telnyx::AI::AssistantA2AAgent::Message::A2AAgentRequestStartMessage::OrHash,
                  Telnyx::AI::AssistantA2AAgent::Message::A2AAgentRequestResponseDelayedMessage::OrHash
                )
              ]
          ).void
        end
        attr_writer :messages

        # How often, in milliseconds, to poll an agent task that has not finished yet.
        # Defaults to 500.
        sig { returns(T.nilable(Integer)) }
        attr_reader :poll_interval_ms

        sig { params(poll_interval_ms: Integer).void }
        attr_writer :poll_interval_ms

        # Total budget, in milliseconds, for one call to this agent, including any time
        # spent polling a task that is still running. Omit to inherit the assistant's tool
        # timeout.
        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout_ms

        sig { params(timeout_ms: Integer).void }
        attr_writer :timeout_ms

        # A remote agent, reachable over the A2A (Agent2Agent) protocol, that an assistant
        # can delegate to. Tools are not configured here: at the start of every
        # conversation the agent's card is fetched and one tool is derived per skill the
        # card advertises.
        sig do
          params(
            name: String,
            url: String,
            async: T::Boolean,
            headers: T::Array[Telnyx::AI::AssistantA2AAgent::Header::OrHash],
            messages:
              T::Array[
                T.any(
                  Telnyx::AI::AssistantA2AAgent::Message::A2AAgentRequestStartMessage::OrHash,
                  Telnyx::AI::AssistantA2AAgent::Message::A2AAgentRequestResponseDelayedMessage::OrHash
                )
              ],
            poll_interval_ms: Integer,
            timeout_ms: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the agent and seeds the names of the tools derived from its card
          # (`a2a_<name>_<skill_id>`). Characters outside `[A-Za-z0-9_]` are replaced with
          # `_` before the tool name is built, so two agents whose names differ only in
          # punctuation collide and are rejected.
          name:,
          # The agent's base URL, or the URL of its agent card. At most 2,048 bytes once
          # UTF-8 encoded. `/.well-known/agent-card.json` is appended to the path unless it
          # already ends in `.json`. Must be an `http://` or `https://` URL for an
          # externally reachable host: internal destinations (`localhost`, private and
          # reserved IP ranges, `.local` domains) are rejected, and the hostname may not
          # contain a `{{...}}` placeholder. Placeholders in the path are allowed.
          url:,
          # When `true`, the assistant hands the turn straight back to the model and the
          # agent's answer is delivered into the conversation once it arrives, instead of
          # the caller waiting for it in silence.
          async: nil,
          # Headers sent when fetching this agent's card and on every call made to it. Use
          # them to authenticate to the agent.
          headers: nil,
          # Filler messages spoken while a call to this agent is in progress.
          # `request_start` messages are spoken immediately when the call begins.
          # `request_response_delayed` messages are spoken after `timing_ms` has elapsed
          # only if the agent has not answered yet. Filler messages are not used when
          # `async` is `true`.
          messages: nil,
          # How often, in milliseconds, to poll an agent task that has not finished yet.
          # Defaults to 500.
          poll_interval_ms: nil,
          # Total budget, in milliseconds, for one call to this agent, including any time
          # spent polling a task that is still running. Omit to inherit the assistant's tool
          # timeout.
          timeout_ms: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              url: String,
              async: T::Boolean,
              headers: T::Array[Telnyx::AI::AssistantA2AAgent::Header],
              messages:
                T::Array[
                  T.any(
                    Telnyx::AI::AssistantA2AAgent::Message::A2AAgentRequestStartMessage,
                    Telnyx::AI::AssistantA2AAgent::Message::A2AAgentRequestResponseDelayedMessage
                  )
                ],
              poll_interval_ms: Integer,
              timeout_ms: Integer
            }
          )
        end
        def to_hash
        end

        class Header < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantA2AAgent::Header,
                Telnyx::Internal::AnyHash
              )
            end

          # HTTP header name. May only contain alphanumeric characters, hyphens, and
          # underscores, or a `{{dynamic_variable}}` placeholder surrounded by those
          # characters.
          sig { returns(String) }
          attr_accessor :name

          # Header value, stored exactly as written. It may be a literal, a
          # `{{dynamic_variable}}`, or an
          # `{{#integration_secret}}identifier{{/integration_secret}}` section that resolves
          # to a stored integration secret when the conversation starts. Control characters
          # are not allowed. The encrypted `{{variable | encryption_secret_ref}}` form used
          # for per-caller credentials is not resolved here and is rejected when the
          # assistant is saved.
          sig { returns(String) }
          attr_accessor :value

          # A header sent when fetching an A2A agent's card and on every call made to that
          # agent.
          sig { params(name: String, value: String).returns(T.attached_class) }
          def self.new(
            # HTTP header name. May only contain alphanumeric characters, hyphens, and
            # underscores, or a `{{dynamic_variable}}` placeholder surrounded by those
            # characters.
            name:,
            # Header value, stored exactly as written. It may be a literal, a
            # `{{dynamic_variable}}`, or an
            # `{{#integration_secret}}identifier{{/integration_secret}}` section that resolves
            # to a stored integration secret when the conversation starts. Control characters
            # are not allowed. The encrypted `{{variable | encryption_secret_ref}}` form used
            # for per-caller credentials is not resolved here and is rejected when the
            # assistant is saved.
            value:
          )
          end

          sig { override.returns({ name: String, value: String }) }
          def to_hash
          end
        end

        module Message
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantA2AAgent::Message::A2AAgentRequestStartMessage,
                Telnyx::AI::AssistantA2AAgent::Message::A2AAgentRequestResponseDelayedMessage
              )
            end

          class A2AAgentRequestStartMessage < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::AssistantA2AAgent::Message::A2AAgentRequestStartMessage,
                  Telnyx::Internal::AnyHash
                )
              end

            # The text the assistant speaks.
            sig { returns(String) }
            attr_accessor :content

            # Speak the filler message immediately when the call to the agent begins.
            sig { returns(Symbol) }
            attr_accessor :type

            # An optional delay value. This value is ignored for `request_start` messages.
            sig { returns(T.nilable(Integer)) }
            attr_reader :timing_ms

            sig { params(timing_ms: Integer).void }
            attr_writer :timing_ms

            sig do
              params(content: String, timing_ms: Integer, type: Symbol).returns(
                T.attached_class
              )
            end
            def self.new(
              # The text the assistant speaks.
              content:,
              # An optional delay value. This value is ignored for `request_start` messages.
              timing_ms: nil,
              # Speak the filler message immediately when the call to the agent begins.
              type: :request_start
            )
            end

            sig do
              override.returns(
                { content: String, type: Symbol, timing_ms: Integer }
              )
            end
            def to_hash
            end
          end

          class A2AAgentRequestResponseDelayedMessage < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::AssistantA2AAgent::Message::A2AAgentRequestResponseDelayedMessage,
                  Telnyx::Internal::AnyHash
                )
              end

            # The text the assistant speaks.
            sig { returns(String) }
            attr_accessor :content

            # How long to wait, in milliseconds, before speaking this message.
            sig { returns(Integer) }
            attr_accessor :timing_ms

            # Speak the filler message only if the agent has not answered yet after
            # `timing_ms`.
            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(content: String, timing_ms: Integer, type: Symbol).returns(
                T.attached_class
              )
            end
            def self.new(
              # The text the assistant speaks.
              content:,
              # How long to wait, in milliseconds, before speaking this message.
              timing_ms:,
              # Speak the filler message only if the agent has not answered yet after
              # `timing_ms`.
              type: :request_response_delayed
            )
            end

            sig do
              override.returns(
                { content: String, timing_ms: Integer, type: Symbol }
              )
            end
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[Telnyx::AI::AssistantA2AAgent::Message::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
