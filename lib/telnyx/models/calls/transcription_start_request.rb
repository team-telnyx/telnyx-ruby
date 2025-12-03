# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionStartRequest < Telnyx::Internal::Type::BaseModel
        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. It must be a valid
        #   Base-64 encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute transcription_engine
        #   Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
        #   `Telnyx` are supported for backward compatibility.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngine, nil]
        optional :transcription_engine, enum: -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine }

        # @!attribute transcription_engine_config
        #
        #   @return [Telnyx::Models::Calls::TranscriptionEngineGoogleConfig, Telnyx::Models::Calls::TranscriptionEngineTelnyxConfig, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig, Telnyx::Models::Calls::TranscriptionEngineAzureConfig, Telnyx::Models::Calls::TranscriptionEngineAConfig, Telnyx::Models::Calls::TranscriptionEngineBConfig, nil]
        optional :transcription_engine_config,
                 union: -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig }

        # @!attribute transcription_tracks
        #   Indicates which leg of the call will be transcribed. Use `inbound` for the leg
        #   that requested the transcription, `outbound` for the other leg, and `both` for
        #   both legs of the call. Will default to `inbound`.
        #
        #   @return [String, nil]
        optional :transcription_tracks, String

        # @!method initialize(client_state: nil, command_id: nil, transcription_engine: nil, transcription_engine_config: nil, transcription_tracks: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionStartRequest} for more details.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngine] Engine to use for speech recognition. Legacy values `A` - `Google`, `B` - `Telny
        #
        #   @param transcription_engine_config [Telnyx::Models::Calls::TranscriptionEngineGoogleConfig, Telnyx::Models::Calls::TranscriptionEngineTelnyxConfig, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig, Telnyx::Models::Calls::TranscriptionEngineAzureConfig, Telnyx::Models::Calls::TranscriptionEngineAConfig, Telnyx::Models::Calls::TranscriptionEngineBConfig]
        #
        #   @param transcription_tracks [String] Indicates which leg of the call will be transcribed. Use `inbound` for the leg t

        # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
        # `Telnyx` are supported for backward compatibility.
        #
        # @see Telnyx::Models::Calls::TranscriptionStartRequest#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          GOOGLE = :Google
          TELNYX = :Telnyx
          DEEPGRAM = :Deepgram
          AZURE = :Azure
          A = :A
          B = :B

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Calls::TranscriptionStartRequest#transcription_engine_config
        module TranscriptionEngineConfig
          extend Telnyx::Internal::Type::Union

          discriminator :transcription_engine

          variant :Google, -> { Telnyx::Calls::TranscriptionEngineGoogleConfig }

          variant :Telnyx, -> { Telnyx::Calls::TranscriptionEngineTelnyxConfig }

          variant :Deepgram, -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig }

          variant :Azure, -> { Telnyx::Calls::TranscriptionEngineAzureConfig }

          variant :A, -> { Telnyx::Calls::TranscriptionEngineAConfig }

          variant :B, -> { Telnyx::Calls::TranscriptionEngineBConfig }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::TranscriptionEngineGoogleConfig, Telnyx::Models::Calls::TranscriptionEngineTelnyxConfig, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig, Telnyx::Models::Calls::TranscriptionEngineAzureConfig, Telnyx::Models::Calls::TranscriptionEngineAConfig, Telnyx::Models::Calls::TranscriptionEngineBConfig)]
        end
      end
    end
  end
end
