# typed: strong

module Telnyx
  module Models
    class DocumentUploadParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::DocumentUploadParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::DocumentUploadParams::Document) }
      attr_reader :document

      sig do
        params(document: Telnyx::DocumentUploadParams::Document::OrHash).void
      end
      attr_writer :document

      sig do
        params(
          document: Telnyx::DocumentUploadParams::Document::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(document:, request_options: {})
      end

      sig do
        override.returns(
          {
            document: Telnyx::DocumentUploadParams::Document,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Document < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::DocumentUploadParams::Document,
              Telnyx::Internal::AnyHash
            )
          end

        # A customer reference string for customer look ups.
        sig { returns(T.nilable(String)) }
        attr_reader :customer_reference

        sig { params(customer_reference: String).void }
        attr_writer :customer_reference

        # Alternatively, instead of the URL you can provide the Base64 encoded contents of
        # the file you are uploading.
        sig { returns(T.nilable(String)) }
        attr_reader :file

        sig { params(file: String).void }
        attr_writer :file

        # The filename of the document.
        sig { returns(T.nilable(String)) }
        attr_reader :filename

        sig { params(filename: String).void }
        attr_writer :filename

        # If the file is already hosted publicly, you can provide a URL and have the
        # documents service fetch it for you.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            customer_reference: String,
            file: String,
            filename: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A customer reference string for customer look ups.
          customer_reference: nil,
          # Alternatively, instead of the URL you can provide the Base64 encoded contents of
          # the file you are uploading.
          file: nil,
          # The filename of the document.
          filename: nil,
          # If the file is already hosted publicly, you can provide a URL and have the
          # documents service fetch it for you.
          url: nil
        )
        end

        sig do
          override.returns(
            {
              customer_reference: String,
              file: String,
              filename: String,
              url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
