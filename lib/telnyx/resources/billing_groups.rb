# frozen_string_literal: true

module Telnyx
  module Resources
    class BillingGroups
      # Create a billing group
      #
      # @overload create(name: nil, request_options: {})
      #
      # @param name [String] A name for the billing group
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BillingGroupCreateResponse]
      #
      # @see Telnyx::Models::BillingGroupCreateParams
      def create(params = {})
        parsed, options = Telnyx::BillingGroupCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "billing_groups",
          body: parsed,
          model: Telnyx::Models::BillingGroupCreateResponse,
          options: options
        )
      end

      # Get a billing group
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The id of the billing group
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BillingGroupRetrieveResponse]
      #
      # @see Telnyx::Models::BillingGroupRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["billing_groups/%1$s", id],
          model: Telnyx::Models::BillingGroupRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a billing group
      #
      # @overload update(id, name: nil, request_options: {})
      #
      # @param id [String] The id of the billing group
      #
      # @param name [String] A name for the billing group
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BillingGroupUpdateResponse]
      #
      # @see Telnyx::Models::BillingGroupUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::BillingGroupUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["billing_groups/%1$s", id],
          body: parsed,
          model: Telnyx::Models::BillingGroupUpdateResponse,
          options: options
        )
      end

      # List all billing groups
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer]
      # @param page_size [Integer]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::BillingGroup>]
      #
      # @see Telnyx::Models::BillingGroupListParams
      def list(params = {})
        parsed, options = Telnyx::BillingGroupListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "billing_groups",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::BillingGroup,
          options: options
        )
      end

      # Delete a billing group
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The id of the billing group
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BillingGroupDeleteResponse]
      #
      # @see Telnyx::Models::BillingGroupDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["billing_groups/%1$s", id],
          model: Telnyx::Models::BillingGroupDeleteResponse,
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
