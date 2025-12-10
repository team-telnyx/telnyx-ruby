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
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0,
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember1,
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember2
              )
            )
          )
        end
        attr_reader :background_audio

        sig do
          params(
            background_audio:
              T.any(
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::OrHash,
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember1::OrHash,
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember2::OrHash
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
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::OrHash,
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember1::OrHash,
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember2::OrHash
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
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0,
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember1,
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember2
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
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0,
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember1,
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember2
              )
            end

          class UnionMember0 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0,
                  Telnyx::Internal::AnyHash
                )
              end

            # Select from predefined media options.
            sig do
              returns(
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Type::OrSymbol
              )
            end
            attr_accessor :type

            # The predefined media to use. `silence` disables background audio.
            sig do
              returns(
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Value::OrSymbol
              )
            end
            attr_accessor :value

            sig do
              params(
                type:
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Type::OrSymbol,
                value:
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Value::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Select from predefined media options.
              type:,
              # The predefined media to use. `silence` disables background audio.
              value:
            )
            end

            sig do
              override.returns(
                {
                  type:
                    Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Type::OrSymbol,
                  value:
                    Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Value::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Select from predefined media options.
            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PREDEFINED_MEDIA =
                T.let(
                  :predefined_media,
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The predefined media to use. `silence` disables background audio.
            module Value
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Value
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SILENCE =
                T.let(
                  :silence,
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Value::TaggedSymbol
                )
              OFFICE =
                T.let(
                  :office,
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Value::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember0::Value::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember1 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember1,
                  Telnyx::Internal::AnyHash
                )
              end

            # Provide a direct URL to an MP3 file. The audio will loop during the call.
            sig do
              returns(
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember1::Type::OrSymbol
              )
            end
            attr_accessor :type

            # HTTPS URL to an MP3 file.
            sig { returns(String) }
            attr_accessor :value

            sig do
              params(
                type:
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember1::Type::OrSymbol,
                value: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Provide a direct URL to an MP3 file. The audio will loop during the call.
              type:,
              # HTTPS URL to an MP3 file.
              value:
            )
            end

            sig do
              override.returns(
                {
                  type:
                    Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember1::Type::OrSymbol,
                  value: String
                }
              )
            end
            def to_hash
            end

            # Provide a direct URL to an MP3 file. The audio will loop during the call.
            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember1::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MEDIA_URL =
                T.let(
                  :media_url,
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember1::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember1::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember2 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember2,
                  Telnyx::Internal::AnyHash
                )
              end

            # Reference a previously uploaded media by its name from Telnyx Media Storage.
            sig do
              returns(
                Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember2::Type::OrSymbol
              )
            end
            attr_accessor :type

            # The `name` of a media asset created via
            # [Media Storage API](https://developers.telnyx.com/api/media-storage/create-media-storage).
            # The audio will loop during the call.
            sig { returns(String) }
            attr_accessor :value

            sig do
              params(
                type:
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember2::Type::OrSymbol,
                value: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Reference a previously uploaded media by its name from Telnyx Media Storage.
              type:,
              # The `name` of a media asset created via
              # [Media Storage API](https://developers.telnyx.com/api/media-storage/create-media-storage).
              # The audio will loop during the call.
              value:
            )
            end

            sig do
              override.returns(
                {
                  type:
                    Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember2::Type::OrSymbol,
                  value: String
                }
              )
            end
            def to_hash
            end

            # Reference a previously uploaded media by its name from Telnyx Media Storage.
            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember2::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MEDIA_NAME =
                T.let(
                  :media_name,
                  Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember2::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::VoiceSettings::BackgroundAudio::UnionMember2::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
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
