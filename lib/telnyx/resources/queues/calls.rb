# frozen_string_literal: true

module Telnyx
  module Resources
    class Queues
      class Calls
        # Retrieve an existing call from an existing queue
        #
        # @overload retrieve(call_control_id, queue_name:, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param queue_name [String] Uniquely identifies the queue by name
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Queues::CallRetrieveResponse]
        #
        # @see Telnyx::Models::Queues::CallRetrieveParams
        def retrieve(call_control_id, params)
          parsed, options = Telnyx::Queues::CallRetrieveParams.dump_request(params)
          queue_name =
            parsed.delete(:queue_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["queues/%1$s/calls/%2$s", queue_name, call_control_id],
            model: Telnyx::Models::Queues::CallRetrieveResponse,
            options: options
          )
        end

        # Update queued call's keep_after_hangup flag
        #
        # @overload update(call_control_id, queue_name:, keep_after_hangup: nil, request_options: {})
        #
        # @param call_control_id [String] Path param: Unique identifier and token for controlling the call
        #
        # @param queue_name [String] Path param: Uniquely identifies the queue by name
        #
        # @param keep_after_hangup [Boolean] Body param: Whether the call should remain in queue after hangup.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Queues::CallUpdateParams
        def update(call_control_id, params)
          parsed, options = Telnyx::Queues::CallUpdateParams.dump_request(params)
          queue_name =
            parsed.delete(:queue_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["queues/%1$s/calls/%2$s", queue_name, call_control_id],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Queues::CallListParams} for more details.
        #
        # Retrieve the list of calls in an existing queue
        #
        # @overload list(queue_name, page: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param queue_name [String] Uniquely identifies the queue by name
        #
        # @param page [Telnyx::Models::Queues::CallListParams::Page] Consolidated page parameter (deepObject style). Originally: page[after], page[be
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Queues::CallListResponse>]
        #
        # @see Telnyx::Models::Queues::CallListParams
        def list(queue_name, params = {})
          parsed, options = Telnyx::Queues::CallListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["queues/%1$s/calls", queue_name],
            query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::Queues::CallListResponse,
            options: options
          )
        end

        # Removes an inactive call from a queue. If the call is no longer active, use this
        # command to remove it from the queue.
        #
        # @overload remove(call_control_id, queue_name:, request_options: {})
        #
        # @param call_control_id [String] Unique identifier and token for controlling the call
        #
        # @param queue_name [String] Uniquely identifies the queue by name
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Queues::CallRemoveParams
        def remove(call_control_id, params)
          parsed, options = Telnyx::Queues::CallRemoveParams.dump_request(params)
          queue_name =
            parsed.delete(:queue_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["queues/%1$s/calls/%2$s", queue_name, call_control_id],
            model: NilClass,
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
