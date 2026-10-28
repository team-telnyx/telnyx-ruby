# typed: strong

module Telnyx
  module Resources
    # Download screenshots and other artifacts.
    class ArtifactDownloads
      # Downloads the artifact content. The signed URL (with expires and sig query
      # params) is obtained from the artifact metadata endpoint.
      sig do
        params(
          artifact_id: String,
          expires: String,
          sig_: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def retrieve(artifact_id, expires:, sig_:, request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
