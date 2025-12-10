# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Documents#upload_json
    class DocumentUploadJsonParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute document
      #
      #   @return [Telnyx::Models::DocumentUploadJsonParams::Document::DocServiceDocumentUploadURL, Telnyx::Models::DocumentUploadJsonParams::Document::DocServiceDocumentUploadInline]
      required :document, union: -> { Telnyx::DocumentUploadJsonParams::Document }

      # @!method initialize(document:, request_options: {})
      #   @param document [Telnyx::Models::DocumentUploadJsonParams::Document::DocServiceDocumentUploadURL, Telnyx::Models::DocumentUploadJsonParams::Document::DocServiceDocumentUploadInline]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      module Document
        extend Telnyx::Internal::Type::Union

        variant -> { Telnyx::DocumentUploadJsonParams::Document::DocServiceDocumentUploadURL }

        variant -> { Telnyx::DocumentUploadJsonParams::Document::DocServiceDocumentUploadInline }

        class DocServiceDocumentUploadURL < Telnyx::Internal::Type::BaseModel
          # @!attribute url
          #   If the file is already hosted publicly, you can provide a URL and have the
          #   documents service fetch it for you.
          #
          #   @return [String]
          required :url, String

          # @!attribute customer_reference
          #   Optional reference string for customer tracking.
          #
          #   @return [String, nil]
          optional :customer_reference, String

          # @!attribute filename
          #   The filename of the document.
          #
          #   @return [String, nil]
          optional :filename, String

          # @!method initialize(url:, customer_reference: nil, filename: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::DocumentUploadJsonParams::Document::DocServiceDocumentUploadURL}
          #   for more details.
          #
          #   @param url [String] If the file is already hosted publicly, you can provide a URL and have the docum
          #
          #   @param customer_reference [String] Optional reference string for customer tracking.
          #
          #   @param filename [String] The filename of the document.
        end

        class DocServiceDocumentUploadInline < Telnyx::Internal::Type::BaseModel
          # @!attribute file
          #   The Base64 encoded contents of the file you are uploading.
          #
          #   @return [String]
          required :file, String

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

          # @!method initialize(file:, customer_reference: nil, filename: nil)
          #   @param file [String] The Base64 encoded contents of the file you are uploading.
          #
          #   @param customer_reference [String] A customer reference string for customer look ups.
          #
          #   @param filename [String] The filename of the document.
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::DocumentUploadJsonParams::Document::DocServiceDocumentUploadURL, Telnyx::Models::DocumentUploadJsonParams::Document::DocServiceDocumentUploadInline)]
      end
    end
  end
end
