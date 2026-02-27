# frozen_string_literal: true

module Telnyx
  module Resources
    class Queues
      # @return [Telnyx::Resources::Queues::Calls]
      attr_reader :calls

      # Create a new call queue.
      #
      # @overload create(queue_name:, max_size: nil, request_options: {})
      #
      # @param queue_name [String] The name of the queue. Must be between 1 and 255 characters.
      #
      # @param max_size [Integer] The maximum number of calls allowed in the queue.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::QueueCreateResponse]
      #
      # @see Telnyx::Models::QueueCreateParams
      def create(params)
        parsed, options = Telnyx::QueueCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "queues",
          body: parsed,
          model: Telnyx::Models::QueueCreateResponse,
          options: options
        )
      end

      # Retrieve an existing call queue
      #
      # @overload retrieve(queue_name, request_options: {})
      #
      # @param queue_name [String] Uniquely identifies the queue by name
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::QueueRetrieveResponse]
      #
      # @see Telnyx::Models::QueueRetrieveParams
      def retrieve(queue_name, params = {})
        @client.request(
          method: :get,
          path: ["queues/%1$s", queue_name],
          model: Telnyx::Models::QueueRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update properties of an existing call queue.
      #
      # @overload update(queue_name, max_size:, request_options: {})
      #
      # @param queue_name [String] Uniquely identifies the queue by name
      #
      # @param max_size [Integer] The maximum number of calls allowed in the queue.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::QueueUpdateResponse]
      #
      # @see Telnyx::Models::QueueUpdateParams
      def update(queue_name, params)
        parsed, options = Telnyx::QueueUpdateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["queues/%1$s", queue_name],
          body: parsed,
          model: Telnyx::Models::QueueUpdateResponse,
          options: options
        )
      end

      # List all queues for the authenticated user.
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer] The page number to load
      #
      # @param page_size [Integer] The size of the page
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Queue>]
      #
      # @see Telnyx::Models::QueueListParams
      def list(params = {})
        parsed, options = Telnyx::QueueListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "queues",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Queue,
          options: options
        )
      end

      # Delete an existing call queue.
      #
      # @overload delete(queue_name, request_options: {})
      #
      # @param queue_name [String] Uniquely identifies the queue by name
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::QueueDeleteParams
      def delete(queue_name, params = {})
        @client.request(
          method: :delete,
          path: ["queues/%1$s", queue_name],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @calls = Telnyx::Resources::Queues::Calls.new(client: client)
      end
    end
  end
end
