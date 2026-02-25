# typed: strong

module Telnyx
  module Resources
    class Queues
      sig { returns(Telnyx::Resources::Queues::Calls) }
      attr_reader :calls

      # Create a new call queue.
      sig do
        params(
          queue_name: String,
          max_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::QueueCreateResponse)
      end
      def create(
        # The name of the queue. Must be between 1 and 255 characters.
        queue_name:,
        # The maximum number of calls allowed in the queue.
        max_size: nil,
        request_options: {}
      )
      end

      # Retrieve an existing call queue
      sig do
        params(
          queue_name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::QueueRetrieveResponse)
      end
      def retrieve(
        # Uniquely identifies the queue by name
        queue_name,
        request_options: {}
      )
      end

      # Update properties of an existing call queue.
      sig do
        params(
          queue_name: String,
          max_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::QueueUpdateResponse)
      end
      def update(
        # Uniquely identifies the queue by name
        queue_name,
        # The maximum number of calls allowed in the queue.
        max_size:,
        request_options: {}
      )
      end

      # List all queues for the authenticated user.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::Queue])
      end
      def list(
        # The page number to load
        page_number: nil,
        # The size of the page
        page_size: nil,
        request_options: {}
      )
      end

      # Delete an existing call queue.
      sig do
        params(
          queue_name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Uniquely identifies the queue by name
        queue_name,
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
