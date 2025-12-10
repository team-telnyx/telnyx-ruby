# typed: strong

module Telnyx
  module Models
    module AI
      class VoiceSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::VoiceSettings, Telnyx::Internal::AnyHash)
          end

        # The voice to be used by the voice assistant. Check the full list of
        # [available voices](https://developers.telnyx.com/api/call-control/list-text-to-speech-voices)
        # via our voices API. To use ElevenLabs, you must reference your ElevenLabs API
        # key as an integration secret under the `api_key_ref` field. See
        # [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        # for details. For Telnyx voices, use `Telnyx.<model_id>.<voice_id>` (e.g.
        # Telnyx.KokoroTTS.af_heart)
        sig { returns(String) }
        attr_accessor :voice

        # The `identifier` for an integration secret
        # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        # that refers to your ElevenLabs API key. Warning: Free plans are unlikely to work
        # with this integration.
        sig { returns(T.nilable(String)) }
        attr_reader :api_key_ref

        sig { params(api_key_ref: String).void }
        attr_writer :api_key_ref

        # Optional background audio to play on the call. Use a predefined media bed, or
        # supply a looped MP3 URL. If a media URL is chosen in the portal, customers can
        # preview it before saving.
        sig do
          returns(
            T.nilable(
              T.any(
                Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia,
                Telnyx::AI::VoiceSettings::BackgroundAudio::MediaURL,
                Telnyx::AI::VoiceSettings::BackgroundAudio::MediaName
              )
            )
          )
        end
        attr_reader :background_audio

        sig do
          params(
            background_audio:
              T.any(
                Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia::OrHash,
                Telnyx::AI::VoiceSettings::BackgroundAudio::MediaURL::OrHash,
                Telnyx::AI::VoiceSettings::BackgroundAudio::MediaName::OrHash
              )
          ).void
        end
        attr_writer :background_audio

        # The speed of the voice in the range [0.25, 2.0]. 1.0 is deafult speed. Larger
        # numbers make the voice faster, smaller numbers make it slower. This is only
        # applicable for Telnyx Natural voices.
        sig { returns(T.nilable(Float)) }
        attr_reader :voice_speed

        sig { params(voice_speed: Float).void }
        attr_writer :voice_speed

        sig do
          params(
            voice: String,
            api_key_ref: String,
            background_audio:
              T.any(
                Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia::OrHash,
                Telnyx::AI::VoiceSettings::BackgroundAudio::MediaURL::OrHash,
                Telnyx::AI::VoiceSettings::BackgroundAudio::MediaName::OrHash
              ),
            voice_speed: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # The voice to be used by the voice assistant. Check the full list of
          # [available voices](https://developers.telnyx.com/api/call-control/list-text-to-speech-voices)
          # via our voices API. To use ElevenLabs, you must reference your ElevenLabs API
          # key as an integration secret under the `api_key_ref` field. See
          # [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          # for details. For Telnyx voices, use `Telnyx.<model_id>.<voice_id>` (e.g.
          # Telnyx.KokoroTTS.af_heart)
          voice:,
          # The `identifier` for an integration secret
          # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          # that refers to your ElevenLabs API key. Warning: Free plans are unlikely to work
          # with this integration.
          api_key_ref: nil,
          # Optional background audio to play on the call. Use a predefined media bed, or
          # supply a looped MP3 URL. If a media URL is chosen in the portal, customers can
          # preview it before saving.
          background_audio: nil,
          # The speed of the voice in the range [0.25, 2.0]. 1.0 is deafult speed. Larger
          # numbers make the voice faster, smaller numbers make it slower. This is only
          # applicable for Telnyx Natural voices.
          voice_speed: nil
        )
        end

        sig do
          override.returns(
            {
              voice: String,
              api_key_ref: String,
              background_audio:
                T.any(
                  Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia,
                  Telnyx::AI::VoiceSettings::BackgroundAudio::MediaURL,
                  Telnyx::AI::VoiceSettings::BackgroundAudio::MediaName
                ),
              voice_speed: Float
            }
          )
        end
        def to_hash
        end

        # Optional background audio to play on the call. Use a predefined media bed, or
        # supply a looped MP3 URL. If a media URL is chosen in the portal, customers can
        # preview it before saving.
        module BackgroundAudio
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia,
                Telnyx::AI::VoiceSettings::BackgroundAudio::MediaURL,
                Telnyx::AI::VoiceSettings::BackgroundAudio::MediaName
              )
            end

          class PredefinedMedia < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia,
                  Telnyx::Internal::AnyHash
                )
              end

            # Select from predefined media options.
            sig { returns(Symbol) }
            attr_accessor :type

            # The predefined media to use. `silence` disables background audio.
            sig do
              returns(
                Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia::Value::OrSymbol
              )
            end
            attr_accessor :value

            sig do
              params(
                value:
                  Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia::Value::OrSymbol,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The predefined media to use. `silence` disables background audio.
              value:,
              # Select from predefined media options.
              type: :predefined_media
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  value:
                    Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia::Value::OrSymbol
                }
              )
            end
            def to_hash
            end

            # The predefined media to use. `silence` disables background audio.
            module Value
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia::Value
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SILENCE =
                T.let(
                  :silence,
                  Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia::Value::TaggedSymbol
                )
              OFFICE =
                T.let(
                  :office,
                  Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia::Value::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::VoiceSettings::BackgroundAudio::PredefinedMedia::Value::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class MediaURL < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::VoiceSettings::BackgroundAudio::MediaURL,
                  Telnyx::Internal::AnyHash
                )
              end

            # Provide a direct URL to an MP3 file. The audio will loop during the call.
            sig { returns(Symbol) }
            attr_accessor :type

            # HTTPS URL to an MP3 file.
            sig { returns(String) }
            attr_accessor :value

            sig do
              params(value: String, type: Symbol).returns(T.attached_class)
            end
            def self.new(
              # HTTPS URL to an MP3 file.
              value:,
              # Provide a direct URL to an MP3 file. The audio will loop during the call.
              type: :media_url
            )
            end

            sig { override.returns({ type: Symbol, value: String }) }
            def to_hash
            end
          end

          class MediaName < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::VoiceSettings::BackgroundAudio::MediaName,
                  Telnyx::Internal::AnyHash
                )
              end

            # Reference a previously uploaded media by its name from Telnyx Media Storage.
            sig { returns(Symbol) }
            attr_accessor :type

            # The `name` of a media asset created via
            # [Media Storage API](https://developers.telnyx.com/api/media-storage/create-media-storage).
            # The audio will loop during the call.
            sig { returns(String) }
            attr_accessor :value

            sig do
              params(value: String, type: Symbol).returns(T.attached_class)
            end
            def self.new(
              # The `name` of a media asset created via
              # [Media Storage API](https://developers.telnyx.com/api/media-storage/create-media-storage).
              # The audio will loop during the call.
              value:,
              # Reference a previously uploaded media by its name from Telnyx Media Storage.
              type: :media_name
            )
            end

            sig { override.returns({ type: Symbol, value: String }) }
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[Telnyx::AI::VoiceSettings::BackgroundAudio::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
