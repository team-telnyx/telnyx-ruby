# typed: strong

module Telnyx
  module Resources
    class ShortCodes
      # Retrieve a short code
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ShortCodeRetrieveResponse)
      end
      def retrieve(
        # The id of the short code
        id,
        request_options: {}
      )
      end

      # Update the settings for a specific short code. To unbind a short code from a
      # profile, set the `messaging_profile_id` to `null` or an empty string. To add or
      # update tags, include the tags field as an array of strings.
      sig do
        params(
          id: String,
          messaging_profile_id: String,
          tags: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ShortCodeUpdateResponse)
      end
      def update(
        # The id of the short code
        id,
        # Unique identifier for a messaging profile.
        messaging_profile_id:,
        tags: nil,
        request_options: {}
      )
      end

      # List short codes
      sig do
        params(
          filter: Telnyx::ShortCodeListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::ShortCode])
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[messaging_profile_id]
        filter: nil,
        page_number: nil,
        page_size: nil,
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
