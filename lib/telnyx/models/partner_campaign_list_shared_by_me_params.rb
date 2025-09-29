# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PartnerCampaigns#list_shared_by_me
    class PartnerCampaignListSharedByMeParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page
      #   The 1-indexed page number to get. The default value is `1`.
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute records_per_page
      #   The amount of records per page, limited to between 1 and 500 inclusive. The
      #   default value is `10`.
      #
      #   @return [Integer, nil]
      optional :records_per_page, Integer

      # @!method initialize(page: nil, records_per_page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PartnerCampaignListSharedByMeParams} for more details.
      #
      #   @param page [Integer] The 1-indexed page number to get. The default value is `1`.
      #
      #   @param records_per_page [Integer] The amount of records per page, limited to between 1 and 500 inclusive. The defa
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
