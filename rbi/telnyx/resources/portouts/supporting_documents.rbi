# typed: strong

module Telnyx
  module Resources
    class Portouts
      class SupportingDocuments
        # Creates a list of supporting documents on a portout request.
        sig do
          params(
            id: String,
            documents:
              T::Array[
                Telnyx::Portouts::SupportingDocumentCreateParams::Document::OrHash
              ],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Portouts::SupportingDocumentCreateResponse)
        end
        def create(
          # Portout id
          id,
          # List of supporting documents parameters
          documents: nil,
          request_options: {}
        )
        end

        # List every supporting documents for a portout request.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Portouts::SupportingDocumentListResponse)
        end
        def list(
          # Portout id
          id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
