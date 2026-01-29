# frozen_string_literal: true

module Telnyx
  module Resources
    class PortingOrders
      class ActivationJobs
        # Returns a porting activation job.
        #
        # @overload retrieve(activation_job_id, id:, request_options: {})
        #
        # @param activation_job_id [String] Activation Job Identifier
        #
        # @param id [String] Porting Order id
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::ActivationJobRetrieveResponse]
        #
        # @see Telnyx::Models::PortingOrders::ActivationJobRetrieveParams
        def retrieve(activation_job_id, params)
          parsed, options = Telnyx::PortingOrders::ActivationJobRetrieveParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["porting_orders/%1$s/activation_jobs/%2$s", id, activation_job_id],
            model: Telnyx::Models::PortingOrders::ActivationJobRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PortingOrders::ActivationJobUpdateParams} for more details.
        #
        # Updates the activation time of a porting activation job.
        #
        # @overload update(activation_job_id, id:, activate_at: nil, request_options: {})
        #
        # @param activation_job_id [String] Path param: Activation Job Identifier
        #
        # @param id [String] Path param: Porting Order id
        #
        # @param activate_at [Time] Body param: The desired activation time. The activation time should be between a
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::ActivationJobUpdateResponse]
        #
        # @see Telnyx::Models::PortingOrders::ActivationJobUpdateParams
        def update(activation_job_id, params)
          parsed, options = Telnyx::PortingOrders::ActivationJobUpdateParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["porting_orders/%1$s/activation_jobs/%2$s", id, activation_job_id],
            body: parsed,
            model: Telnyx::Models::PortingOrders::ActivationJobUpdateResponse,
            options: options
          )
        end

        # Returns a list of your porting activation jobs.
        #
        # @overload list(id, page_number: nil, page_size: nil, request_options: {})
        #
        # @param id [String] Porting Order id
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::PortingOrdersActivationJob>]
        #
        # @see Telnyx::Models::PortingOrders::ActivationJobListParams
        def list(id, params = {})
          parsed, options = Telnyx::PortingOrders::ActivationJobListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["porting_orders/%1$s/activation_jobs", id],
            query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::PortingOrdersActivationJob,
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
