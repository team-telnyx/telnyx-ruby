# frozen_string_literal: true

module Telnyx
  module Models
    class CampaignSharingStatus < Telnyx::Internal::Type::BaseModel
      # @!attribute downstream_cnp_id
      #
      #   @return [String, nil]
      optional :downstream_cnp_id, String, api_name: :downstreamCnpId

      # @!attribute shared_date
      #
      #   @return [String, nil]
      optional :shared_date, String, api_name: :sharedDate

      # @!attribute sharing_status
      #
      #   @return [String, nil]
      optional :sharing_status, String, api_name: :sharingStatus

      # @!attribute status_date
      #
      #   @return [String, nil]
      optional :status_date, String, api_name: :statusDate

      # @!attribute upstream_cnp_id
      #
      #   @return [String, nil]
      optional :upstream_cnp_id, String, api_name: :upstreamCnpId

      # @!method initialize(downstream_cnp_id: nil, shared_date: nil, sharing_status: nil, status_date: nil, upstream_cnp_id: nil)
      #   @param downstream_cnp_id [String]
      #   @param shared_date [String]
      #   @param sharing_status [String]
      #   @param status_date [String]
      #   @param upstream_cnp_id [String]
    end
  end
end
