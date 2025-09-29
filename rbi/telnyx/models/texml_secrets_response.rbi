# typed: strong

module Telnyx
  module Models
    class TexmlSecretsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::TexmlSecretsResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::Models::TexmlSecretsResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::TexmlSecretsResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::TexmlSecretsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::Models::TexmlSecretsResponse::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::TexmlSecretsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          returns(
            T.nilable(
              Telnyx::Models::TexmlSecretsResponse::Data::Value::TaggedSymbol
            )
          )
        end
        attr_reader :value

        sig do
          params(
            value: Telnyx::Models::TexmlSecretsResponse::Data::Value::OrSymbol
          ).void
        end
        attr_writer :value

        sig do
          params(
            name: String,
            value: Telnyx::Models::TexmlSecretsResponse::Data::Value::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              name: String,
              value:
                Telnyx::Models::TexmlSecretsResponse::Data::Value::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Value
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Models::TexmlSecretsResponse::Data::Value)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REDACTED =
            T.let(
              :REDACTED,
              Telnyx::Models::TexmlSecretsResponse::Data::Value::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::TexmlSecretsResponse::Data::Value::TaggedSymbol
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
