# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Documents#upload_json
    class DocumentUploadJsonParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute document
      #
      #   @return [Telnyx::Models::DocumentUploadJsonParams::Document]
      required :document, -> { Telnyx::DocumentUploadJsonParams::Document }

      # @!method initialize(document:, request_options: {})
      #   @param document [Telnyx::Models::DocumentUploadJsonParams::Document]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Document < Telnyx::Internal::Type::BaseModel
        # @!attribute customer_reference
        #   A customer reference string for customer look ups.
        #
        #   @return [String, nil]
        optional :customer_reference, String

        # @!attribute file
        #   Alternatively, instead of the URL you can provide the Base64 encoded contents of
        #   the file you are uploading.
        #
        #   @return [String, nil]
        optional :file, String

        # @!attribute filename
        #   The filename of the document.
        #
        #   @return [String, nil]
        optional :filename, String

        # @!attribute url
        #   If the file is already hosted publicly, you can provide a URL and have the
        #   documents service fetch it for you.
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(customer_reference: nil, file: nil, filename: nil, url: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::DocumentUploadJsonParams::Document} for more details.
        #
        #   @param customer_reference [String] A customer reference string for customer look ups.
        #
        #   @param file [String] Alternatively, instead of the URL you can provide the Base64 encoded contents of
        #
        #   @param filename [String] The filename of the document.
        #
        #   @param url [String] If the file is already hosted publicly, you can provide a URL and have the docum
      end
    end
  end
end
