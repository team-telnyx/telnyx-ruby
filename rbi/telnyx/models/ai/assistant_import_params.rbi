# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantImportParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AssistantImportParams, Telnyx::Internal::AnyHash)
          end

        # Integration secret pointer that refers to the API key for the external provider.
        # This should be an identifier for an integration secret created via
        # /v2/integration_secrets.
        sig { returns(String) }
        attr_accessor :api_key_ref

        # The external provider to import assistants from.
        sig { returns(Telnyx::AI::AssistantImportParams::Provider::OrSymbol) }
        attr_accessor :provider

        sig do
          params(
            api_key_ref: String,
            provider: Telnyx::AI::AssistantImportParams::Provider::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Integration secret pointer that refers to the API key for the external provider.
          # This should be an identifier for an integration secret created via
          # /v2/integration_secrets.
          api_key_ref:,
          # The external provider to import assistants from.
          provider:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              api_key_ref: String,
              provider: Telnyx::AI::AssistantImportParams::Provider::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The external provider to import assistants from.
        module Provider
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::AssistantImportParams::Provider)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ELEVENLABS =
            T.let(
              :elevenlabs,
              Telnyx::AI::AssistantImportParams::Provider::TaggedSymbol
            )
          VAPI =
            T.let(
              :vapi,
              Telnyx::AI::AssistantImportParams::Provider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::AssistantImportParams::Provider::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
