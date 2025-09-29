# typed: strong

module Telnyx
  module Models
    class TextToSpeechListVoicesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::TextToSpeechListVoicesParams, Telnyx::Internal::AnyHash)
        end

      # Reference to your ElevenLabs API key stored in the Telnyx Portal
      sig { returns(T.nilable(String)) }
      attr_reader :elevenlabs_api_key_ref

      sig { params(elevenlabs_api_key_ref: String).void }
      attr_writer :elevenlabs_api_key_ref

      # Filter voices by provider
      sig do
        returns(
          T.nilable(Telnyx::TextToSpeechListVoicesParams::Provider::OrSymbol)
        )
      end
      attr_reader :provider

      sig do
        params(
          provider: Telnyx::TextToSpeechListVoicesParams::Provider::OrSymbol
        ).void
      end
      attr_writer :provider

      sig do
        params(
          elevenlabs_api_key_ref: String,
          provider: Telnyx::TextToSpeechListVoicesParams::Provider::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Reference to your ElevenLabs API key stored in the Telnyx Portal
        elevenlabs_api_key_ref: nil,
        # Filter voices by provider
        provider: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            elevenlabs_api_key_ref: String,
            provider: Telnyx::TextToSpeechListVoicesParams::Provider::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter voices by provider
      module Provider
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TextToSpeechListVoicesParams::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AWS =
          T.let(
            :aws,
            Telnyx::TextToSpeechListVoicesParams::Provider::TaggedSymbol
          )
        AZURE =
          T.let(
            :azure,
            Telnyx::TextToSpeechListVoicesParams::Provider::TaggedSymbol
          )
        ELEVENLABS =
          T.let(
            :elevenlabs,
            Telnyx::TextToSpeechListVoicesParams::Provider::TaggedSymbol
          )
        TELNYX =
          T.let(
            :telnyx,
            Telnyx::TextToSpeechListVoicesParams::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TextToSpeechListVoicesParams::Provider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
