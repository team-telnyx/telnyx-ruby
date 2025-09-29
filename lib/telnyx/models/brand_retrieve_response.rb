# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Brand#retrieve
    class BrandRetrieveResponse < Telnyx::Models::TelnyxBrand
      # @!attribute assigned_campaigns_count
      #   Number of campaigns associated with the brand
      #
      #   @return [Float, nil]
      optional :assigned_campaigns_count, Float, api_name: :assignedCampaignsCount

      # @!method initialize(assigned_campaigns_count: nil)
      #   Telnyx-specific extensions to The Campaign Registry's `Brand` type
      #
      #   @param assigned_campaigns_count [Float] Number of campaigns associated with the brand
    end
  end
end
