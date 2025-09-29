# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardOrderPreview#preview
    class SimCardOrderPreviewPreviewResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data, nil]
      optional :data, -> { Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data]

      # @see Telnyx::Models::SimCardOrderPreviewPreviewResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute quantity
        #   The amount of SIM cards requested in the SIM card order.
        #
        #   @return [Integer, nil]
        optional :quantity, Integer

        # @!attribute shipping_cost
        #
        #   @return [Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::ShippingCost, nil]
        optional :shipping_cost, -> { Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::ShippingCost }

        # @!attribute sim_cards_cost
        #
        #   @return [Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::SimCardsCost, nil]
        optional :sim_cards_cost, -> { Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::SimCardsCost }

        # @!attribute total_cost
        #
        #   @return [Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::TotalCost, nil]
        optional :total_cost, -> { Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::TotalCost }

        response_only do
          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(quantity: nil, record_type: nil, shipping_cost: nil, sim_cards_cost: nil, total_cost: nil)
        #   @param quantity [Integer] The amount of SIM cards requested in the SIM card order.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param shipping_cost [Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::ShippingCost]
        #
        #   @param sim_cards_cost [Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::SimCardsCost]
        #
        #   @param total_cost [Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data::TotalCost]

        # @see Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data#shipping_cost
        class ShippingCost < Telnyx::Internal::Type::BaseModel
          # @!attribute amount
          #   A string representing the cost amount.
          #
          #   @return [String, nil]
          optional :amount, String

          # @!attribute currency
          #   ISO 4217 currency string.
          #
          #   @return [String, nil]
          optional :currency, String

          # @!method initialize(amount: nil, currency: nil)
          #   @param amount [String] A string representing the cost amount.
          #
          #   @param currency [String] ISO 4217 currency string.
        end

        # @see Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data#sim_cards_cost
        class SimCardsCost < Telnyx::Internal::Type::BaseModel
          # @!attribute amount
          #   A string representing the cost amount.
          #
          #   @return [String, nil]
          optional :amount, String

          # @!attribute currency
          #   ISO 4217 currency string.
          #
          #   @return [String, nil]
          optional :currency, String

          # @!method initialize(amount: nil, currency: nil)
          #   @param amount [String] A string representing the cost amount.
          #
          #   @param currency [String] ISO 4217 currency string.
        end

        # @see Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data#total_cost
        class TotalCost < Telnyx::Internal::Type::BaseModel
          # @!attribute amount
          #   A string representing the cost amount.
          #
          #   @return [String, nil]
          optional :amount, String

          # @!attribute currency
          #   ISO 4217 currency string.
          #
          #   @return [String, nil]
          optional :currency, String

          # @!method initialize(amount: nil, currency: nil)
          #   @param amount [String] A string representing the cost amount.
          #
          #   @param currency [String] ISO 4217 currency string.
        end
      end
    end
  end
end
