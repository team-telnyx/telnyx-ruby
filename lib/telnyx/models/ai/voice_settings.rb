# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class VoiceSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute voice
        #   The voice to be used by the voice assistant. Check the full list of
        #   [available voices](https://developers.telnyx.com/api/call-control/list-text-to-speech-voices)
        #   via our voices API. To use ElevenLabs, you must reference your ElevenLabs API
        #   key as an integration secret under the `api_key_ref` field. See
        #   [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        #   for details. For Telnyx voices, use `Telnyx.<model_id>.<voice_id>` (e.g.
        #   Telnyx.KokoroTTS.af_heart)
        #
        #   @return [String]
        required :voice, String

        # @!attribute api_key_ref
        #   The `identifier` for an integration secret
        #   [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        #   that refers to your ElevenLabs API key. Warning: Free plans are unlikely to work
        #   with this integration.
        #
        #   @return [String, nil]
        optional :api_key_ref, String

        # @!attribute background_audio
        #   Optional background audio to play on the call. Use a predefined media bed, or
        #   supply a looped MP3 URL. If a media URL is chosen in the portal, customers can
        #   preview it before saving.
        #
        #   @return [Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember0, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember1, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember2, nil]
        optional :background_audio, union: -> { Telnyx::AI::VoiceSettings::BackgroundAudio }

        # @!attribute voice_speed
        #   The speed of the voice in the range [0.25, 2.0]. 1.0 is deafult speed. Larger
        #   numbers make the voice faster, smaller numbers make it slower. This is only
        #   applicable for Telnyx Natural voices.
        #
        #   @return [Float, nil]
        optional :voice_speed, Float

        # @!method initialize(voice:, api_key_ref: nil, background_audio: nil, voice_speed: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::VoiceSettings} for more details.
        #
        #   @param voice [String] The voice to be used by the voice assistant. Check the full list of [available v
        #
        #   @param api_key_ref [String] The `identifier` for an integration secret [/v2/integration_secrets](https://dev
        #
        #   @param background_audio [Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember0, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember1, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember2] Optional background audio to play on the call. Use a predefined media bed, or su
        #
        #   @param voice_speed [Float] The speed of the voice in the range [0.25, 2.0]. 1.0 is deafult speed. Larger nu

        # Optional background audio to play on the call. Use a predefined media bed, or
        # supply a looped MP3 URL. If a media URL is chosen in the portal, customers can
        # preview it before saving.
        #
        # @see Telnyx::Models::AI::VoiceSettings#background_audio
        module BackgroundAudio
          extend Telnyx::Internal::Type::Union

          variant -> { Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0 }

          variant -> { Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember1 }

          variant -> { Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember2 }

          class UnionMember0 < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Select from predefined media options.
            #
            #   @return [Symbol, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember0::Type]
            required :type, enum: -> { Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Type }

            # @!attribute value
            #   The predefined media to use. `silence` disables background audio.
            #
            #   @return [Symbol, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember0::Value]
            required :value, enum: -> { Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Value }

            # @!method initialize(type:, value:)
            #   @param type [Symbol, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember0::Type] Select from predefined media options.
            #
            #   @param value [Symbol, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember0::Value] The predefined media to use. `silence` disables background audio.

            # Select from predefined media options.
            #
            # @see Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember0#type
            module Type
              extend Telnyx::Internal::Type::Enum

              PREDEFINED_MEDIA = :predefined_media

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The predefined media to use. `silence` disables background audio.
            #
            # @see Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember0#value
            module Value
              extend Telnyx::Internal::Type::Enum

              SILENCE = :silence
              OFFICE = :office

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember1 < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Provide a direct URL to an MP3 file. The audio will loop during the call.
            #
            #   @return [Symbol, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember1::Type]
            required :type, enum: -> { Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember1::Type }

            # @!attribute value
            #   HTTPS URL to an MP3 file.
            #
            #   @return [String]
            required :value, String

            # @!method initialize(type:, value:)
            #   @param type [Symbol, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember1::Type] Provide a direct URL to an MP3 file. The audio will loop during the call.
            #
            #   @param value [String] HTTPS URL to an MP3 file.

            # Provide a direct URL to an MP3 file. The audio will loop during the call.
            #
            # @see Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember1#type
            module Type
              extend Telnyx::Internal::Type::Enum

              MEDIA_URL = :media_url

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember2 < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Reference a previously uploaded media by its name from Telnyx Media Storage.
            #
            #   @return [Symbol, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember2::Type]
            required :type, enum: -> { Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember2::Type }

            # @!attribute value
            #   The `name` of a media asset created via
            #   [Media Storage API](https://developers.telnyx.com/api/media-storage/create-media-storage).
            #   The audio will loop during the call.
            #
            #   @return [String]
            required :value, String

            # @!method initialize(type:, value:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember2} for more
            #   details.
            #
            #   @param type [Symbol, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember2::Type] Reference a previously uploaded media by its name from Telnyx Media Storage.
            #
            #   @param value [String] The `name` of a media asset created via [Media Storage API](https://developers.t

            # Reference a previously uploaded media by its name from Telnyx Media Storage.
            #
            # @see Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember2#type
            module Type
              extend Telnyx::Internal::Type::Enum

              MEDIA_NAME = :media_name

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember0, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember1, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::UnionMember2)]
        end
      end
    end
  end
end
