# frozen_string_literal: true

module Telnyx
  module Resources
    class Enterprises
      class Reputation
        # Phone-number reputation monitoring (spam-score lookup and tracking).
        class Remediation
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Enterprises::Reputation::RemediationCreateParams} for more
          # details.
          #
          # Submit a batch of phone numbers belonging to this enterprise for reputation
          # remediation. The request is accepted asynchronously: this endpoint returns `202`
          # with the persisted request id, then the request transitions through processing
          # states until completion. Use the GET endpoints to poll status and per-number
          # results.
          #
          # Each phone number must be in E.164 format and belong to this enterprise. A
          # number that already has an in-flight remediation request is rejected.
          #
          # @overload create(enterprise_id, call_purpose:, phone_numbers:, contact_email: nil, webhook_url: nil, request_options: {})
          #
          # @param enterprise_id [String] The enterprise id. Lowercase UUID.
          #
          # @param call_purpose [String] How the numbers are used (free text).
          #
          # @param phone_numbers [Array<String>] Phone numbers in E.164 format. Each must belong to this enterprise. Maximum 2,00
          #
          # @param contact_email [String] Optional contact email for this remediation request.
          #
          # @param webhook_url [String] Optional https:// URL for status notifications.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Enterprises::Reputation::RemediationCreateResponse]
          #
          # @see Telnyx::Models::Enterprises::Reputation::RemediationCreateParams
          def create(enterprise_id, params)
            parsed, options = Telnyx::Enterprises::Reputation::RemediationCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["enterprises/%1$s/reputation/remediation", enterprise_id],
              body: parsed,
              model: Telnyx::Models::Enterprises::Reputation::RemediationCreateResponse,
              options: options
            )
          end

          # Retrieve the full detail of a remediation request, including current status,
          # per-number results (once available), and submission metadata.
          #
          # @overload retrieve(remediation_id, enterprise_id:, request_options: {})
          #
          # @param remediation_id [String] The remediation request id. Lowercase UUID.
          #
          # @param enterprise_id [String] The enterprise id. Lowercase UUID.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse]
          #
          # @see Telnyx::Models::Enterprises::Reputation::RemediationRetrieveParams
          def retrieve(remediation_id, params)
            parsed, options = Telnyx::Enterprises::Reputation::RemediationRetrieveParams.dump_request(params)
            enterprise_id =
              parsed.delete(:enterprise_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["enterprises/%1$s/reputation/remediation/%2$s", enterprise_id, remediation_id],
              model: Telnyx::Models::Enterprises::Reputation::RemediationRetrieveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Enterprises::Reputation::RemediationListParams} for more
          # details.
          #
          # Paginated list of remediation requests for this enterprise. List items omit
          # per-number results and webhook URLs to keep the response small; call GET by id
          # for full detail. Supports JSON:API pagination and optional filters on status and
          # created-at range.
          #
          # @overload list(enterprise_id, filter_created_at_gte: nil, filter_created_at_lte: nil, filter_status: nil, page_number: nil, page_size: nil, request_options: {})
          #
          # @param enterprise_id [String] The enterprise id. Lowercase UUID.
          #
          # @param filter_created_at_gte [Time] Only requests created on or after this timestamp (ISO 8601).
          #
          # @param filter_created_at_lte [Time] Only requests created on or before this timestamp (ISO 8601).
          #
          # @param filter_status [Symbol, Telnyx::Models::Enterprises::Reputation::RemediationListParams::FilterStatus] Filter by customer-facing status.
          #
          # @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
          #
          # @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Enterprises::Reputation::RemediationListResponse>]
          #
          # @see Telnyx::Models::Enterprises::Reputation::RemediationListParams
          def list(enterprise_id, params = {})
            parsed, options = Telnyx::Enterprises::Reputation::RemediationListParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["enterprises/%1$s/reputation/remediation", enterprise_id],
              query: query.transform_keys(
                filter_created_at_gte: "filter[created_at][gte]",
                filter_created_at_lte: "filter[created_at][lte]",
                filter_status: "filter[status]",
                page_number: "page[number]",
                page_size: "page[size]"
              ),
              page: Telnyx::Internal::DefaultFlatPagination,
              model: Telnyx::Models::Enterprises::Reputation::RemediationListResponse,
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
