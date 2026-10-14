# typed: strong

module Telnyx
  module Resources
    class Enterprises
      class Reputation
        # Phone-number reputation monitoring (spam-score lookup and tracking).
        class ExternalVerification
          # Request permission to add phone numbers that the enterprise owns but that are
          # hosted with another provider. Submit one or more uploaded documents proving
          # ownership, such as a carrier invoice or account statement. The request is
          # reviewed once per enterprise. While it is `pending` or `rejected` you can submit
          # again to replace the documents; once `approved` it cannot be changed.
          sig do
            params(
              enterprise_id: String,
              document_ids: T::Array[String],
              phone_numbers: T::Array[String],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Enterprises::Reputation::ExternalVerificationWrapped
            )
          end
          def create(
            # The enterprise id. Lowercase UUID.
            enterprise_id,
            # Ids of uploaded documents (Documents API) proving the enterprise owns its phone
            # numbers hosted with another provider, for example a carrier invoice or account
            # statement.
            document_ids:,
            # Optional. The phone numbers hosted with another provider that the documents
            # cover, in E.164 format. Shown to the reviewer to match the documents to your
            # numbers; you can still add numbers that are not listed here, and each is checked
            # on its own.
            phone_numbers: nil,
            request_options: {}
          )
          end

          # Get the review status of the enterprise's ownership proof for phone numbers
          # hosted with another provider. Returns 404 when no proof has been submitted.
          sig do
            params(
              enterprise_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Enterprises::Reputation::ExternalVerificationWrapped
            )
          end
          def list(
            # The enterprise id. Lowercase UUID.
            enterprise_id,
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
end
