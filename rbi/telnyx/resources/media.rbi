# typed: strong

module Telnyx
  module Resources
    class Media
      # Returns the information about a stored media file.
      sig do
        params(
          media_name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MediaRetrieveResponse)
      end
      def retrieve(
        # Uniquely identifies a media resource.
        media_name,
        request_options: {}
      )
      end

      # Updates a stored media file.
      sig do
        params(
          media_name: String,
          media_url: String,
          ttl_secs: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MediaUpdateResponse)
      end
      def update(
        # Uniquely identifies a media resource.
        media_name,
        # The URL where the media to be stored in Telnyx network is currently hosted. The
        # maximum allowed size is 20 MB.
        media_url: nil,
        # The number of seconds after which the media resource will be deleted, defaults
        # to 2 days. The maximum allowed vale is 630720000, which translates to 20 years.
        ttl_secs: nil,
        request_options: {}
      )
      end

      # Returns a list of stored media files.
      sig do
        params(
          filter: Telnyx::MediaListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MediaListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[content_type][]
        filter: nil,
        request_options: {}
      )
      end

      # Deletes a stored media file.
      sig do
        params(
          media_name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Uniquely identifies a media resource.
        media_name,
        request_options: {}
      )
      end

      # Downloads a stored media file.
      sig do
        params(
          media_name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def download(
        # Uniquely identifies a media resource.
        media_name,
        request_options: {}
      )
      end

      # Upload media file to Telnyx so it can be used with other Telnyx services
      sig do
        params(
          media_url: String,
          media_name: String,
          ttl_secs: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MediaUploadResponse)
      end
      def upload(
        # The URL where the media to be stored in Telnyx network is currently hosted. The
        # maximum allowed size is 20 MB.
        media_url:,
        # The unique identifier of a file.
        media_name: nil,
        # The number of seconds after which the media resource will be deleted, defaults
        # to 2 days. The maximum allowed vale is 630720000, which translates to 20 years.
        ttl_secs: nil,
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
