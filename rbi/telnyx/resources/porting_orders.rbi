# typed: strong

module Telnyx
  module Resources
    class PortingOrders
      sig do
        returns(Telnyx::Resources::PortingOrders::PhoneNumberConfigurations)
      end
      attr_reader :phone_number_configurations

      sig { returns(Telnyx::Resources::PortingOrders::Actions) }
      attr_reader :actions

      sig { returns(Telnyx::Resources::PortingOrders::ActivationJobs) }
      attr_reader :activation_jobs

      sig { returns(Telnyx::Resources::PortingOrders::AdditionalDocuments) }
      attr_reader :additional_documents

      sig { returns(Telnyx::Resources::PortingOrders::Comments) }
      attr_reader :comments

      sig { returns(Telnyx::Resources::PortingOrders::VerificationCodes) }
      attr_reader :verification_codes

      sig { returns(Telnyx::Resources::PortingOrders::ActionRequirements) }
      attr_reader :action_requirements

      sig { returns(Telnyx::Resources::PortingOrders::AssociatedPhoneNumbers) }
      attr_reader :associated_phone_numbers

      sig { returns(Telnyx::Resources::PortingOrders::PhoneNumberBlocks) }
      attr_reader :phone_number_blocks

      sig { returns(Telnyx::Resources::PortingOrders::PhoneNumberExtensions) }
      attr_reader :phone_number_extensions

      # Creates a new porting order object.
      sig do
        params(
          phone_numbers: T::Array[String],
          customer_group_reference: String,
          customer_reference: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PortingOrderCreateResponse)
      end
      def create(
        # The list of +E.164 formatted phone numbers
        phone_numbers:,
        # A customer-specified group reference for customer bookkeeping purposes
        customer_group_reference: nil,
        # A customer-specified reference number for customer bookkeeping purposes
        customer_reference: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing porting order.
      sig do
        params(
          id: String,
          include_phone_numbers: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PortingOrderRetrieveResponse)
      end
      def retrieve(
        # Porting Order id
        id,
        # Include the first 50 phone number objects in the results
        include_phone_numbers: nil,
        request_options: {}
      )
      end

      # Edits the details of an existing porting order.
      #
      # Any or all of a porting orders attributes may be included in the resource object
      # included in a PATCH request.
      #
      # If a request does not include all of the attributes for a resource, the system
      # will interpret the missing attributes as if they were included with their
      # current values. To explicitly set something to null, it must be included in the
      # request with a null value.
      sig do
        params(
          id: String,
          activation_settings:
            Telnyx::PortingOrderUpdateParams::ActivationSettings::OrHash,
          customer_group_reference: String,
          customer_reference: String,
          documents: Telnyx::PortingOrderDocuments::OrHash,
          end_user: Telnyx::PortingOrderEndUser::OrHash,
          messaging: Telnyx::PortingOrderUpdateParams::Messaging::OrHash,
          misc: T.nilable(Telnyx::PortingOrderMisc::OrHash),
          phone_number_configuration:
            Telnyx::PortingOrderPhoneNumberConfiguration::OrHash,
          requirement_group_id: String,
          requirements:
            T::Array[Telnyx::PortingOrderUpdateParams::Requirement::OrHash],
          user_feedback: Telnyx::PortingOrderUserFeedback::OrHash,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PortingOrderUpdateResponse)
      end
      def update(
        # Porting Order id
        id,
        activation_settings: nil,
        customer_group_reference: nil,
        customer_reference: nil,
        # Can be specified directly or via the `requirement_group_id` parameter.
        documents: nil,
        end_user: nil,
        messaging: nil,
        misc: nil,
        phone_number_configuration: nil,
        # If present, we will read the current values from the specified Requirement Group
        # into the Documents and Requirements for this Porting Order. Note that any future
        # changes in the Requirement Group would have no impact on this Porting Order. We
        # will return an error if a specified Requirement Group conflicts with documents
        # or requirements in the same request.
        requirement_group_id: nil,
        # List of requirements for porting numbers.
        requirements: nil,
        user_feedback: nil,
        webhook_url: nil,
        request_options: {}
      )
      end

      # Returns a list of your porting order.
      sig do
        params(
          filter: Telnyx::PortingOrderListParams::Filter::OrHash,
          include_phone_numbers: T::Boolean,
          page: Telnyx::PortingOrderListParams::Page::OrHash,
          sort: Telnyx::PortingOrderListParams::Sort::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PortingOrderListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[customer_reference], filter[customer_group_reference],
        # filter[parent_support_key], filter[phone_numbers.country_code],
        # filter[phone_numbers.carrier_name], filter[misc.type],
        # filter[end_user.admin.entity_name], filter[end_user.admin.auth_person_name],
        # filter[activation_settings.fast_port_eligible],
        # filter[activation_settings.foc_datetime_requested][gt],
        # filter[activation_settings.foc_datetime_requested][lt],
        # filter[phone_numbers.phone_number][contains]
        filter: nil,
        # Include the first 50 phone number objects in the results
        include_phone_numbers: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        # Consolidated sort parameter (deepObject style). Originally: sort[value]
        sort: nil,
        request_options: {}
      )
      end

      # Deletes an existing porting order. This operation is restrict to porting orders
      # in draft state.
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(
        # Porting Order id
        id,
        request_options: {}
      )
      end

      # Returns a list of allowed FOC dates for a porting order.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsResponse)
      end
      def retrieve_allowed_foc_windows(
        # Porting Order id
        id,
        request_options: {}
      )
      end

      # Returns a list of all possible exception types for a porting order.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::PortingOrderRetrieveExceptionTypesResponse
        )
      end
      def retrieve_exception_types(request_options: {})
      end

      # Download a porting order loa template
      sig do
        params(
          id: String,
          loa_configuration_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def retrieve_loa_template(
        # Porting Order id
        id,
        # The identifier of the LOA configuration to use for the template. If not
        # provided, the default LOA configuration will be used.
        loa_configuration_id: nil,
        request_options: {}
      )
      end

      # Returns a list of all requirements based on country/number type for this porting
      # order.
      sig do
        params(
          id: String,
          page: Telnyx::PortingOrderRetrieveRequirementsParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PortingOrderRetrieveRequirementsResponse)
      end
      def retrieve_requirements(
        # Porting Order id
        id,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      # Retrieve the associated V1 sub_request_id and port_request_id
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PortingOrderRetrieveSubRequestResponse)
      end
      def retrieve_sub_request(
        # Porting Order id
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
