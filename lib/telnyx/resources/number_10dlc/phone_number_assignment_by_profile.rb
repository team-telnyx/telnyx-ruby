# frozen_string_literal: true

module Telnyx
  module Resources
    class Number10dlc
      class PhoneNumberAssignmentByProfile
        # Check the status of the task associated with assigning all phone numbers on a
        # messaging profile to a campaign by `taskId`.
        #
        # @overload retrieve(task_id, request_options: {})
        #
        # @param task_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrieveResponse]
        #
        # @see Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrieveParams
        def retrieve(task_id, params = {})
          @client.request(
            method: :get,
            path: ["10dlc/phoneNumberAssignmentByProfile/%1$s", task_id],
            model: Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfilePhoneNumberAssignmentByProfileParams}
        # for more details.
        #
        # This endpoint allows you to link all phone numbers associated with a Messaging
        # Profile to a campaign. **Please note:** if you want to assign phone numbers to a
        # campaign that you did not create with Telnyx 10DLC services, this endpoint
        # allows that provided that you've shared the campaign with Telnyx. In this case,
        # only provide the parameter, `tcrCampaignId`, and not `campaignId`. In all other
        # cases (where the campaign you're assigning was created with Telnyx 10DLC
        # services), only provide `campaignId`, not `tcrCampaignId`.
        #
        # @overload phone_number_assignment_by_profile(messaging_profile_id:, campaign_id: nil, tcr_campaign_id: nil, request_options: {})
        #
        # @param messaging_profile_id [String] The ID of the messaging profile that you want to link to the specified campaign.
        #
        # @param campaign_id [String] The ID of the campaign you want to link to the specified messaging profile. If y
        #
        # @param tcr_campaign_id [String] The TCR ID of the shared campaign you want to link to the specified messaging pr
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfilePhoneNumberAssignmentByProfileResponse]
        #
        # @see Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfilePhoneNumberAssignmentByProfileParams
        def phone_number_assignment_by_profile(params)
          parsed, options =
            Telnyx::Number10dlc::PhoneNumberAssignmentByProfilePhoneNumberAssignmentByProfileParams.dump_request(
              params
            )
          @client.request(
            method: :post,
            path: "10dlc/phoneNumberAssignmentByProfile",
            body: parsed,
            model: Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfilePhoneNumberAssignmentByProfileResponse,
            options: options
          )
        end

        # Check the status of the individual phone number/campaign assignments associated
        # with the supplied `taskId`.
        #
        # @overload retrieve_phone_numbers(task_id, page: nil, records_per_page: nil, request_options: {})
        #
        # @param task_id [String]
        # @param page [Integer]
        # @param records_per_page [Integer]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrievePhoneNumbersResponse]
        #
        # @see Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrievePhoneNumbersParams
        def retrieve_phone_numbers(task_id, params = {})
          parsed, options =
            Telnyx::Number10dlc::PhoneNumberAssignmentByProfileRetrievePhoneNumbersParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["10dlc/phoneNumberAssignmentByProfile/%1$s/phoneNumbers", task_id],
            query: parsed.transform_keys(records_per_page: "recordsPerPage"),
            model: Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileRetrievePhoneNumbersResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
