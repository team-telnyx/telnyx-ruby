# frozen_string_literal: true

module Telnyx
  module Models
    class CallConversationEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallConversationEndedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallConversationEndedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallConversationEndedWebhookEvent::Data]

      # @see Telnyx::Models::CallConversationEndedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
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
        #   @return [Symbol, Telnyx::Models::CallConversationEndedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallConversationEndedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallConversationEndedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallConversationEndedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallConversationEndedWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallConversationEndedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, created_at: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Unique identifier for the event.
        #
        #   @param created_at [Time] Timestamp when the event was created in the system.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallConversationEndedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallConversationEndedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallConversationEndedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallConversationEndedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_CONVERSATION_ENDED = :"call.conversation.ended"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallConversationEndedWebhookEvent::Data#payload
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
          #   @return [Symbol, Telnyx::Models::CallConversationEndedWebhookEvent::Data::Payload::CallingPartyType, nil]
          optional :calling_party_type,
                   enum: -> { Telnyx::CallConversationEndedWebhookEvent::Data::Payload::CallingPartyType }

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

          # @!method initialize(assistant_id: nil, call_control_id: nil, call_leg_id: nil, call_session_id: nil, calling_party_type: nil, client_state: nil, connection_id: nil, conversation_id: nil, duration_sec: nil, from: nil, llm_model: nil, stt_model: nil, to: nil, tts_model_id: nil, tts_provider: nil, tts_voice_id: nil)
          #   @param assistant_id [String] Unique identifier of the assistant involved in the call.
          #
          #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
          #
          #   @param call_leg_id [String] ID that is unique to the call leg.
          #
          #   @param call_session_id [String] ID that is unique to the call session (group of related call legs).
          #
          #   @param calling_party_type [Symbol, Telnyx::Models::CallConversationEndedWebhookEvent::Data::Payload::CallingPartyType] The type of calling party connection.
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
          # @see Telnyx::Models::CallConversationEndedWebhookEvent::Data::Payload#calling_party_type
          module CallingPartyType
            extend Telnyx::Internal::Type::Enum

            PSTN = :pstn
            SIP = :sip

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CallConversationEndedWebhookEvent::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EVENT = :event

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
