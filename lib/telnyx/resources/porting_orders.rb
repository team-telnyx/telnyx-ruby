# frozen_string_literal: true

module Telnyx
  module Resources
    class PortingOrders
      # @return [Telnyx::Resources::PortingOrders::PhoneNumberConfigurations]
      attr_reader :phone_number_configurations

      # @return [Telnyx::Resources::PortingOrders::Actions]
      attr_reader :actions

      # @return [Telnyx::Resources::PortingOrders::ActivationJobs]
      attr_reader :activation_jobs

      # @return [Telnyx::Resources::PortingOrders::AdditionalDocuments]
      attr_reader :additional_documents

      # @return [Telnyx::Resources::PortingOrders::Comments]
      attr_reader :comments

      # @return [Telnyx::Resources::PortingOrders::VerificationCodes]
      attr_reader :verification_codes

      # @return [Telnyx::Resources::PortingOrders::ActionRequirements]
      attr_reader :action_requirements

      # @return [Telnyx::Resources::PortingOrders::AssociatedPhoneNumbers]
      attr_reader :associated_phone_numbers

      # @return [Telnyx::Resources::PortingOrders::PhoneNumberBlocks]
      attr_reader :phone_number_blocks

      # @return [Telnyx::Resources::PortingOrders::PhoneNumberExtensions]
      attr_reader :phone_number_extensions

      # Creates a new porting order object.
      #
      # @overload create(phone_numbers:, customer_group_reference: nil, customer_reference: nil, request_options: {})
      #
      # @param phone_numbers [Array<String>] The list of +E.164 formatted phone numbers
      #
      # @param customer_group_reference [String] A customer-specified group reference for customer bookkeeping purposes
      #
      # @param customer_reference [String, nil] A customer-specified reference number for customer bookkeeping purposes
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PortingOrderCreateResponse]
      #
      # @see Telnyx::Models::PortingOrderCreateParams
      def create(params)
        parsed, options = Telnyx::PortingOrderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "porting_orders",
          body: parsed,
          model: Telnyx::Models::PortingOrderCreateResponse,
          options: options
        )
      end

      # Retrieves the details of an existing porting order.
      #
      # @overload retrieve(id, include_phone_numbers: nil, request_options: {})
      #
      # @param id [String] Porting Order id
      #
      # @param include_phone_numbers [Boolean] Include the first 50 phone number objects in the results
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PortingOrderRetrieveResponse]
      #
      # @see Telnyx::Models::PortingOrderRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Telnyx::PortingOrderRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["porting_orders/%1$s", id],
          query: parsed,
          model: Telnyx::Models::PortingOrderRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PortingOrderUpdateParams} for more details.
      #
      # Edits the details of an existing porting order.
      #
      # Any or all of a porting orders attributes may be included in the resource object
      # included in a PATCH request.
      #
      # If a request does not include all of the attributes for a resource, the system
      # will interpret the missing attributes as if they were included with their
      # current values. To explicitly set something to null, it must be included in the
      # request with a null value.
      #
      # @overload update(id, activation_settings: nil, customer_group_reference: nil, customer_reference: nil, documents: nil, end_user: nil, messaging: nil, misc: nil, phone_number_configuration: nil, requirement_group_id: nil, requirements: nil, user_feedback: nil, webhook_url: nil, request_options: {})
      #
      # @param id [String] Porting Order id
      #
      # @param activation_settings [Telnyx::Models::PortingOrderUpdateParams::ActivationSettings]
      #
      # @param customer_group_reference [String]
      #
      # @param customer_reference [String]
      #
      # @param documents [Telnyx::Models::PortingOrderDocuments] Can be specified directly or via the `requirement_group_id` parameter.
      #
      # @param end_user [Telnyx::Models::PortingOrderEndUser]
      #
      # @param messaging [Telnyx::Models::PortingOrderUpdateParams::Messaging]
      #
      # @param misc [Telnyx::Models::PortingOrderMisc, nil]
      #
      # @param phone_number_configuration [Telnyx::Models::PortingOrderPhoneNumberConfiguration]
      #
      # @param requirement_group_id [String] If present, we will read the current values from the specified Requirement Group
      #
      # @param requirements [Array<Telnyx::Models::PortingOrderUpdateParams::Requirement>] List of requirements for porting numbers.
      #
      # @param user_feedback [Telnyx::Models::PortingOrderUserFeedback]
      #
      # @param webhook_url [String]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PortingOrderUpdateResponse]
      #
      # @see Telnyx::Models::PortingOrderUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::PortingOrderUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["porting_orders/%1$s", id],
          body: parsed,
          model: Telnyx::Models::PortingOrderUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PortingOrderListParams} for more details.
      #
      # Returns a list of your porting order.
      #
      # @overload list(filter: nil, include_phone_numbers: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::PortingOrderListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[customer_re
      #
      # @param include_phone_numbers [Boolean] Include the first 50 phone number objects in the results
      #
      # @param page [Telnyx::Models::PortingOrderListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param sort [Telnyx::Models::PortingOrderListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PortingOrderListResponse]
      #
      # @see Telnyx::Models::PortingOrderListParams
      def list(params = {})
        parsed, options = Telnyx::PortingOrderListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "porting_orders",
          query: parsed,
          model: Telnyx::Models::PortingOrderListResponse,
          options: options
        )
      end

      # Deletes an existing porting order. This operation is restrict to porting orders
      # in draft state.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Porting Order id
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::PortingOrderDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["porting_orders/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Returns a list of allowed FOC dates for a porting order.
      #
      # @overload retrieve_allowed_foc_windows(id, request_options: {})
      #
      # @param id [String] Porting Order id
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsResponse]
      #
      # @see Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsParams
      def retrieve_allowed_foc_windows(id, params = {})
        @client.request(
          method: :get,
          path: ["porting_orders/%1$s/allowed_foc_windows", id],
          model: Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsResponse,
          options: params[:request_options]
        )
      end

      # Returns a list of all possible exception types for a porting order.
      #
      # @overload retrieve_exception_types(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PortingOrderRetrieveExceptionTypesResponse]
      #
      # @see Telnyx::Models::PortingOrderRetrieveExceptionTypesParams
      def retrieve_exception_types(params = {})
        @client.request(
          method: :get,
          path: "porting_orders/exception_types",
          model: Telnyx::Models::PortingOrderRetrieveExceptionTypesResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PortingOrderRetrieveLoaTemplateParams} for more details.
      #
      # Download a porting order loa template
      #
      # @overload retrieve_loa_template(id, loa_configuration_id: nil, request_options: {})
      #
      # @param id [String] Porting Order id
      #
      # @param loa_configuration_id [String] The identifier of the LOA configuration to use for the template. If not provided
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see Telnyx::Models::PortingOrderRetrieveLoaTemplateParams
      def retrieve_loa_template(id, params = {})
        parsed, options = Telnyx::PortingOrderRetrieveLoaTemplateParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["porting_orders/%1$s/loa_template", id],
          query: parsed,
          headers: {"accept" => "application/pdf"},
          model: StringIO,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PortingOrderRetrieveRequirementsParams} for more details.
      #
      # Returns a list of all requirements based on country/number type for this porting
      # order.
      #
      # @overload retrieve_requirements(id, page: nil, request_options: {})
      #
      # @param id [String] Porting Order id
      #
      # @param page [Telnyx::Models::PortingOrderRetrieveRequirementsParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PortingOrderRetrieveRequirementsResponse]
      #
      # @see Telnyx::Models::PortingOrderRetrieveRequirementsParams
      def retrieve_requirements(id, params = {})
        parsed, options = Telnyx::PortingOrderRetrieveRequirementsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["porting_orders/%1$s/requirements", id],
          query: parsed,
          model: Telnyx::Models::PortingOrderRetrieveRequirementsResponse,
          options: options
        )
      end

      # Retrieve the associated V1 sub_request_id and port_request_id
      #
      # @overload retrieve_sub_request(id, request_options: {})
      #
      # @param id [String] Porting Order id
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PortingOrderRetrieveSubRequestResponse]
      #
      # @see Telnyx::Models::PortingOrderRetrieveSubRequestParams
      def retrieve_sub_request(id, params = {})
        @client.request(
          method: :get,
          path: ["porting_orders/%1$s/sub_request", id],
          model: Telnyx::Models::PortingOrderRetrieveSubRequestResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @phone_number_configurations =
          Telnyx::Resources::PortingOrders::PhoneNumberConfigurations.new(client: client)
        @actions = Telnyx::Resources::PortingOrders::Actions.new(client: client)
        @activation_jobs = Telnyx::Resources::PortingOrders::ActivationJobs.new(client: client)
        @additional_documents = Telnyx::Resources::PortingOrders::AdditionalDocuments.new(client: client)
        @comments = Telnyx::Resources::PortingOrders::Comments.new(client: client)
        @verification_codes = Telnyx::Resources::PortingOrders::VerificationCodes.new(client: client)
        @action_requirements = Telnyx::Resources::PortingOrders::ActionRequirements.new(client: client)
        @associated_phone_numbers = Telnyx::Resources::PortingOrders::AssociatedPhoneNumbers.new(client: client)
        @phone_number_blocks = Telnyx::Resources::PortingOrders::PhoneNumberBlocks.new(client: client)
        @phone_number_extensions = Telnyx::Resources::PortingOrders::PhoneNumberExtensions.new(client: client)
      end
    end
  end
end
