# frozen_string_literal: true

module Telnyx
  module Resources
    # Download screenshots and other artifacts.
    class ArtifactDownloads
      # Downloads the artifact content. The signed URL (with expires and sig query
      # params) is obtained from the artifact metadata endpoint.
      #
      # @overload retrieve(artifact_id, expires:, sig_:, request_options: {})
      #
      # @param artifact_id [String]
      # @param expires [String]
      # @param sig_ [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see Telnyx::Models::ArtifactDownloadRetrieveParams
      def retrieve(artifact_id, params)
        parsed, options = Telnyx::ArtifactDownloadRetrieveParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["artifact_downloads/%1$s", artifact_id],
          query: query.transform_keys(sig_: "sig"),
          headers: {"accept" => "application/octet-stream"},
          model: StringIO,
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
