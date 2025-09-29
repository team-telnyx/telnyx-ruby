# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberBlockOrders#create
    class NumberBlockOrderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute range
      #   The phone number range included in the block.
      #
      #   @return [Integer]
      required :range, Integer

      # @!attribute starting_number
      #   Starting phone number block
      #
      #   @return [String]
      required :starting_number, String

      # @!attribute connection_id
      #   Identifies the connection associated with this phone number.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute customer_reference
      #   A customer reference string for customer look ups.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute messaging_profile_id
      #   Identifies the messaging profile associated with the phone number.
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String

      # @!method initialize(range:, starting_number:, connection_id: nil, customer_reference: nil, messaging_profile_id: nil, request_options: {})
      #   @param range [Integer] The phone number range included in the block.
      #
      #   @param starting_number [String] Starting phone number block
      #
      #   @param connection_id [String] Identifies the connection associated with this phone number.
      #
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param messaging_profile_id [String] Identifies the messaging profile associated with the phone number.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
