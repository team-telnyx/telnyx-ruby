# typed: strong

module Telnyx
  module Models
    class TtsIntegrationRetrieveVoicesResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TtsIntegrationRetrieveVoicesResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[Telnyx::Models::TtsIntegrationRetrieveVoicesResponse::Voice]
        )
      end
      attr_accessor :voices

      sig do
        params(
          voices:
            T::Array[
              Telnyx::Models::TtsIntegrationRetrieveVoicesResponse::Voice::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(voices:)
      end

      sig do
        override.returns(
          {
            voices:
              T::Array[
                Telnyx::Models::TtsIntegrationRetrieveVoicesResponse::Voice
              ]
          }
        )
      end
      def to_hash
      end

      class Voice < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::TtsIntegrationRetrieveVoicesResponse::Voice,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique in the list; no dots. A caller selects the voice as
        # `<engine name>.<voice_id>`.
        sig { returns(String) }
        attr_accessor :voice_id

        # A display string, for example `male`, `female` or `neutral`.
        sig { returns(T.nilable(String)) }
        attr_reader :gender

        sig { params(gender: String).void }
        attr_writer :gender

        # A BCP-47 tag, at most 35 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # A display name.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # A display string.
        sig { returns(T.nilable(String)) }
        attr_reader :provider

        sig { params(provider: String).void }
        attr_writer :provider

        sig do
          params(
            voice_id: String,
            gender: String,
            language: String,
            name: String,
            provider: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique in the list; no dots. A caller selects the voice as
          # `<engine name>.<voice_id>`.
          voice_id:,
          # A display string, for example `male`, `female` or `neutral`.
          gender: nil,
          # A BCP-47 tag, at most 35 characters.
          language: nil,
          # A display name.
          name: nil,
          # A display string.
          provider: nil
        )
        end

        sig do
          override.returns(
            {
              voice_id: String,
              gender: String,
              language: String,
              name: String,
              provider: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
