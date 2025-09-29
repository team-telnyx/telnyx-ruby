# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardDataUsageNotifications#list
    class SimCardDataUsageNotificationListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_sim_card_id
      #   A valid SIM card ID.
      #
      #   @return [String, nil]
      optional :filter_sim_card_id, String

      # @!attribute page_number
      #   The page number to load.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   The size of the page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter_sim_card_id: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param filter_sim_card_id [String] A valid SIM card ID.
      #
      #   @param page_number [Integer] The page number to load.
      #
      #   @param page_size [Integer] The size of the page.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
