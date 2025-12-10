# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Documents#upload_json
    class DocumentUploadJsonParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute url
      #   If the file is already hosted publicly, you can provide a URL and have the
      #   documents service fetch it for you.
      #
      #   @return [String]
      required :url, String

      # @!attribute customer_reference
      #   A customer reference string for customer look ups.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute filename
      #   The filename of the document.
      #
      #   @return [String, nil]
      optional :filename, String

      # @!attribute file
      #   The Base64 encoded contents of the file you are uploading.
      #
      #   @return [String]
      required :file, String

      # @!method initialize(url:, file:, customer_reference: nil, filename: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DocumentUploadJsonParams} for more details.
      #
      #   @param url [String] If the file is already hosted publicly, you can provide a URL and have the docum
      #
      #   @param file [String] The Base64 encoded contents of the file you are uploading.
      #
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param filename [String] The filename of the document.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
