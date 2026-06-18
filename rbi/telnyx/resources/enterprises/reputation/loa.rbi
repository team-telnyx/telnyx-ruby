# typed: strong

module Telnyx
  module Resources
    class Enterprises
      class Reputation
        # Phone-number reputation monitoring (spam-score lookup and tracking).
        class Loa
          # Point the enterprise's reputation settings at a new signed LOA document. This
          # resets LOA approval to `pending`; the new document must be approved before
          # additional phone numbers can be added.
          sig do
            params(
              enterprise_id: String,
              loa_document_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Enterprises::EnterpriseReputationPublicWrapped)
          end
          def update(
            # The enterprise id. Lowercase UUID.
            enterprise_id,
            # Id of the new signed LOA document (from the Telnyx Documents API). Changing it
            # resets LOA approval; the new document must be approved before more numbers can
            # be added.
            loa_document_id:,
            request_options: {}
          )
          end

          # Render the LOA for this enterprise as a PDF. The enterprise identity, address,
          # and authorized-representative contact are taken from the enterprise record; the
          # optional `agent` block is supplied only when a third-party partner manages the
          # numbers. The response is the PDF itself (unsigned unless a `signature` is
          # provided). Sign it and upload it to the Telnyx Documents API
          # (`POST /v2/documents`, see https://developers.telnyx.com/api/documents) to
          # obtain the `loa_document_id` required by `POST .../reputation`.
          sig do
            params(
              enterprise_id: String,
              agent: Telnyx::Enterprises::Reputation::AgentInput::OrHash,
              signature:
                Telnyx::Enterprises::Reputation::LoaRenderParams::Signature::OrHash,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def render(
            # The enterprise id. Lowercase UUID.
            enterprise_id,
            # Third-party reseller / partner managing the enterprise's phone numbers. Omit
            # when the enterprise works directly with Telnyx.
            agent: nil,
            # Optional signature embedded in the rendered PDF. When omitted the PDF is
            # returned unsigned for the customer to sign and upload.
            signature: nil,
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
