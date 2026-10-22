# frozen_string_literal: true

module Telnyx
  module Models
    class CallAnalyzedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallAnalyzedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallAnalyzedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallAnalyzedWebhookEvent::Data]

      # @see Telnyx::Models::CallAnalyzedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::CallAnalyzedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallAnalyzedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallAnalyzedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallAnalyzedWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallAnalyzedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Unique identifier for the event.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallAnalyzedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallAnalyzedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallAnalyzedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_ANALYZED = :"call.analyzed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallAnalyzedWebhookEvent::Data#payload
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
          #   ID unique to the conversation generated for the call.
          #
          #   @return [String, nil]
          optional :conversation_id, String

          # @!attribute conversation_insights
          #   The conversation's generated insights, when insight generation was enabled for
          #   the assistant and has completed. Each entry carries a `status` and the generated
          #   `conversation_insights` results. An empty array when the conversation has no
          #   generated insights; null when insight data could not be retrieved.
          #
          #   @return [Array<Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::ConversationInsight>, nil]
          optional :conversation_insights,
                   -> {
                     Telnyx::Internal::Type::ArrayOf[Telnyx::CallAnalyzedWebhookEvent::Data::Payload::ConversationInsight]
                   },
                   nil?: true

          # @!attribute cost
          #   The session's cost breakdown from Session Analysis, covering every product
          #   billed on the call: the AI Voice Assistant engine minutes
          #   (`ai-voice-assistant`), LLM inference tokens (`inference`), and call-control,
          #   SIP trunking, and recording lines. If cost data could not be retrieved after
          #   retries, this field carries the placeholder string `No cost data available.`
          #   instead of an object.
          #
          #   @return [Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0, String, nil]
          optional :cost, union: -> { Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost }

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

          # @!attribute reason
          #   Reason the conversation ended.
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!attribute recordings
          #   Recordings created for the call. An empty array when the call had no recordings;
          #   null when recording data could not be retrieved.
          #
          #   @return [Array<Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::Recording>, nil]
          optional :recordings,
                   -> {
                     Telnyx::Internal::Type::ArrayOf[Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Recording]
                   },
                   nil?: true

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

          # @!method initialize(assistant_id: nil, call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, conversation_id: nil, conversation_insights: nil, cost: nil, duration_sec: nil, from: nil, llm_model: nil, reason: nil, recordings: nil, stt_model: nil, to: nil, tts_model_id: nil, tts_provider: nil, tts_voice_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload} for more details.
          #
          #   @param assistant_id [String] Unique identifier of the assistant involved in the call.
          #
          #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
          #
          #   @param call_leg_id [String] ID that is unique to the call leg.
          #
          #   @param call_session_id [String] ID that is unique to the call session (group of related call legs).
          #
          #   @param client_state [String] Base64-encoded state received from a command.
          #
          #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @param conversation_id [String] ID unique to the conversation generated for the call.
          #
          #   @param conversation_insights [Array<Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::ConversationInsight>, nil] The conversation's generated insights, when insight generation was enabled for t
          #
          #   @param cost [Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0, String] The session's cost breakdown from Session Analysis, covering every product bille
          #
          #   @param duration_sec [Integer] Duration of the conversation in seconds.
          #
          #   @param from [String] The caller's number or identifier.
          #
          #   @param llm_model [String] The large language model used during the conversation.
          #
          #   @param reason [String, nil] Reason the conversation ended.
          #
          #   @param recordings [Array<Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::Recording>, nil] Recordings created for the call. An empty array when the call had no recordings;
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

          class ConversationInsight < Telnyx::Internal::Type::BaseModel
            # @!attribute conversation_insights
            #   Generated insight results.
            #
            #   @return [Array<Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::ConversationInsight::ConversationInsight>, nil]
            optional :conversation_insights,
                     -> {
                       Telnyx::Internal::Type::ArrayOf[Telnyx::CallAnalyzedWebhookEvent::Data::Payload::ConversationInsight::ConversationInsight]
                     },
                     nil?: true

            # @!attribute status
            #   Status of insight generation for this entry.
            #
            #   @return [String, nil]
            optional :status, String

            # @!method initialize(conversation_insights: nil, status: nil)
            #   @param conversation_insights [Array<Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::ConversationInsight::ConversationInsight>, nil] Generated insight results.
            #
            #   @param status [String] Status of insight generation for this entry.

            class ConversationInsight < Telnyx::Internal::Type::BaseModel
              # @!attribute insight_id
              #   Identifier of the insight template the result was generated from.
              #
              #   @return [String, nil]
              optional :insight_id, String

              # @!attribute result
              #   The generated insight result.
              #
              #   @return [String, nil]
              optional :result, String

              # @!method initialize(insight_id: nil, result: nil)
              #   @param insight_id [String] Identifier of the insight template the result was generated from.
              #
              #   @param result [String] The generated insight result.
            end
          end

          # The session's cost breakdown from Session Analysis, covering every product
          # billed on the call: the AI Voice Assistant engine minutes
          # (`ai-voice-assistant`), LLM inference tokens (`inference`), and call-control,
          # SIP trunking, and recording lines. If cost data could not be retrieved after
          # retries, this field carries the placeholder string `No cost data available.`
          # instead of an object.
          #
          # @see Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload#cost
          module Cost
            extend Telnyx::Internal::Type::Union

            # The session's cost breakdown from Session Analysis, covering every product billed on the call: the AI Voice Assistant engine minutes (`ai-voice-assistant`), LLM inference tokens (`inference`), and call-control, SIP trunking, and recording lines. If cost data could not be retrieved after retries, this field carries the placeholder string `No cost data available.` instead of an object.
            variant -> { Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0 }

            # The session's cost breakdown from Session Analysis, covering every product billed on the call: the AI Voice Assistant engine minutes (`ai-voice-assistant`), LLM inference tokens (`inference`), and call-control, SIP trunking, and recording lines. If cost data could not be retrieved after retries, this field carries the placeholder string `No cost data available.` instead of an object.
            variant String

            class UnionMember0 < Telnyx::Internal::Type::BaseModel
              # @!attribute breakdown
              #   Cost lines grouped by product.
              #
              #   @return [Array<Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0::Breakdown>, nil]
              optional :breakdown,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0::Breakdown] }

              # @!attribute currency
              #   The currency of the cost amounts.
              #
              #   @return [String, nil]
              optional :currency, String

              # @!attribute total
              #   The total cost of the call, summed across every product in the breakdown.
              #
              #   @return [String, nil]
              optional :total, String

              # @!method initialize(breakdown: nil, currency: nil, total: nil)
              #   The session's cost breakdown from Session Analysis, covering every product
              #   billed on the call: the AI Voice Assistant engine minutes
              #   (`ai-voice-assistant`), LLM inference tokens (`inference`), and call-control,
              #   SIP trunking, and recording lines. If cost data could not be retrieved after
              #   retries, this field carries the placeholder string `No cost data available.`
              #   instead of an object.
              #
              #   @param breakdown [Array<Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0::Breakdown>] Cost lines grouped by product.
              #
              #   @param currency [String] The currency of the cost amounts.
              #
              #   @param total [String] The total cost of the call, summed across every product in the breakdown.

              class Breakdown < Telnyx::Internal::Type::BaseModel
                # @!attribute cost
                #   Total cost for this product across the call, in the currency given by
                #   `cost.currency`.
                #
                #   @return [String, nil]
                optional :cost, String

                # @!attribute product
                #   The Telnyx product the cost line belongs to (for example `ai-voice-assistant`,
                #   `inference`, `callcontrol-cdrs`, `siptrunking-cdrs`, `recording-cdrs`).
                #
                #   @return [String, nil]
                optional :product, String

                # @!method initialize(cost: nil, product: nil)
                #   Some parameter documentations has been truncated, see
                #   {Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0::Breakdown}
                #   for more details.
                #
                #   @param cost [String] Total cost for this product across the call, in the currency given by `cost.curr
                #
                #   @param product [String] The Telnyx product the cost line belongs to (for example `ai-voice-assistant`, `
              end
            end

            # @!method self.variants
            #   @return [Array(Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0, String)]
          end

          class Recording < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Unique identifier of the recording.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute channels
            #   The recording channel configuration.
            #
            #   @return [String, nil]
            optional :channels, String

            # @!attribute download_urls
            #   Download URL per format. URLs are pre-signed and expire.
            #
            #   @return [Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::Recording::DownloadURLs, nil]
            optional :download_urls, -> { Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Recording::DownloadURLs }

            # @!attribute end_time
            #   ISO 8601 datetime of when the recording ended.
            #
            #   @return [Time, nil]
            optional :end_time, Time

            # @!attribute format_
            #   The recording file format.
            #
            #   @return [String, nil]
            optional :format_, String, api_name: :format

            # @!attribute start_time
            #   ISO 8601 datetime of when the recording started.
            #
            #   @return [Time, nil]
            optional :start_time, Time

            # @!method initialize(id: nil, channels: nil, download_urls: nil, end_time: nil, format_: nil, start_time: nil)
            #   @param id [String] Unique identifier of the recording.
            #
            #   @param channels [String] The recording channel configuration.
            #
            #   @param download_urls [Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::Recording::DownloadURLs] Download URL per format. URLs are pre-signed and expire.
            #
            #   @param end_time [Time] ISO 8601 datetime of when the recording ended.
            #
            #   @param format_ [String] The recording file format.
            #
            #   @param start_time [Time] ISO 8601 datetime of when the recording started.

            # @see Telnyx::Models::CallAnalyzedWebhookEvent::Data::Payload::Recording#download_urls
            class DownloadURLs < Telnyx::Internal::Type::BaseModel
              # @!attribute mp3
              #   Pre-signed URL for the mp3 recording file.
              #
              #   @return [String, nil]
              optional :mp3, String

              # @!attribute wav
              #   Pre-signed URL for the wav recording file.
              #
              #   @return [String, nil]
              optional :wav, String

              # @!method initialize(mp3: nil, wav: nil)
              #   Download URL per format. URLs are pre-signed and expire.
              #
              #   @param mp3 [String] Pre-signed URL for the mp3 recording file.
              #
              #   @param wav [String] Pre-signed URL for the wav recording file.
            end
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CallAnalyzedWebhookEvent::Data#record_type
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
