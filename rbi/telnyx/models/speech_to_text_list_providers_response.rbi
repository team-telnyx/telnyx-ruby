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

        # Languages this (provider, model) accepts, in the provider's native code format.
        # `auto` indicates the provider performs language detection.
        sig { returns(T::Array[String]) }
        attr_accessor :languages

        # Provider-scoped model name.
        sig { returns(String) }
        attr_accessor :model

        # STT provider name.
        sig { returns(String) }
        attr_accessor :provider

        # Service surfaces this (provider, model) supports.
        sig do
          returns(
            T::Array[
              Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType::TaggedSymbol
            ]
          )
        end
        attr_accessor :service_types

        # A (provider, model) tuple along with its supported service types and languages.
        sig do
          params(
            languages: T::Array[String],
            model: String,
            provider: String,
            service_types:
              T::Array[
                Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType::OrSymbol
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Languages this (provider, model) accepts, in the provider's native code format.
          # `auto` indicates the provider performs language detection.
          languages:,
          # Provider-scoped model name.
          model:,
          # STT provider name.
          provider:,
          # Service surfaces this (provider, model) supports.
          service_types:
        )
        end

        sig do
          override.returns(
            {
              languages: T::Array[String],
              model: String,
              provider: String,
              service_types:
                T::Array[
                  Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType::TaggedSymbol
                ]
            }
          )
        end
        def to_hash
        end

        # Service surface a model is available on.
        module ServiceType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STREAMING =
            T.let(
              :streaming,
              Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType::TaggedSymbol
            )
          FILE_TRANSCRIPTION =
            T.let(
              :file_transcription,
              Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType::TaggedSymbol
            )
          IN_CALL_TRANSCRIPTION =
            T.let(
              :in_call_transcription,
              Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType::TaggedSymbol
              ]
            )
          end
          def self.values
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
