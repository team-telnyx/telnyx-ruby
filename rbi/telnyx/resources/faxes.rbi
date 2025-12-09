# typed: strong

module Telnyx
  module Resources
    class Faxes
      sig { returns(Telnyx::Resources::Faxes::Actions) }
      attr_reader :actions

      # Send a fax. Files have size limits and page count limit validations. If a file
      # is bigger than 50MB or has more than 350 pages it will fail with
      # `file_size_limit_exceeded` and `page_count_limit_exceeded` respectively.
      #
      # **Expected Webhooks:**
      #
      # - `fax.queued`
      # - `fax.media.processed`
      # - `fax.sending.started`
      # - `fax.delivered`
      # - `fax.failed`
      sig do
        params(
          connection_id: String,
          from: String,
          to: String,
          client_state: String,
          from_display_name: String,
          media_name: String,
          media_url: String,
          monochrome: T::Boolean,
          preview_format: Telnyx::FaxCreateParams::PreviewFormat::OrSymbol,
          quality: Telnyx::FaxCreateParams::Quality::OrSymbol,
          store_media: T::Boolean,
          store_preview: T::Boolean,
          t38_enabled: T::Boolean,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::FaxCreateResponse)
      end
      def create(
        # The connection ID to send the fax with.
        connection_id:,
        # The phone number, in E.164 format, the fax will be sent from.
        from:,
        # The phone number, in E.164 format, the fax will be sent to or SIP URI
        to:,
        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        client_state: nil,
        # The `from_display_name` string to be used as the caller id name (SIP From
        # Display Name) presented to the destination (`to` number). The string should have
        # a maximum of 128 characters, containing only letters, numbers, spaces, and
        # -\_~!.+ special characters. If ommited, the display name will be the same as the
        # number in the `from` field.
        from_display_name: nil,
        # The media_name used for the fax's media. Must point to a file previously
        # uploaded to api.telnyx.com/v2/media by the same user/organization. media_name
        # and media_url/contents can't be submitted together.
        media_name: nil,
        # The URL (or list of URLs) to the PDF used for the fax's media. media_url and
        # media_name/contents can't be submitted together.
        media_url: nil,
        # The flag to enable monochrome, true black and white fax results.
        monochrome: nil,
        # The format for the preview file in case the `store_preview` is `true`.
        preview_format: nil,
        # The quality of the fax. The `ultra` settings provides the highest quality
        # available, but also present longer fax processing times. `ultra_light` is best
        # suited for images, wihle `ultra_dark` is best suited for text.
        quality: nil,
        # Should fax media be stored on temporary URL. It does not support media_name,
        # they can't be submitted together.
        store_media: nil,
        # Should fax preview be stored on temporary URL.
        store_preview: nil,
        # The flag to disable the T.38 protocol.
        t38_enabled: nil,
        # Use this field to override the URL to which Telnyx will send subsequent webhooks
        # for this fax.
        webhook_url: nil,
        request_options: {}
      )
      end

      # View a fax
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::FaxRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of a fax.
        id,
        request_options: {}
      )
      end

      # View a list of faxes
      sig do
        params(
          filter: Telnyx::FaxListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::Fax])
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[created_at][gte], filter[created_at][gt], filter[created_at][lte],
        # filter[created_at][lt], filter[direction][eq], filter[from][eq], filter[to][eq]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      # Delete a fax
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(
        # The unique identifier of a fax.
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
