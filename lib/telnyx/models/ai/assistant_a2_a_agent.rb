# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class AssistantA2AAgent < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #   Identifies the agent and seeds the names of the tools derived from its card
        #   (`a2a_<name>_<skill_id>`). Characters outside `[A-Za-z0-9_]` are replaced with
        #   `_` before the tool name is built, so two agents whose names differ only in
        #   punctuation collide and are rejected.
        #
        #   @return [String]
        required :name, String

        # @!attribute url
        #   The agent's base URL, or the URL of its agent card. At most 2,048 bytes once
        #   UTF-8 encoded. `/.well-known/agent-card.json` is appended to the path unless it
        #   already ends in `.json`. Must be an `http://` or `https://` URL for an
        #   externally reachable host: internal destinations (`localhost`, private and
        #   reserved IP ranges, `.local` domains) are rejected, and the hostname may not
        #   contain a `{{...}}` placeholder. Placeholders in the path are allowed.
        #
        #   @return [String]
        required :url, String

        # @!attribute async
        #   When `true`, the assistant hands the turn straight back to the model and the
        #   agent's answer is delivered into the conversation once it arrives, instead of
        #   the caller waiting for it in silence.
        #
        #   @return [Boolean, nil]
        optional :async, Telnyx::Internal::Type::Boolean

        # @!attribute headers
        #   Headers sent when fetching this agent's card and on every call made to it. Use
        #   them to authenticate to the agent.
        #
        #   @return [Array<Telnyx::Models::AI::AssistantA2AAgent::Header>, nil]
        optional :headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AssistantA2AAgent::Header] }

        # @!attribute messages
        #   Filler messages spoken while a call to this agent is in progress.
        #   `request_start` messages are spoken immediately when the call begins.
        #   `request_response_delayed` messages are spoken after `timing_ms` has elapsed
        #   only if the agent has not answered yet. Filler messages are not used when
        #   `async` is `true`.
        #
        #   @return [Array<Telnyx::Models::AI::AssistantA2AAgent::Message::A2AAgentRequestStartMessage, Telnyx::Models::AI::AssistantA2AAgent::Message::A2AAgentRequestResponseDelayedMessage>, nil]
        optional :messages, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::AssistantA2AAgent::Message] }

        # @!attribute poll_interval_ms
        #   How often, in milliseconds, to poll an agent task that has not finished yet.
        #   Defaults to 500.
        #
        #   @return [Integer, nil]
        optional :poll_interval_ms, Integer

        # @!attribute timeout_ms
        #   Total budget, in milliseconds, for one call to this agent, including any time
        #   spent polling a task that is still running. Omit to inherit the assistant's tool
        #   timeout.
        #
        #   @return [Integer, nil]
        optional :timeout_ms, Integer

        # @!method initialize(name:, url:, async: nil, headers: nil, messages: nil, poll_interval_ms: nil, timeout_ms: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AssistantA2AAgent} for more details.
        #
        #   A remote agent, reachable over the A2A (Agent2Agent) protocol, that an assistant
        #   can delegate to. Tools are not configured here: at the start of every
        #   conversation the agent's card is fetched and one tool is derived per skill the
        #   card advertises.
        #
        #   @param name [String] Identifies the agent and seeds the names of the tools derived from its card (`a2
        #
        #   @param url [String] The agent's base URL, or the URL of its agent card. At most 2,048 bytes once UTF
        #
        #   @param async [Boolean] When `true`, the assistant hands the turn straight back to the model and the age
        #
        #   @param headers [Array<Telnyx::Models::AI::AssistantA2AAgent::Header>] Headers sent when fetching this agent's card and on every call made to it. Use t
        #
        #   @param messages [Array<Telnyx::Models::AI::AssistantA2AAgent::Message::A2AAgentRequestStartMessage, Telnyx::Models::AI::AssistantA2AAgent::Message::A2AAgentRequestResponseDelayedMessage>] Filler messages spoken while a call to this agent is in progress. `request_start
        #
        #   @param poll_interval_ms [Integer] How often, in milliseconds, to poll an agent task that has not finished yet. Def
        #
        #   @param timeout_ms [Integer] Total budget, in milliseconds, for one call to this agent, including any time sp

        class Header < Telnyx::Internal::Type::BaseModel
          # @!attribute name
          #   HTTP header name. May only contain alphanumeric characters, hyphens, and
          #   underscores, or a `{{dynamic_variable}}` placeholder surrounded by those
          #   characters.
          #
          #   @return [String]
          required :name, String

          # @!attribute value
          #   Header value, stored exactly as written. It may be a literal, a
          #   `{{dynamic_variable}}`, or an
          #   `{{#integration_secret}}identifier{{/integration_secret}}` section that resolves
          #   to a stored integration secret when the conversation starts. Control characters
          #   are not allowed. The encrypted `{{variable | encryption_secret_ref}}` form used
          #   for per-caller credentials is not resolved here and is rejected when the
          #   assistant is saved.
          #
          #   @return [String]
          required :value, String

          # @!method initialize(name:, value:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::AssistantA2AAgent::Header} for more details.
          #
          #   A header sent when fetching an A2A agent's card and on every call made to that
          #   agent.
          #
          #   @param name [String] HTTP header name. May only contain alphanumeric characters, hyphens, and undersc
          #
          #   @param value [String] Header value, stored exactly as written. It may be a literal, a `{{dynamic_varia
        end

        module Message
          extend Telnyx::Internal::Type::Union

          variant -> { Telnyx::AI::AssistantA2AAgent::Message::A2AAgentRequestStartMessage }

          variant -> { Telnyx::AI::AssistantA2AAgent::Message::A2AAgentRequestResponseDelayedMessage }

          class A2AAgentRequestStartMessage < Telnyx::Internal::Type::BaseModel
            # @!attribute content
            #   The text the assistant speaks.
            #
            #   @return [String]
            required :content, String

            # @!attribute type
            #   Speak the filler message immediately when the call to the agent begins.
            #
            #   @return [Symbol, :request_start]
            required :type, const: :request_start

            # @!attribute timing_ms
            #   An optional delay value. This value is ignored for `request_start` messages.
            #
            #   @return [Integer, nil]
            optional :timing_ms, Integer

            # @!method initialize(content:, timing_ms: nil, type: :request_start)
            #   @param content [String] The text the assistant speaks.
            #
            #   @param timing_ms [Integer] An optional delay value. This value is ignored for `request_start` messages.
            #
            #   @param type [Symbol, :request_start] Speak the filler message immediately when the call to the agent begins.
          end

          class A2AAgentRequestResponseDelayedMessage < Telnyx::Internal::Type::BaseModel
            # @!attribute content
            #   The text the assistant speaks.
            #
            #   @return [String]
            required :content, String

            # @!attribute timing_ms
            #   How long to wait, in milliseconds, before speaking this message.
            #
            #   @return [Integer]
            required :timing_ms, Integer

            # @!attribute type
            #   Speak the filler message only if the agent has not answered yet after
            #   `timing_ms`.
            #
            #   @return [Symbol, :request_response_delayed]
            required :type, const: :request_response_delayed

            # @!method initialize(content:, timing_ms:, type: :request_response_delayed)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::AssistantA2AAgent::Message::A2AAgentRequestResponseDelayedMessage}
            #   for more details.
            #
            #   @param content [String] The text the assistant speaks.
            #
            #   @param timing_ms [Integer] How long to wait, in milliseconds, before speaking this message.
            #
            #   @param type [Symbol, :request_response_delayed] Speak the filler message only if the agent has not answered yet after `timing_ms
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::AssistantA2AAgent::Message::A2AAgentRequestStartMessage, Telnyx::Models::AI::AssistantA2AAgent::Message::A2AAgentRequestResponseDelayedMessage)]
        end
      end
    end
  end
end
