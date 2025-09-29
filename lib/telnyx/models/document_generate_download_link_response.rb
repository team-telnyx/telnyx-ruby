# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Documents#generate_download_link
    class DocumentGenerateDownloadLinkResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::DocumentGenerateDownloadLinkResponse::Data]
      required :data, -> { Telnyx::Models::DocumentGenerateDownloadLinkResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::DocumentGenerateDownloadLinkResponse::Data]

      # @see Telnyx::Models::DocumentGenerateDownloadLinkResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute url
        #   Pre-signed temporary URL for downloading the document
        #
        #   @return [String]
        required :url, String

        # @!method initialize(url:)
        #   @param url [String] Pre-signed temporary URL for downloading the document
      end
    end
  end
end
