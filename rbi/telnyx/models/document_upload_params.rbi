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

      sig do
        returns(
          T.any(
            Telnyx::DocumentUploadParams::Document::DocServiceDocumentUploadURL,
            Telnyx::DocumentUploadParams::Document::DocServiceDocumentUploadInline
          )
        )
      end
      attr_accessor :document

      sig do
        params(
          document:
            T.any(
              Telnyx::DocumentUploadParams::Document::DocServiceDocumentUploadURL::OrHash,
              Telnyx::DocumentUploadParams::Document::DocServiceDocumentUploadInline::OrHash
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(document:, request_options: {})
      end

      sig do
        override.returns(
          {
            document:
              T.any(
                Telnyx::DocumentUploadParams::Document::DocServiceDocumentUploadURL,
                Telnyx::DocumentUploadParams::Document::DocServiceDocumentUploadInline
              ),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Document
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::DocumentUploadParams::Document::DocServiceDocumentUploadURL,
              Telnyx::DocumentUploadParams::Document::DocServiceDocumentUploadInline
            )
          end

        class DocServiceDocumentUploadURL < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::DocumentUploadParams::Document::DocServiceDocumentUploadURL,
                Telnyx::Internal::AnyHash
              )
            end

          # If the file is already hosted publicly, you can provide a URL and have the
          # documents service fetch it for you.
          sig { returns(String) }
          attr_accessor :url

          # Optional reference string for customer tracking.
          sig { returns(T.nilable(String)) }
          attr_reader :customer_reference

          sig { params(customer_reference: String).void }
          attr_writer :customer_reference

          # The filename of the document.
          sig { returns(T.nilable(String)) }
          attr_reader :filename

          sig { params(filename: String).void }
          attr_writer :filename

          sig do
            params(
              url: String,
              customer_reference: String,
              filename: String
            ).returns(T.attached_class)
          end
          def self.new(
            # If the file is already hosted publicly, you can provide a URL and have the
            # documents service fetch it for you.
            url:,
            # Optional reference string for customer tracking.
            customer_reference: nil,
            # The filename of the document.
            filename: nil
          )
          end

          sig do
            override.returns(
              { url: String, customer_reference: String, filename: String }
            )
          end
          def to_hash
          end
        end

        class DocServiceDocumentUploadInline < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::DocumentUploadParams::Document::DocServiceDocumentUploadInline,
                Telnyx::Internal::AnyHash
              )
            end

          # The Base64 encoded contents of the file you are uploading.
          sig { returns(String) }
          attr_accessor :file

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

          sig do
            params(
              file: String,
              customer_reference: String,
              filename: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The Base64 encoded contents of the file you are uploading.
            file:,
            # A customer reference string for customer look ups.
            customer_reference: nil,
            # The filename of the document.
            filename: nil
          )
          end

          sig do
            override.returns(
              { file: String, customer_reference: String, filename: String }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[Telnyx::DocumentUploadParams::Document::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
