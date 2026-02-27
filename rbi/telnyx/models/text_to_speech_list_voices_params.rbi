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

      # API key for providers that require one to list voices (e.g. ElevenLabs).
      sig { returns(T.nilable(String)) }
      attr_reader :api_key

      sig { params(api_key: String).void }
      attr_writer :api_key

      # Filter voices by provider. If omitted, voices from all providers are returned.
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
          api_key: String,
          provider: Telnyx::TextToSpeechListVoicesParams::Provider::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # API key for providers that require one to list voices (e.g. ElevenLabs).
        api_key: nil,
        # Filter voices by provider. If omitted, voices from all providers are returned.
        provider: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            api_key: String,
            provider: Telnyx::TextToSpeechListVoicesParams::Provider::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter voices by provider. If omitted, voices from all providers are returned.
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
        TELNYX =
          T.let(
            :telnyx,
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
        MINIMAX =
          T.let(
            :minimax,
            Telnyx::TextToSpeechListVoicesParams::Provider::TaggedSymbol
          )
        RIME =
          T.let(
            :rime,
            Telnyx::TextToSpeechListVoicesParams::Provider::TaggedSymbol
          )
        RESEMBLE =
          T.let(
            :resemble,
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
