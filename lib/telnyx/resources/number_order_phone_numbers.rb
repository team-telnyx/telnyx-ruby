# frozen_string_literal: true

module Telnyx
  module Resources
    class NumberOrderPhoneNumbers
      # Get an existing phone number in number order.
      #
      # @overload retrieve(number_order_phone_number_id, request_options: {})
      #
      # @param number_order_phone_number_id [String] The number order phone number ID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NumberOrderPhoneNumberRetrieveResponse]
      #
      # @see Telnyx::Models::NumberOrderPhoneNumberRetrieveParams
      def retrieve(number_order_phone_number_id, params = {})
        @client.request(
          method: :get,
          path: ["number_order_phone_numbers/%1$s", number_order_phone_number_id],
          model: Telnyx::Models::NumberOrderPhoneNumberRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NumberOrderPhoneNumberListParams} for more details.
      #
      # Get a list of phone numbers associated to orders.
      #
      # @overload list(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::NumberOrderPhoneNumberListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[country_cod
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NumberOrderPhoneNumberListResponse]
      #
      # @see Telnyx::Models::NumberOrderPhoneNumberListParams
      def list(params = {})
        parsed, options = Telnyx::NumberOrderPhoneNumberListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "number_order_phone_numbers",
          query: parsed,
          model: Telnyx::Models::NumberOrderPhoneNumberListResponse,
          options: options
        )
      end

      # Update requirement group for a phone number order
      #
      # @overload update_requirement_group(id, requirement_group_id:, request_options: {})
      #
      # @param id [String] The unique identifier of the number order phone number
      #
      # @param requirement_group_id [String] The ID of the requirement group to associate
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse]
      #
      # @see Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupParams
      def update_requirement_group(id, params)
        parsed, options = Telnyx::NumberOrderPhoneNumberUpdateRequirementGroupParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["number_order_phone_numbers/%1$s/requirement_group", id],
          body: parsed,
          model: Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse,
          options: options
        )
      end

      # Updates requirements for a single phone number within a number order.
      #
      # @overload update_requirements(number_order_phone_number_id, regulatory_requirements: nil, request_options: {})
      #
      # @param number_order_phone_number_id [String] The number order phone number ID.
      #
      # @param regulatory_requirements [Array<Telnyx::Models::UpdateRegulatoryRequirement>]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementsResponse]
      #
      # @see Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementsParams
      def update_requirements(number_order_phone_number_id, params = {})
        parsed, options = Telnyx::NumberOrderPhoneNumberUpdateRequirementsParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["number_order_phone_numbers/%1$s", number_order_phone_number_id],
          body: parsed,
          model: Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementsResponse,
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
