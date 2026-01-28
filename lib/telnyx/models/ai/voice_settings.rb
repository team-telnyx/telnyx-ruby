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
        #   [integration secrets documentation](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
        #   for details. For Telnyx voices, use `Telnyx.<model_id>.<voice_id>` (e.g.
        #   Telnyx.KokoroTTS.af_heart)
        #
        #   @return [String]
        required :voice, String

        # @!attribute api_key_ref
        #   The `identifier` for an integration secret
        #   [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
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
        #   @return [Telnyx::Models::AI::VoiceSettings::BackgroundAudio::PredefinedMedia, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::MediaURL, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::MediaName, nil]
        optional :background_audio, union: -> { Telnyx::AI::VoiceSettings::BackgroundAudio }

        # @!attribute similarity_boost
        #   Determines how closely the AI should adhere to the original voice when
        #   attempting to replicate it. Only applicable when using ElevenLabs.
        #
        #   @return [Float, nil]
        optional :similarity_boost, Float

        # @!attribute speed
        #   Adjusts speech velocity. 1.0 is default speed; values less than 1.0 slow speech;
        #   values greater than 1.0 accelerate it. Only applicable when using ElevenLabs.
        #
        #   @return [Float, nil]
        optional :speed, Float

        # @!attribute style
        #   Determines the style exaggeration of the voice. Amplifies speaker style but
        #   consumes additional resources when set above 0. Only applicable when using
        #   ElevenLabs.
        #
        #   @return [Float, nil]
        optional :style, Float

        # @!attribute temperature
        #   Determines how stable the voice is and the randomness between each generation.
        #   Lower values create a broader emotional range; higher values produce more
        #   consistent, monotonous output. Only applicable when using ElevenLabs.
        #
        #   @return [Float, nil]
        optional :temperature, Float

        # @!attribute use_speaker_boost
        #   Amplifies similarity to the original speaker voice. Increases computational load
        #   and latency slightly. Only applicable when using ElevenLabs.
        #
        #   @return [Boolean, nil]
        optional :use_speaker_boost, Telnyx::Internal::Type::Boolean

        # @!attribute voice_speed
        #   The speed of the voice in the range [0.25, 2.0]. 1.0 is deafult speed. Larger
        #   numbers make the voice faster, smaller numbers make it slower. This is only
        #   applicable for Telnyx Natural voices.
        #
        #   @return [Float, nil]
        optional :voice_speed, Float

        # @!method initialize(voice:, api_key_ref: nil, background_audio: nil, similarity_boost: nil, speed: nil, style: nil, temperature: nil, use_speaker_boost: nil, voice_speed: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::VoiceSettings} for more details.
        #
        #   @param voice [String] The voice to be used by the voice assistant. Check the full list of [available v
        #
        #   @param api_key_ref [String] The `identifier` for an integration secret [/v2/integration_secrets](https://dev
        #
        #   @param background_audio [Telnyx::Models::AI::VoiceSettings::BackgroundAudio::PredefinedMedia, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::MediaURL, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::MediaName] Optional background audio to play on the call. Use a predefined media bed, or su
        #
        #   @param similarity_boost [Float] Determines how closely the AI should adhere to the original voice when attemptin
        #
        #   @param speed [Float] Adjusts speech velocity. 1.0 is default speed; values less than 1.0 slow speech;
        #
        #   @param style [Float] Determines the style exaggeration of the voice. Amplifies speaker style but cons
        #
        #   @param temperature [Float] Determines how stable the voice is and the randomness between each generation. L
        #
        #   @param use_speaker_boost [Boolean] Amplifies similarity to the original speaker voice. Increases computational load
        #
        #   @param voice_speed [Float] The speed of the voice in the range [0.25, 2.0]. 1.0 is deafult speed. Larger nu

        # Optional background audio to play on the call. Use a predefined media bed, or
        # supply a looped MP3 URL. If a media URL is chosen in the portal, customers can
        # preview it before saving.
        #
        # @see Telnyx::Models::AI::VoiceSettings#background_audio
        module BackgroundAudio
          extend Telnyx::Internal::Type::Union

          discriminator :type

          variant :predefined_media, -> { Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia }

          variant :media_url, -> { Telnyx::AI::VoiceSettings::BackgroundAudio::MediaURL }

          variant :media_name, -> { Telnyx::AI::VoiceSettings::BackgroundAudio::MediaName }

          class PredefinedMedia < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Select from predefined media options.
            #
            #   @return [Symbol, :predefined_media]
            required :type, const: :predefined_media

            # @!attribute value
            #   The predefined media to use. `silence` disables background audio.
            #
            #   @return [Symbol, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::PredefinedMedia::Value]
            required :value, enum: -> { Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia::Value }

            # @!method initialize(value:, type: :predefined_media)
            #   @param value [Symbol, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::PredefinedMedia::Value] The predefined media to use. `silence` disables background audio.
            #
            #   @param type [Symbol, :predefined_media] Select from predefined media options.

            # The predefined media to use. `silence` disables background audio.
            #
            # @see Telnyx::Models::AI::VoiceSettings::BackgroundAudio::PredefinedMedia#value
            module Value
              extend Telnyx::Internal::Type::Enum

              SILENCE = :silence
              OFFICE = :office

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class MediaURL < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Provide a direct URL to an MP3 file. The audio will loop during the call.
            #
            #   @return [Symbol, :media_url]
            required :type, const: :media_url

            # @!attribute value
            #   HTTPS URL to an MP3 file.
            #
            #   @return [String]
            required :value, String

            # @!method initialize(value:, type: :media_url)
            #   @param value [String] HTTPS URL to an MP3 file.
            #
            #   @param type [Symbol, :media_url] Provide a direct URL to an MP3 file. The audio will loop during the call.
          end

          class MediaName < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Reference a previously uploaded media by its name from Telnyx Media Storage.
            #
            #   @return [Symbol, :media_name]
            required :type, const: :media_name

            # @!attribute value
            #   The `name` of a media asset created via
            #   [Media Storage API](https://developers.telnyx.com/api/media-storage/create-media-storage).
            #   The audio will loop during the call.
            #
            #   @return [String]
            required :value, String

            # @!method initialize(value:, type: :media_name)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::VoiceSettings::BackgroundAudio::MediaName} for more
            #   details.
            #
            #   @param value [String] The `name` of a media asset created via [Media Storage API](https://developers.t
            #
            #   @param type [Symbol, :media_name] Reference a previously uploaded media by its name from Telnyx Media Storage.
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::VoiceSettings::BackgroundAudio::PredefinedMedia, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::MediaURL, Telnyx::Models::AI::VoiceSettings::BackgroundAudio::MediaName)]
        end
      end
    end
  end
end
