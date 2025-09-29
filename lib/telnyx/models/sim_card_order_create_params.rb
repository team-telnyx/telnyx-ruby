# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardOrders#create
    class SimCardOrderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute address_id
      #   Uniquely identifies the address for the order.
      #
      #   @return [String]
      required :address_id, String

      # @!attribute quantity
      #   The amount of SIM cards to order.
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!method initialize(address_id:, quantity:, request_options: {})
      #   @param address_id [String] Uniquely identifies the address for the order.
      #
      #   @param quantity [Integer] The amount of SIM cards to order.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
