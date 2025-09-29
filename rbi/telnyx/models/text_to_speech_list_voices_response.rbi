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

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :accent

        sig { params(accent: String).void }
        attr_writer :accent

        sig { returns(T.nilable(String)) }
        attr_reader :age

        sig { params(age: String).void }
        attr_writer :age

        sig { returns(T.nilable(String)) }
        attr_reader :gender

        sig { params(gender: String).void }
        attr_writer :gender

        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :provider

        sig { params(provider: String).void }
        attr_writer :provider

        sig do
          params(
            id: String,
            accent: String,
            age: String,
            gender: String,
            label: String,
            language: String,
            name: String,
            provider: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          accent: nil,
          age: nil,
          gender: nil,
          label: nil,
          language: nil,
          name: nil,
          provider: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              accent: String,
              age: String,
              gender: String,
              label: String,
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
