# typed: strong

module Telnyx
  module Resources
    # Requirements for international numbers and porting orders
    class Requirements
      # Returns a single document requirement record by its identifier, describing the
      # documentation needed for number-related actions. A specific requirement version
      # can be requested.
      sig do
        params(
          id: String,
          version: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RequirementRetrieveResponse)
      end
      def retrieve(
        # Uniquely identifies the requirement_type record
        id,
        # Filter by requirement version number. When omitted, returns the currently-active
        # version.
        version: nil,
        request_options: {}
      )
      end

      # List all requirements with filtering, sorting, and pagination
      sig do
        params(
          filter: Telnyx::RequirementListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          sort: T::Array[Telnyx::RequirementListParams::Sort::OrSymbol],
          version: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::DocReqsRequirement]
        )
      end
      def list(
        # Consolidated filter parameter for requirements (deepObject style). Originally:
        # filter[country_code], filter[phone_number_type], filter[action]
        filter: nil,
        page_number: nil,
        page_size: nil,
        # Consolidated sort parameter for requirements (deepObject style). Originally:
        # sort[]
        sort: nil,
        # Filter by requirement version number. When omitted, returns the currently-active
        # version.
        version: nil,
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
