# frozen_string_literal: true

module Telnyx
  module Models
    class CallConversationEnded < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the event.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute created_at
      #   Timestamp when the event was created in the system.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute event_type
      #   The type of event being delivered.
      #
      #   @return [Symbol, Telnyx::Models::CallConversationEnded::EventType, nil]
      optional :event_type, enum: -> { Telnyx::CallConversationEnded::EventType }

      # @!attribute occurred_at
      #   ISO 8601 datetime of when the event occurred.
      #
      #   @return [Time, nil]
      optional :occurred_at, Time

      # @!attribute payload
      #
      #   @return [Telnyx::Models::CallConversationEnded::Payload, nil]
      optional :payload, -> { Telnyx::CallConversationEnded::Payload }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::CallConversationEnded::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::CallConversationEnded::RecordType }

      # @!method initialize(id: nil, created_at: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
      #   @param id [String] Unique identifier for the event.
      #
      #   @param created_at [Time] Timestamp when the event was created in the system.
      #
      #   @param event_type [Symbol, Telnyx::Models::CallConversationEnded::EventType] The type of event being delivered.
      #
      #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
      #
      #   @param payload [Telnyx::Models::CallConversationEnded::Payload]
      #
      #   @param record_type [Symbol, Telnyx::Models::CallConversationEnded::RecordType] Identifies the type of the resource.

      # The type of event being delivered.
      #
      # @see Telnyx::Models::CallConversationEnded#event_type
      module EventType
        extend Telnyx::Internal::Type::Enum

        CALL_CONVERSATION_ENDED = :"call.conversation.ended"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::CallConversationEnded#payload
      class Payload < Telnyx::Internal::Type::BaseModel
        # @!attribute assistant_id
        #   Unique identifier of the assistant involved in the call.
        #
        #   @return [String, nil]
        optional :assistant_id, String

        # @!attribute call_control_id
        #   Call ID used to issue commands via Call Control API.
        #
        #   @return [String, nil]
        optional :call_control_id, String

        # @!attribute call_leg_id
        #   ID that is unique to the call leg.
        #
        #   @return [String, nil]
        optional :call_leg_id, String

        # @!attribute call_session_id
        #   ID that is unique to the call session (group of related call legs).
        #
        #   @return [String, nil]
        optional :call_session_id, String

        # @!attribute calling_party_type
        #   The type of calling party connection.
        #
        #   @return [Symbol, Telnyx::Models::CallConversationEnded::Payload::CallingPartyType, nil]
        optional :calling_party_type, enum: -> { Telnyx::CallConversationEnded::Payload::CallingPartyType }

        # @!attribute client_state
        #   Base64-encoded state received from a command.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute connection_id
        #   Call Control App ID (formerly Telnyx connection ID) used in the call.
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute conversation_id
        #   ID unique to the conversation or insight group generated for the call.
        #
        #   @return [String, nil]
        optional :conversation_id, String

        # @!attribute duration_sec
        #   Duration of the conversation in seconds.
        #
        #   @return [Integer, nil]
        optional :duration_sec, Integer

        # @!attribute from
        #   The caller's number or identifier.
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute llm_model
        #   The large language model used during the conversation.
        #
        #   @return [String, nil]
        optional :llm_model, String

        # @!attribute messages
        #   The conversation transcript, in order. By default it contains only `user` and
        #   `assistant` text turns. When the assistant's
        #   `telephony_settings.conversation_ended_full_history` is `true`, it contains the
        #   full conversation history, including assistant tool calls, tool results, and
        #   `system` and `developer` entries. Redacted when data retention is disabled for
        #   the account.
        #
        #   @return [Array<Telnyx::Models::CallConversationEnded::Payload::Message>, nil]
        optional :messages,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CallConversationEnded::Payload::Message] }

        # @!attribute reason
        #   Reason the conversation ended. For Conversation Relay, `customer_disconnect`
        #   indicates that the customer WebSocket disconnected.
        #
        #   @return [String, nil]
        optional :reason, String, nil?: true

        # @!attribute stt_model
        #   The speech-to-text model used in the conversation.
        #
        #   @return [String, nil]
        optional :stt_model, String

        # @!attribute to
        #   The callee's number or SIP address.
        #
        #   @return [String, nil]
        optional :to, String

        # @!attribute tts_model_id
        #   The model ID used for text-to-speech synthesis.
        #
        #   @return [String, nil]
        optional :tts_model_id, String

        # @!attribute tts_provider
        #   The text-to-speech provider used in the call.
        #
        #   @return [String, nil]
        optional :tts_provider, String

        # @!attribute tts_voice_id
        #   Voice ID used for TTS.
        #
        #   @return [String, nil]
        optional :tts_voice_id, String

        # @!method initialize(assistant_id: nil, call_control_id: nil, call_leg_id: nil, call_session_id: nil, calling_party_type: nil, client_state: nil, connection_id: nil, conversation_id: nil, duration_sec: nil, from: nil, llm_model: nil, messages: nil, reason: nil, stt_model: nil, to: nil, tts_model_id: nil, tts_provider: nil, tts_voice_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CallConversationEnded::Payload} for more details.
        #
        #   @param assistant_id [String] Unique identifier of the assistant involved in the call.
        #
        #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
        #
        #   @param call_leg_id [String] ID that is unique to the call leg.
        #
        #   @param call_session_id [String] ID that is unique to the call session (group of related call legs).
        #
        #   @param calling_party_type [Symbol, Telnyx::Models::CallConversationEnded::Payload::CallingPartyType] The type of calling party connection.
        #
        #   @param client_state [String] Base64-encoded state received from a command.
        #
        #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
        #
        #   @param conversation_id [String] ID unique to the conversation or insight group generated for the call.
        #
        #   @param duration_sec [Integer] Duration of the conversation in seconds.
        #
        #   @param from [String] The caller's number or identifier.
        #
        #   @param llm_model [String] The large language model used during the conversation.
        #
        #   @param messages [Array<Telnyx::Models::CallConversationEnded::Payload::Message>] The conversation transcript, in order. By default it contains only `user` and `a
        #
        #   @param reason [String, nil] Reason the conversation ended. For Conversation Relay, `customer_disconnect` ind
        #
        #   @param stt_model [String] The speech-to-text model used in the conversation.
        #
        #   @param to [String] The callee's number or SIP address.
        #
        #   @param tts_model_id [String] The model ID used for text-to-speech synthesis.
        #
        #   @param tts_provider [String] The text-to-speech provider used in the call.
        #
        #   @param tts_voice_id [String] Voice ID used for TTS.

        # The type of calling party connection.
        #
        # @see Telnyx::Models::CallConversationEnded::Payload#calling_party_type
        module CallingPartyType
          extend Telnyx::Internal::Type::Enum

          PSTN = :pstn
          SIP = :sip

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Message < Telnyx::Internal::Type::BaseModel
          # @!attribute content
          #   The text of the message. For a tool result, the tool output. May be absent on an
          #   assistant message that only contains `tool_calls`.
          #
          #   @return [String, nil]
          optional :content, String

          # @!attribute role
          #   The author of the message. `tool`, `system`, and `developer` only appear when
          #   `conversation_ended_full_history` is enabled. `system` and `developer` entries
          #   are informational (for example idle check-ins, voicemail prompts,
          #   participant-left notices, or messages added through the API); their wording is
          #   not a stable contract.
          #
          #   @return [Symbol, Telnyx::Models::CallConversationEnded::Payload::Message::Role, nil]
          optional :role, enum: -> { Telnyx::CallConversationEnded::Payload::Message::Role }

          # @!attribute timestamp
          #   ISO 8601 datetime of when the message was added to the conversation.
          #
          #   @return [Time, nil]
          optional :timestamp, Time

          # @!attribute tool_call_id
          #   The `id` of the tool call this message answers. Only present on `tool` messages
          #   when `conversation_ended_full_history` is enabled.
          #
          #   @return [String, nil]
          optional :tool_call_id, String

          # @!attribute tool_calls
          #   Tools the assistant called in this turn. Only present on `assistant` messages
          #   when `conversation_ended_full_history` is enabled.
          #
          #   @return [Array<Telnyx::Models::CallConversationEnded::Payload::Message::ToolCall>, nil]
          optional :tool_calls,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CallConversationEnded::Payload::Message::ToolCall] }

          # @!method initialize(content: nil, role: nil, timestamp: nil, tool_call_id: nil, tool_calls: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CallConversationEnded::Payload::Message} for more details.
          #
          #   @param content [String] The text of the message. For a tool result, the tool output. May be absent on an
          #
          #   @param role [Symbol, Telnyx::Models::CallConversationEnded::Payload::Message::Role] The author of the message. `tool`, `system`, and `developer` only appear when `c
          #
          #   @param timestamp [Time] ISO 8601 datetime of when the message was added to the conversation.
          #
          #   @param tool_call_id [String] The `id` of the tool call this message answers. Only present on `tool` messages
          #
          #   @param tool_calls [Array<Telnyx::Models::CallConversationEnded::Payload::Message::ToolCall>] Tools the assistant called in this turn. Only present on `assistant` messages wh

          # The author of the message. `tool`, `system`, and `developer` only appear when
          # `conversation_ended_full_history` is enabled. `system` and `developer` entries
          # are informational (for example idle check-ins, voicemail prompts,
          # participant-left notices, or messages added through the API); their wording is
          # not a stable contract.
          #
          # @see Telnyx::Models::CallConversationEnded::Payload::Message#role
          module Role
            extend Telnyx::Internal::Type::Enum

            USER = :user
            ASSISTANT = :assistant
            TOOL = :tool
            SYSTEM = :system
            DEVELOPER = :developer

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class ToolCall < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Identifier of the tool call, referenced by the matching tool result's
            #   `tool_call_id`.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute function
            #
            #   @return [Telnyx::Models::CallConversationEnded::Payload::Message::ToolCall::Function, nil]
            optional :function, -> { Telnyx::CallConversationEnded::Payload::Message::ToolCall::Function }

            # @!attribute type
            #   The type of tool call.
            #
            #   @return [Symbol, Telnyx::Models::CallConversationEnded::Payload::Message::ToolCall::Type, nil]
            optional :type, enum: -> { Telnyx::CallConversationEnded::Payload::Message::ToolCall::Type }

            # @!method initialize(id: nil, function: nil, type: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::CallConversationEnded::Payload::Message::ToolCall} for more
            #   details.
            #
            #   @param id [String] Identifier of the tool call, referenced by the matching tool result's `tool_call
            #
            #   @param function [Telnyx::Models::CallConversationEnded::Payload::Message::ToolCall::Function]
            #
            #   @param type [Symbol, Telnyx::Models::CallConversationEnded::Payload::Message::ToolCall::Type] The type of tool call.

            # @see Telnyx::Models::CallConversationEnded::Payload::Message::ToolCall#function
            class Function < Telnyx::Internal::Type::BaseModel
              # @!attribute arguments
              #   The arguments passed to the tool, as a JSON-encoded string.
              #
              #   @return [String, nil]
              optional :arguments, String

              # @!attribute name
              #   The name of the tool that was called.
              #
              #   @return [String, nil]
              optional :name, String

              # @!method initialize(arguments: nil, name: nil)
              #   @param arguments [String] The arguments passed to the tool, as a JSON-encoded string.
              #
              #   @param name [String] The name of the tool that was called.
            end

            # The type of tool call.
            #
            # @see Telnyx::Models::CallConversationEnded::Payload::Message::ToolCall#type
            module Type
              extend Telnyx::Internal::Type::Enum

              FUNCTION = :function

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::CallConversationEnded#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EVENT = :event

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
