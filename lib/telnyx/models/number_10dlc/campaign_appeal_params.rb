# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      # @see Telnyx::Resources::Number10dlc::Campaign#appeal
      class CampaignAppealParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute appeal_reason
        #   Detailed explanation of why the campaign should be reconsidered and what changes
        #   have been made to address the rejection reason.
        #
        #   @return [String]
        required :appeal_reason, String

        # @!method initialize(appeal_reason:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Number10dlc::CampaignAppealParams} for more details.
        #
        #   @param appeal_reason [String] Detailed explanation of why the campaign should be reconsidered and what changes
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
