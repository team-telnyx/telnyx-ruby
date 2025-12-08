# frozen_string_literal: true

module Telnyx
  module Resources
    class PhoneNumberAssignmentByProfile
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PhoneNumberAssignmentByProfileAssignParams} for more details.
      #
      # This endpoint allows you to link all phone numbers associated with a Messaging
      # Profile to a campaign. **Please note:** if you want to assign phone numbers to a
      # campaign that you did not create with Telnyx 10DLC services, this endpoint
      # allows that provided that you've shared the campaign with Telnyx. In this case,
      # only provide the parameter, `tcrCampaignId`, and not `campaignId`. In all other
      # cases (where the campaign you're assigning was created with Telnyx 10DLC
      # services), only provide `campaignId`, not `tcrCampaignId`.
      #
      # @overload assign(messaging_profile_id:, campaign_id: nil, tcr_campaign_id: nil, request_options: {})
      #
      # @param messaging_profile_id [String] The ID of the messaging profile that you want to link to the specified campaign.
      #
      # @param campaign_id [String] The ID of the campaign you want to link to the specified messaging profile. If y
      #
      # @param tcr_campaign_id [String] The TCR ID of the shared campaign you want to link to the specified messaging pr
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PhoneNumberAssignmentByProfileAssignResponse]
      #
      # @see Telnyx::Models::PhoneNumberAssignmentByProfileAssignParams
      def assign(params)
        parsed, options = Telnyx::PhoneNumberAssignmentByProfileAssignParams.dump_request(params)
        @client.request(
          method: :post,
          path: "phoneNumberAssignmentByProfile",
          body: parsed,
          model: Telnyx::Models::PhoneNumberAssignmentByProfileAssignResponse,
          options: options
        )
      end

      # Check the status of the individual phone number/campaign assignments associated
      # with the supplied `taskId`.
      #
      # @overload retrieve_phone_number_status(task_id, page: nil, records_per_page: nil, request_options: {})
      #
      # @param task_id [String]
      # @param page [Integer]
      # @param records_per_page [Integer]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PhoneNumberAssignmentByProfileRetrievePhoneNumberStatusResponse]
      #
      # @see Telnyx::Models::PhoneNumberAssignmentByProfileRetrievePhoneNumberStatusParams
      def retrieve_phone_number_status(task_id, params = {})
        parsed, options =
          Telnyx::PhoneNumberAssignmentByProfileRetrievePhoneNumberStatusParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["phoneNumberAssignmentByProfile/%1$s/phoneNumbers", task_id],
          query: parsed.transform_keys(records_per_page: "recordsPerPage"),
          model: Telnyx::Models::PhoneNumberAssignmentByProfileRetrievePhoneNumberStatusResponse,
          options: options
        )
      end

      # Check the status of the task associated with assigning all phone numbers on a
      # messaging profile to a campaign by `taskId`.
      #
      # @overload retrieve_status(task_id, request_options: {})
      #
      # @param task_id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PhoneNumberAssignmentByProfileRetrieveStatusResponse]
      #
      # @see Telnyx::Models::PhoneNumberAssignmentByProfileRetrieveStatusParams
      def retrieve_status(task_id, params = {})
        @client.request(
          method: :get,
          path: ["phoneNumberAssignmentByProfile/%1$s", task_id],
          model: Telnyx::Models::PhoneNumberAssignmentByProfileRetrieveStatusResponse,
          options: params[:request_options]
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
