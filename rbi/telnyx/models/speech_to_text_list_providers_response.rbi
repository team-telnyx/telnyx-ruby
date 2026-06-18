# typed: strong

module Telnyx
  module Models
    class SpeechToTextListProvidersResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SpeechToTextListProvidersResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[Telnyx::Models::SpeechToTextListProvidersResponse::Data]
        )
      end
      attr_accessor :data

      sig { returns(Telnyx::Models::SpeechToTextListProvidersResponse::Meta) }
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::Models::SpeechToTextListProvidersResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      # List of supported STT providers and models.
      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::SpeechToTextListProvidersResponse::Data::OrHash
            ],
          meta: Telnyx::Models::SpeechToTextListProvidersResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Telnyx::Models::SpeechToTextListProvidersResponse::Data],
            meta: Telnyx::Models::SpeechToTextListProvidersResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SpeechToTextListProvidersResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Provider-scoped model name.
        sig { returns(String) }
        attr_accessor :model

        # STT provider name.
        sig { returns(String) }
        attr_accessor :provider

        # Service surfaces this (provider, model) supports. When the request filters by
        # `service_type`, only the matching nested entry is returned for each matching
        # model.
        sig do
          returns(
            T::Array[
              Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType
            ]
          )
        end
        attr_accessor :service_types

        # A (provider, model) tuple along with the service surfaces it supports. Each
        # entry in `service_types` describes one surface and the languages accepted on it.
        sig do
          params(
            model: String,
            provider: String,
            service_types:
              T::Array[
                Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Provider-scoped model name.
          model:,
          # STT provider name.
          provider:,
          # Service surfaces this (provider, model) supports. When the request filters by
          # `service_type`, only the matching nested entry is returned for each matching
          # model.
          service_types:
        )
        end

        sig do
          override.returns(
            {
              model: String,
              provider: String,
              service_types:
                T::Array[
                  Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType
                ]
            }
          )
        end
        def to_hash
        end

        class ServiceType < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType,
                Telnyx::Internal::AnyHash
              )
            end

          # Languages accepted on this service surface, in the provider's native code
          # format. `auto` indicates the provider performs language detection.
          sig { returns(T::Array[String]) }
          attr_accessor :languages

          # Service surface a model is available on. `ai_assistant` is the STT surface
          # configured via Call Control voice-assistant transcription; it covers both
          # live-streaming and non-streaming/batch models (matching the
          # `TranscriptionConfig.model` enum on `call-control` voice assistants).
          sig { returns(Telnyx::SttServiceType::TaggedSymbol) }
          attr_accessor :type

          # A supported service surface for a given (provider, model), along with the
          # language codes accepted on that surface. Language support can differ per surface
          # — for example, a model may accept a narrower language set for streaming than for
          # file transcription.
          sig do
            params(
              languages: T::Array[String],
              type: Telnyx::SttServiceType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Languages accepted on this service surface, in the provider's native code
            # format. `auto` indicates the provider performs language detection.
            languages:,
            # Service surface a model is available on. `ai_assistant` is the STT surface
            # configured via Call Control voice-assistant transcription; it covers both
            # live-streaming and non-streaming/batch models (matching the
            # `TranscriptionConfig.model` enum on `call-control` voice assistants).
            type:
          )
          end

          sig do
            override.returns(
              {
                languages: T::Array[String],
                type: Telnyx::SttServiceType::TaggedSymbol
              }
            )
          end
          def to_hash
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SpeechToTextListProvidersResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        # Total number of entries returned.
        sig { returns(Integer) }
        attr_accessor :total

        sig { params(total: Integer).returns(T.attached_class) }
        def self.new(
          # Total number of entries returned.
          total:
        )
        end

        sig { override.returns({ total: Integer }) }
        def to_hash
        end
      end
    end
  end
end
