# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::PhoneNumberCampaigns#create
      class PhoneNumberCampaign < Telnyx::Internal::Type::BaseModel
        # @!attribute campaign_id
        #   For shared campaigns, this is the TCR campaign ID, otherwise it is the campaign
        #   ID
        #
        #   @return [String]
        required :campaign_id, String, api_name: :campaignId

        # @!attribute created_at
        #
        #   @return [String]
        required :created_at, String, api_name: :createdAt

        # @!attribute phone_number
        #
        #   @return [String]
        required :phone_number, String, api_name: :phoneNumber

        # @!attribute updated_at
        #
        #   @return [String]
        required :updated_at, String, api_name: :updatedAt

        # @!attribute assignment_status
        #   The assignment status of the number.
        #
        #   @return [Symbol, Telnyx::Models::Messaging10dlc::PhoneNumberCampaign::AssignmentStatus, nil]
        optional :assignment_status,
                 enum: -> { Telnyx::Messaging10dlc::PhoneNumberCampaign::AssignmentStatus },
                 api_name: :assignmentStatus

        # @!attribute brand_id
        #   Brand ID. Empty if the number is associated to a shared campaign.
        #
        #   @return [String, nil]
        optional :brand_id, String, api_name: :brandId

        # @!attribute failure_reasons
        #   Extra info about a failure to assign/unassign a number. Relevant only if the
        #   assignmentStatus is either FAILED_ASSIGNMENT or FAILED_UNASSIGNMENT
        #
        #   @return [String, nil]
        optional :failure_reasons, String, api_name: :failureReasons

        # @!attribute non_tmobile_number_mapping_status
        #   The assignment status of the number towards other carriers.
        #
        #   @return [String, nil]
        optional :non_tmobile_number_mapping_status, String, api_name: :nonTmobileNumberMappingStatus

        # @!attribute tcr_brand_id
        #   TCR's alphanumeric ID for the brand.
        #
        #   @return [String, nil]
        optional :tcr_brand_id, String, api_name: :tcrBrandId

        # @!attribute tcr_campaign_id
        #   TCR's alphanumeric ID for the campaign.
        #
        #   @return [String, nil]
        optional :tcr_campaign_id, String, api_name: :tcrCampaignId

        # @!attribute telnyx_campaign_id
        #   Campaign ID. Empty if the number is associated to a shared campaign.
        #
        #   @return [String, nil]
        optional :telnyx_campaign_id, String, api_name: :telnyxCampaignId

        # @!attribute tmobile_number_mapping_status
        #   The T-Mobile assignment status of the number.
        #
        #   @return [String, nil]
        optional :tmobile_number_mapping_status, String, api_name: :tmobileNumberMappingStatus

        # @!method initialize(campaign_id:, created_at:, phone_number:, updated_at:, assignment_status: nil, brand_id: nil, failure_reasons: nil, non_tmobile_number_mapping_status: nil, tcr_brand_id: nil, tcr_campaign_id: nil, telnyx_campaign_id: nil, tmobile_number_mapping_status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Messaging10dlc::PhoneNumberCampaign} for more details.
        #
        #   @param campaign_id [String] For shared campaigns, this is the TCR campaign ID, otherwise it is the campaign
        #
        #   @param created_at [String]
        #
        #   @param phone_number [String]
        #
        #   @param updated_at [String]
        #
        #   @param assignment_status [Symbol, Telnyx::Models::Messaging10dlc::PhoneNumberCampaign::AssignmentStatus] The assignment status of the number.
        #
        #   @param brand_id [String] Brand ID. Empty if the number is associated to a shared campaign.
        #
        #   @param failure_reasons [String] Extra info about a failure to assign/unassign a number. Relevant only if the ass
        #
        #   @param non_tmobile_number_mapping_status [String] The assignment status of the number towards other carriers.
        #
        #   @param tcr_brand_id [String] TCR's alphanumeric ID for the brand.
        #
        #   @param tcr_campaign_id [String] TCR's alphanumeric ID for the campaign.
        #
        #   @param telnyx_campaign_id [String] Campaign ID. Empty if the number is associated to a shared campaign.
        #
        #   @param tmobile_number_mapping_status [String] The T-Mobile assignment status of the number.

        # The assignment status of the number.
        #
        # @see Telnyx::Models::Messaging10dlc::PhoneNumberCampaign#assignment_status
        module AssignmentStatus
          extend Telnyx::Internal::Type::Enum

          FAILED_ASSIGNMENT = :FAILED_ASSIGNMENT
          PENDING_ASSIGNMENT = :PENDING_ASSIGNMENT
          ASSIGNED = :ASSIGNED
          PENDING_UNASSIGNMENT = :PENDING_UNASSIGNMENT
          FAILED_UNASSIGNMENT = :FAILED_UNASSIGNMENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
