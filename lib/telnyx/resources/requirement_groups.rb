# frozen_string_literal: true

module Telnyx
  module Resources
    # Requirement Groups
    class RequirementGroups
      # Creates a regulatory requirement group for a country, number type, and ordering
      # or porting action. Optional customer-reference and requirement values are
      # retained on the created group.
      #
      # @overload create(action:, country_code:, phone_number_type:, customer_reference: nil, regulatory_requirements: nil, request_options: {})
      #
      # @param action [Symbol, Telnyx::Models::RequirementGroupCreateParams::Action]
      #
      # @param country_code [String] ISO alpha 2 country code
      #
      # @param phone_number_type [Symbol, Telnyx::Models::RequirementGroupCreateParams::PhoneNumberType]
      #
      # @param customer_reference [String]
      #
      # @param regulatory_requirements [Array<Telnyx::Models::RequirementGroupCreateParams::RegulatoryRequirement>]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RequirementGroup]
      #
      # @see Telnyx::Models::RequirementGroupCreateParams
      def create(params)
        parsed, options = Telnyx::RequirementGroupCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "requirement_groups",
          body: parsed,
          model: Telnyx::RequirementGroup,
          options: options
        )
      end

      # Returns the regulatory requirement group identified by `id`, including its
      # requirement values and current approval status.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] ID of the requirement group to retrieve
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RequirementGroup]
      #
      # @see Telnyx::Models::RequirementGroupRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["requirement_groups/%1$s", id],
          model: Telnyx::RequirementGroup,
          options: params[:request_options]
        )
      end

      # Updates the customer reference or regulatory requirement values on the specified
      # requirement group. The response contains the updated group.
      #
      # @overload update(id, customer_reference: nil, regulatory_requirements: nil, request_options: {})
      #
      # @param id [String] ID of the requirement group
      #
      # @param customer_reference [String] Reference for the customer
      #
      # @param regulatory_requirements [Array<Telnyx::Models::RequirementGroupUpdateParams::RegulatoryRequirement>]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RequirementGroup]
      #
      # @see Telnyx::Models::RequirementGroupUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::RequirementGroupUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["requirement_groups/%1$s", id],
          body: parsed,
          model: Telnyx::RequirementGroup,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RequirementGroupListParams} for more details.
      #
      # Returns regulatory requirement groups for the account. Results can be filtered
      # by country, number type, action, approval status, and customer reference.
      #
      # @overload list(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::RequirementGroupListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[country_cod
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Telnyx::Models::RequirementGroup>]
      #
      # @see Telnyx::Models::RequirementGroupListParams
      def list(params = {})
        parsed, options = Telnyx::RequirementGroupListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "requirement_groups",
          query: query,
          model: Telnyx::Internal::Type::ArrayOf[Telnyx::RequirementGroup],
          options: options
        )
      end

      # Deletes the regulatory requirement group identified by `id`. The response
      # contains the deleted requirement-group representation.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] ID of the requirement group
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RequirementGroup]
      #
      # @see Telnyx::Models::RequirementGroupDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["requirement_groups/%1$s", id],
          model: Telnyx::RequirementGroup,
          options: params[:request_options]
        )
      end

      # Submits the specified regulatory requirement group for approval. The response
      # contains the requirement group with its resulting approval status.
      #
      # @overload submit_for_approval(id, request_options: {})
      #
      # @param id [String] ID of the requirement group to submit
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RequirementGroup]
      #
      # @see Telnyx::Models::RequirementGroupSubmitForApprovalParams
      def submit_for_approval(id, params = {})
        @client.request(
          method: :post,
          path: ["requirement_groups/%1$s/submit_for_approval", id],
          model: Telnyx::RequirementGroup,
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
