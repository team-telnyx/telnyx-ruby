# typed: strong

module Telnyx
  module Resources
    # IP Range Operations
    class AccessIPRanges
      # Create a new access IP range on your account.
      sig do
        params(
          cidr_block: String,
          description: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::AccessIPRange)
      end
      def create(cidr_block:, description: nil, request_options: {})
      end

      # Retrieve a paginated list of access IP ranges configured on your account.
      sig do
        params(
          filter: Telnyx::AccessIPRangeListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::AccessIPRange]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[cidr_block], filter[cidr_block][startswith],
        # filter[cidr_block][endswith], filter[cidr_block][contains], filter[created_at].
        # Supports complex bracket operations for dynamic filtering.
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      # Delete an access IP range from your account.
      sig do
        params(
          access_ip_range_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::AccessIPRange)
      end
      def delete(
        # Unique identifier of the access ip range.
        access_ip_range_id,
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
