# typed: strong

module Telnyx
  module Models
    class SpeechToTextListProvidersParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::SpeechToTextListProvidersParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Filter to entries for a specific STT provider. The enum mirrors the providers
      # advertised across the speech-to-text spec (including `google` and `telnyx`,
      # which are accepted as WebSocket transcription engines). A provider that has no
      # models currently registered for any service type will return an empty `data`
      # array rather than an error.
      sig do
        returns(
          T.nilable(Telnyx::SpeechToTextListProvidersParams::Provider::OrSymbol)
        )
      end
      attr_reader :provider

      sig do
        params(
          provider: Telnyx::SpeechToTextListProvidersParams::Provider::OrSymbol
        ).void
      end
      attr_writer :provider

      # Filter to entries that support the given service type. For backward
      # compatibility with the values that briefly shipped before the product-aligned
      # rename, the legacy aliases `file_transcription`, `in_call_transcription`, and
      # `ai_assistant_transcription` are silently accepted and normalized to
      # `file_based`, `in_call`, and `ai_assistant` respectively. The response always
      # emits the canonical (post-rename) values.
      sig do
        returns(
          T.nilable(
            Telnyx::SpeechToTextListProvidersParams::ServiceType::OrSymbol
          )
        )
      end
      attr_reader :service_type

      sig do
        params(
          service_type:
            Telnyx::SpeechToTextListProvidersParams::ServiceType::OrSymbol
        ).void
      end
      attr_writer :service_type

      sig do
        params(
          provider: Telnyx::SpeechToTextListProvidersParams::Provider::OrSymbol,
          service_type:
            Telnyx::SpeechToTextListProvidersParams::ServiceType::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter to entries for a specific STT provider. The enum mirrors the providers
        # advertised across the speech-to-text spec (including `google` and `telnyx`,
        # which are accepted as WebSocket transcription engines). A provider that has no
        # models currently registered for any service type will return an empty `data`
        # array rather than an error.
        provider: nil,
        # Filter to entries that support the given service type. For backward
        # compatibility with the values that briefly shipped before the product-aligned
        # rename, the legacy aliases `file_transcription`, `in_call_transcription`, and
        # `ai_assistant_transcription` are silently accepted and normalized to
        # `file_based`, `in_call`, and `ai_assistant` respectively. The response always
        # emits the canonical (post-rename) values.
        service_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            provider:
              Telnyx::SpeechToTextListProvidersParams::Provider::OrSymbol,
            service_type:
              Telnyx::SpeechToTextListProvidersParams::ServiceType::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter to entries for a specific STT provider. The enum mirrors the providers
      # advertised across the speech-to-text spec (including `google` and `telnyx`,
      # which are accepted as WebSocket transcription engines). A provider that has no
      # models currently registered for any service type will return an empty `data`
      # array rather than an error.
      module Provider
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::SpeechToTextListProvidersParams::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEEPGRAM =
          T.let(
            :deepgram,
            Telnyx::SpeechToTextListProvidersParams::Provider::TaggedSymbol
          )
        SPEECHMATICS =
          T.let(
            :speechmatics,
            Telnyx::SpeechToTextListProvidersParams::Provider::TaggedSymbol
          )
        ASSEMBLYAI =
          T.let(
            :assemblyai,
            Telnyx::SpeechToTextListProvidersParams::Provider::TaggedSymbol
          )
        XAI =
          T.let(
            :xai,
            Telnyx::SpeechToTextListProvidersParams::Provider::TaggedSymbol
          )
        SONIOX =
          T.let(
            :soniox,
            Telnyx::SpeechToTextListProvidersParams::Provider::TaggedSymbol
          )
        AZURE =
          T.let(
            :azure,
            Telnyx::SpeechToTextListProvidersParams::Provider::TaggedSymbol
          )
        OPENAI =
          T.let(
            :openai,
            Telnyx::SpeechToTextListProvidersParams::Provider::TaggedSymbol
          )
        GOOGLE =
          T.let(
            :google,
            Telnyx::SpeechToTextListProvidersParams::Provider::TaggedSymbol
          )
        TELNYX =
          T.let(
            :telnyx,
            Telnyx::SpeechToTextListProvidersParams::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SpeechToTextListProvidersParams::Provider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Filter to entries that support the given service type. For backward
      # compatibility with the values that briefly shipped before the product-aligned
      # rename, the legacy aliases `file_transcription`, `in_call_transcription`, and
      # `ai_assistant_transcription` are silently accepted and normalized to
      # `file_based`, `in_call`, and `ai_assistant` respectively. The response always
      # emits the canonical (post-rename) values.
      module ServiceType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::SpeechToTextListProvidersParams::ServiceType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STREAMING =
          T.let(
            :streaming,
            Telnyx::SpeechToTextListProvidersParams::ServiceType::TaggedSymbol
          )
        FILE_BASED =
          T.let(
            :file_based,
            Telnyx::SpeechToTextListProvidersParams::ServiceType::TaggedSymbol
          )
        IN_CALL =
          T.let(
            :in_call,
            Telnyx::SpeechToTextListProvidersParams::ServiceType::TaggedSymbol
          )
        AI_ASSISTANT =
          T.let(
            :ai_assistant,
            Telnyx::SpeechToTextListProvidersParams::ServiceType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SpeechToTextListProvidersParams::ServiceType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
