# typed: strong

module Telnyx
  module Models
    class AgentGatewayRetrieveModelsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AgentGatewayRetrieveModelsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data]
        )
      end
      attr_accessor :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The model's ID on the instance.
        sig { returns(String) }
        attr_accessor :id

        # The Telnyx Inference model behind it, such as `zai-org/GLM-5.3-Flash`.
        sig { returns(String) }
        attr_accessor :model

        # The name a request uses, such as `GLM-5.3-Flash`.
        sig { returns(String) }
        attr_accessor :name

        # When the price was last set.
        sig { returns(T.nilable(Time)) }
        attr_accessor :priced_at

        # A model's price in USD per million tokens.
        sig do
          returns(
            Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data::Pricing
          )
        end
        attr_reader :pricing

        sig do
          params(
            pricing:
              Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data::Pricing::OrHash
          ).void
        end
        attr_writer :pricing

        # A model an instance serves.
        sig do
          params(
            id: String,
            model: String,
            name: String,
            priced_at: T.nilable(Time),
            pricing:
              Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data::Pricing::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The model's ID on the instance.
          id:,
          # The Telnyx Inference model behind it, such as `zai-org/GLM-5.3-Flash`.
          model:,
          # The name a request uses, such as `GLM-5.3-Flash`.
          name:,
          # When the price was last set.
          priced_at:,
          # A model's price in USD per million tokens.
          pricing:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              model: String,
              name: String,
              priced_at: T.nilable(Time),
              pricing:
                Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data::Pricing
            }
          )
        end
        def to_hash
        end

        class Pricing < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data::Pricing,
                Telnyx::Internal::AnyHash
              )
            end

          # USD per million cached input tokens.
          sig { returns(T.nilable(Float)) }
          attr_accessor :cached_input

          # Always `USD`.
          sig { returns(String) }
          attr_accessor :currency

          # USD per million input tokens.
          sig { returns(Float) }
          attr_accessor :input

          # USD per million output tokens.
          sig { returns(Float) }
          attr_accessor :output

          # Always `1M_tokens`.
          sig { returns(String) }
          attr_accessor :unit

          # A model's price in USD per million tokens.
          sig do
            params(
              cached_input: T.nilable(Float),
              currency: String,
              input: Float,
              output: Float,
              unit: String
            ).returns(T.attached_class)
          end
          def self.new(
            # USD per million cached input tokens.
            cached_input:,
            # Always `USD`.
            currency:,
            # USD per million input tokens.
            input:,
            # USD per million output tokens.
            output:,
            # Always `1M_tokens`.
            unit:
          )
          end

          sig do
            override.returns(
              {
                cached_input: T.nilable(Float),
                currency: String,
                input: Float,
                output: Float,
                unit: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
