# typed: strong

module Telnyx
  module Resources
    # Inspect Stateful Actor types
    class Compute
      # Manage Edge Compute functions
      sig { returns(Telnyx::Resources::Compute::Funcs) }
      attr_reader :funcs

      # Retrieve one account-scoped Stateful Actor type. owner_function_id identifies
      # the function that owns and ships the actor class; other functions may reference
      # the same actor type through actor bindings.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ComputeRetrieveResponse)
      end
      def retrieve(
        # Actor type ID
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
