# frozen_string_literal: true

module Telnyx
  module Resources
    class Enterprises
      class Reputation
        # Phone-number reputation monitoring (spam-score lookup and tracking).
        class Loa
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Enterprises::Reputation::LoaUpdateParams} for more details.
          #
          # Point the enterprise's reputation settings at a new signed LOA document. This
          # resets LOA approval to `pending`; the new document must be approved before
          # additional phone numbers can be added.
          #
          # @overload update(enterprise_id, loa_document_id:, request_options: {})
          #
          # @param enterprise_id [String] The enterprise id. Lowercase UUID.
          #
          # @param loa_document_id [String] Id of the new signed LOA document (from the Telnyx Documents API). Changing it r
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Enterprises::Reputation::LoaUpdateResponse]
          #
          # @see Telnyx::Models::Enterprises::Reputation::LoaUpdateParams
          def update(enterprise_id, params)
            parsed, options = Telnyx::Enterprises::Reputation::LoaUpdateParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["enterprises/%1$s/reputation/loa", enterprise_id],
              body: parsed,
              model: Telnyx::Models::Enterprises::Reputation::LoaUpdateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Enterprises::Reputation::LoaRenderParams} for more details.
          #
          # Render the LOA for this enterprise as a PDF. The enterprise identity, address,
          # and authorized-representative contact are taken from the enterprise record; the
          # optional `agent` block is supplied only when a third-party partner manages the
          # numbers. The response is the PDF itself (unsigned unless a `signature` is
          # provided). Sign it and upload it to the Telnyx Documents API
          # (`POST /v2/documents`, see https://developers.telnyx.com/api/documents) to
          # obtain the `loa_document_id` required by `POST .../reputation`.
          #
          # @overload render(enterprise_id, agent: nil, signature: nil, request_options: {})
          #
          # @param enterprise_id [String] The enterprise id. Lowercase UUID.
          #
          # @param agent [Telnyx::Models::Enterprises::Reputation::LoaRenderParams::Agent] Third-party reseller / partner managing the enterprise's phone numbers. Omit whe
          #
          # @param signature [Telnyx::Models::Enterprises::Reputation::LoaRenderParams::Signature] Optional signature embedded in the rendered PDF. When omitted the PDF is returne
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see Telnyx::Models::Enterprises::Reputation::LoaRenderParams
          def render(enterprise_id, params = {})
            parsed, options = Telnyx::Enterprises::Reputation::LoaRenderParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["enterprises/%1$s/reputation/loa", enterprise_id],
              headers: {"accept" => "application/pdf"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
