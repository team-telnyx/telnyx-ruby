# typed: strong

module Telnyx
  module Resources
    class Requirements
      # Retrieve a document requirement record
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RequirementRetrieveResponse)
      end
      def retrieve(
        # Uniquely identifies the requirement_type record
        id,
        request_options: {}
      )
      end

      # List all requirements with filtering, sorting, and pagination
      sig do
        params(
          filter: Telnyx::RequirementListParams::Filter::OrHash,
          page: Telnyx::RequirementListParams::Page::OrHash,
          sort: T::Array[Telnyx::RequirementListParams::Sort::OrSymbol],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::RequirementListResponse)
      end
      def list(
        # Consolidated filter parameter for requirements (deepObject style). Originally:
        # filter[country_code], filter[phone_number_type], filter[action]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        # Consolidated sort parameter for requirements (deepObject style). Originally:
        # sort[]
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
