# typed: strong

module Telnyx
  module Resources
    class Queues
      sig { returns(Telnyx::Resources::Queues::Calls) }
      attr_reader :calls

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

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
