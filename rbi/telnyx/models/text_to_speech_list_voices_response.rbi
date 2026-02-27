# typed: strong

module Telnyx
  module Models
    class TextToSpeechListVoicesResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TextToSpeechListVoicesResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::TextToSpeechListVoicesResponse::Voice]
          )
        )
      end
      attr_reader :voices

      sig do
        params(
          voices:
            T::Array[
              Telnyx::Models::TextToSpeechListVoicesResponse::Voice::OrHash
            ]
        ).void
      end
      attr_writer :voices

      # List of available voices.
      sig do
        params(
          voices:
            T::Array[
              Telnyx::Models::TextToSpeechListVoicesResponse::Voice::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(voices: nil)
      end

      sig do
        override.returns(
          {
            voices:
              T::Array[Telnyx::Models::TextToSpeechListVoicesResponse::Voice]
          }
        )
      end
      def to_hash
      end

      class Voice < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::TextToSpeechListVoicesResponse::Voice,
              Telnyx::Internal::AnyHash
            )
          end

        # Voice gender.
        sig { returns(T.nilable(String)) }
        attr_reader :gender

        sig { params(gender: String).void }
        attr_writer :gender

        # Language code.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # Voice name.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The TTS provider.
        sig { returns(T.nilable(String)) }
        attr_reader :provider

        sig { params(provider: String).void }
        attr_writer :provider

        # Voice identifier.
        sig { returns(T.nilable(String)) }
        attr_reader :voice_id

        sig { params(voice_id: String).void }
        attr_writer :voice_id

        # A voice available for text-to-speech synthesis.
        sig do
          params(
            gender: String,
            language: String,
            name: String,
            provider: String,
            voice_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Voice gender.
          gender: nil,
          # Language code.
          language: nil,
          # Voice name.
          name: nil,
          # The TTS provider.
          provider: nil,
          # Voice identifier.
          voice_id: nil
        )
        end

        sig do
          override.returns(
            {
              gender: String,
              language: String,
              name: String,
              provider: String,
              voice_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
