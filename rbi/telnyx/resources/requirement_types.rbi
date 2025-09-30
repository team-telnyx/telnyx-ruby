# typed: strong

module Telnyx
  module Resources
    class RequirementTypes
      # Retrieve a requirement type by id
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RequirementTypeRetrieveResponse)
      end
      def retrieve(
        # Uniquely identifies the requirement_type record
        id,
        request_options: {}
      )
      end

      # List all requirement types ordered by created_at descending
      sig do
        params(
          filter: Telnyx::RequirementTypeListParams::Filter::OrHash,
          sort: T::Array[Telnyx::RequirementTypeListParams::Sort::OrSymbol],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RequirementTypeListResponse)
      end
      def list(
        # Consolidated filter parameter for requirement types (deepObject style).
        # Originally: filter[name]
        filter: nil,
        # Consolidated sort parameter for requirement types (deepObject style).
        # Originally: sort[]
        sort: nil,
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
