# frozen_string_literal: true

module Telnyx
  module Resources
    class Media
      # Returns the information about a stored media file.
      #
      # @overload retrieve(media_name, request_options: {})
      #
      # @param media_name [String] Uniquely identifies a media resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MediaRetrieveResponse]
      #
      # @see Telnyx::Models::MediaRetrieveParams
      def retrieve(media_name, params = {})
        @client.request(
          method: :get,
          path: ["media/%1$s", media_name],
          model: Telnyx::Models::MediaRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MediaUpdateParams} for more details.
      #
      # Updates a stored media file.
      #
      # @overload update(media_name, media_url: nil, ttl_secs: nil, request_options: {})
      #
      # @param media_name [String] Uniquely identifies a media resource.
      #
      # @param media_url [String] The URL where the media to be stored in Telnyx network is currently hosted. The
      #
      # @param ttl_secs [Integer] The number of seconds after which the media resource will be deleted, defaults t
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MediaUpdateResponse]
      #
      # @see Telnyx::Models::MediaUpdateParams
      def update(media_name, params = {})
        parsed, options = Telnyx::MediaUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["media/%1$s", media_name],
          body: parsed,
          model: Telnyx::Models::MediaUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MediaListParams} for more details.
      #
      # Returns a list of stored media files.
      #
      # @overload list(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::MediaListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[content_typ
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MediaListResponse]
      #
      # @see Telnyx::Models::MediaListParams
      def list(params = {})
        parsed, options = Telnyx::MediaListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "media",
          query: parsed,
          model: Telnyx::Models::MediaListResponse,
          options: options
        )
      end

      # Deletes a stored media file.
      #
      # @overload delete(media_name, request_options: {})
      #
      # @param media_name [String] Uniquely identifies a media resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::MediaDeleteParams
      def delete(media_name, params = {})
        @client.request(
          method: :delete,
          path: ["media/%1$s", media_name],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Downloads a stored media file.
      #
      # @overload download(media_name, request_options: {})
      #
      # @param media_name [String] Uniquely identifies a media resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see Telnyx::Models::MediaDownloadParams
      def download(media_name, params = {})
        @client.request(
          method: :get,
          path: ["media/%1$s/download", media_name],
          headers: {"accept" => "application/octet-stream"},
          model: StringIO,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MediaUploadParams} for more details.
      #
      # Upload media file to Telnyx so it can be used with other Telnyx services
      #
      # @overload upload(media_url:, media_name: nil, ttl_secs: nil, request_options: {})
      #
      # @param media_url [String] The URL where the media to be stored in Telnyx network is currently hosted. The
      #
      # @param media_name [String] The unique identifier of a file.
      #
      # @param ttl_secs [Integer] The number of seconds after which the media resource will be deleted, defaults t
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MediaUploadResponse]
      #
      # @see Telnyx::Models::MediaUploadParams
      def upload(params)
        parsed, options = Telnyx::MediaUploadParams.dump_request(params)
        @client.request(
          method: :post,
          path: "media",
          body: parsed,
          model: Telnyx::Models::MediaUploadResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
