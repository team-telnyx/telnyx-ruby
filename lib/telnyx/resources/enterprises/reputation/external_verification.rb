# frozen_string_literal: true

module Telnyx
  module Resources
    class Enterprises
      class Reputation
        # Phone-number reputation monitoring (spam-score lookup and tracking).
        class ExternalVerification
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Enterprises::Reputation::ExternalVerificationCreateParams} for
          # more details.
          #
          # Request permission to add phone numbers that the enterprise owns but that are
          # hosted with another provider. Submit one or more uploaded documents proving
          # ownership, such as a carrier invoice or account statement. The request is
          # reviewed once per enterprise. While it is `pending` or `rejected` you can submit
          # again to replace the documents; once `approved` it cannot be changed.
          #
          # @overload create(enterprise_id, document_ids:, phone_numbers: nil, request_options: {})
          #
          # @param enterprise_id [String] The enterprise id. Lowercase UUID.
          #
          # @param document_ids [Array<String>] Ids of uploaded documents (Documents API) proving the enterprise owns its phone
          #
          # @param phone_numbers [Array<String>] Optional. The phone numbers hosted with another provider that the documents cove
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Enterprises::Reputation::ExternalVerificationWrapped]
          #
          # @see Telnyx::Models::Enterprises::Reputation::ExternalVerificationCreateParams
          def create(enterprise_id, params)
            parsed, options = Telnyx::Enterprises::Reputation::ExternalVerificationCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["enterprises/%1$s/reputation/external_verification", enterprise_id],
              body: parsed,
              model: Telnyx::Enterprises::Reputation::ExternalVerificationWrapped,
              options: options
            )
          end

          # Get the review status of the enterprise's ownership proof for phone numbers
          # hosted with another provider. Returns 404 when no proof has been submitted.
          #
          # @overload list(enterprise_id, request_options: {})
          #
          # @param enterprise_id [String] The enterprise id. Lowercase UUID.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Enterprises::Reputation::ExternalVerificationWrapped]
          #
          # @see Telnyx::Models::Enterprises::Reputation::ExternalVerificationListParams
          def list(enterprise_id, params = {})
            @client.request(
              method: :get,
              path: ["enterprises/%1$s/reputation/external_verification", enterprise_id],
              model: Telnyx::Enterprises::Reputation::ExternalVerificationWrapped,
              options: params[:request_options]
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
