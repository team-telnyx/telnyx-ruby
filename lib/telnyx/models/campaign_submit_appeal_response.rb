# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Campaign#submit_appeal
    class CampaignSubmitAppealResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute appealed_at
      #   Timestamp when the appeal was submitted
      #
      #   @return [Time, nil]
      optional :appealed_at, Time

      # @!method initialize(appealed_at: nil)
      #   @param appealed_at [Time] Timestamp when the appeal was submitted
    end
  end
end
