# typed: strong

module Telnyx
  module Models
    class DocumentUploadJsonParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::DocumentUploadJsonParams, Telnyx::Internal::AnyHash)
        end

      # If the file is already hosted publicly, you can provide a URL and have the
      # documents service fetch it for you.
      sig { returns(String) }
      attr_accessor :url

      # A customer reference string for customer look ups.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # The filename of the document.
      sig { returns(T.nilable(String)) }
      attr_reader :filename

      sig { params(filename: String).void }
      attr_writer :filename

      # The Base64 encoded contents of the file you are uploading.
      sig { returns(String) }
      attr_accessor :file

      sig do
        params(
          url: String,
          file: String,
          customer_reference: String,
          filename: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # If the file is already hosted publicly, you can provide a URL and have the
        # documents service fetch it for you.
        url:,
        # The Base64 encoded contents of the file you are uploading.
        file:,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # The filename of the document.
        filename: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            customer_reference: String,
            filename: String,
            file: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
