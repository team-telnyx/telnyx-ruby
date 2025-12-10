# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::Brand#retrieve
      class BrandRetrieveResponse < Telnyx::Models::Messaging10dlc::TelnyxBrand
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
end
