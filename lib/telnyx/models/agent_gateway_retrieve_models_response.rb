# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AgentGateways#retrieve_models
    class AgentGatewayRetrieveModelsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data] }

      # @!method initialize(data:)
      #   @param data [Array<Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   The model's ID on the instance.
        #
        #   @return [String]
        required :id, String

        # @!attribute model
        #   The Telnyx Inference model behind it, such as `zai-org/GLM-5.3-Flash`.
        #
        #   @return [String]
        required :model, String

        # @!attribute name
        #   The name a request uses, such as `GLM-5.3-Flash`.
        #
        #   @return [String]
        required :name, String

        # @!attribute priced_at
        #   When the price was last set.
        #
        #   @return [Time, nil]
        required :priced_at, Time, nil?: true

        # @!attribute pricing
        #   A model's price in USD per million tokens.
        #
        #   @return [Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data::Pricing]
        required :pricing, -> { Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data::Pricing }

        # @!method initialize(id:, model:, name:, priced_at:, pricing:)
        #   A model an instance serves.
        #
        #   @param id [String] The model's ID on the instance.
        #
        #   @param model [String] The Telnyx Inference model behind it, such as `zai-org/GLM-5.3-Flash`.
        #
        #   @param name [String] The name a request uses, such as `GLM-5.3-Flash`.
        #
        #   @param priced_at [Time, nil] When the price was last set.
        #
        #   @param pricing [Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data::Pricing] A model's price in USD per million tokens.

        # @see Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data#pricing
        class Pricing < Telnyx::Internal::Type::BaseModel
          # @!attribute cached_input
          #   USD per million cached input tokens.
          #
          #   @return [Float, nil]
          required :cached_input, Float, nil?: true

          # @!attribute currency
          #   Always `USD`.
          #
          #   @return [String]
          required :currency, String

          # @!attribute input
          #   USD per million input tokens.
          #
          #   @return [Float]
          required :input, Float

          # @!attribute output
          #   USD per million output tokens.
          #
          #   @return [Float]
          required :output, Float

          # @!attribute unit
          #   Always `1M_tokens`.
          #
          #   @return [String]
          required :unit, String

          # @!method initialize(cached_input:, currency:, input:, output:, unit:)
          #   A model's price in USD per million tokens.
          #
          #   @param cached_input [Float, nil] USD per million cached input tokens.
          #
          #   @param currency [String] Always `USD`.
          #
          #   @param input [Float] USD per million input tokens.
          #
          #   @param output [Float] USD per million output tokens.
          #
          #   @param unit [String] Always `1M_tokens`.
        end
      end
    end
  end
end
