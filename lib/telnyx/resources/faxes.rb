# frozen_string_literal: true

module Telnyx
  module Resources
    class Faxes
      # @return [Telnyx::Resources::Faxes::Actions]
      attr_reader :actions

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::FaxCreateParams} for more details.
      #
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
      #
      # @overload create(connection_id:, from:, to:, client_state: nil, from_display_name: nil, media_name: nil, media_url: nil, monochrome: nil, preview_format: nil, quality: nil, store_media: nil, store_preview: nil, t38_enabled: nil, webhook_url: nil, request_options: {})
      #
      # @param connection_id [String] The connection ID to send the fax with.
      #
      # @param from [String] The phone number, in E.164 format, the fax will be sent from.
      #
      # @param to [String] The phone number, in E.164 format, the fax will be sent to or SIP URI
      #
      # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
      #
      # @param from_display_name [String] The `from_display_name` string to be used as the caller id name (SIP From Displa
      #
      # @param media_name [String] The media_name used for the fax's media. Must point to a file previously uploade
      #
      # @param media_url [String] The URL (or list of URLs) to the PDF used for the fax's media. media_url and med
      #
      # @param monochrome [Boolean] The flag to enable monochrome, true black and white fax results.
      #
      # @param preview_format [Symbol, Telnyx::Models::FaxCreateParams::PreviewFormat] The format for the preview file in case the `store_preview` is `true`.
      #
      # @param quality [Symbol, Telnyx::Models::FaxCreateParams::Quality] The quality of the fax. The `ultra` settings provides the highest quality availa
      #
      # @param store_media [Boolean] Should fax media be stored on temporary URL. It does not support media_name, the
      #
      # @param store_preview [Boolean] Should fax preview be stored on temporary URL.
      #
      # @param t38_enabled [Boolean] The flag to disable the T.38 protocol.
      #
      # @param webhook_url [String] Use this field to override the URL to which Telnyx will send subsequent webhooks
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FaxCreateResponse]
      #
      # @see Telnyx::Models::FaxCreateParams
      def create(params)
        parsed, options = Telnyx::FaxCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "faxes",
          body: parsed,
          model: Telnyx::Models::FaxCreateResponse,
          options: options
        )
      end

      # View a fax
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of a fax.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FaxRetrieveResponse]
      #
      # @see Telnyx::Models::FaxRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["faxes/%1$s", id],
          model: Telnyx::Models::FaxRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::FaxListParams} for more details.
      #
      # View a list of faxes
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::FaxListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[created_at]
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Fax>]
      #
      # @see Telnyx::Models::FaxListParams
      def list(params = {})
        parsed, options = Telnyx::FaxListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "faxes",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Fax,
          options: options
        )
      end

      # Delete a fax
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of a fax.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::FaxDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["faxes/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::Faxes::Actions.new(client: client)
      end
    end
  end
end
