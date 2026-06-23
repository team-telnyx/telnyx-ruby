# frozen_string_literal: true

module Telnyx
  module Resources
    class Enterprises
      class Reputation
        # Phone-number reputation monitoring (spam-score lookup and tracking).
        class Numbers
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Enterprises::Reputation::NumberRetrieveParams} for more
          # details.
          #
          # Retrieve one registered number with its latest reputation snapshot. The
          # `phone_number` path parameter is in E.164 format and must be URL-encoded (e.g.
          # `%2B19493253498`).
          #
          # @overload retrieve(phone_number, enterprise_id:, fresh: nil, request_options: {})
          #
          # @param phone_number [String] Path param: Phone number in E.164 format (`+1NPANXXXXXX` for US/CA). The leading
          #
          # @param enterprise_id [String] Path param: The enterprise id. Lowercase UUID.
          #
          # @param fresh [Boolean] Query param: When true, fetches fresh reputation data (incurs API cost). When fa
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Enterprises::Reputation::ReputationPhoneNumberWithReputation]
          #
          # @see Telnyx::Models::Enterprises::Reputation::NumberRetrieveParams
          def retrieve(phone_number, params)
            parsed, options = Telnyx::Enterprises::Reputation::NumberRetrieveParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            enterprise_id =
              parsed.delete(:enterprise_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["enterprises/%1$s/reputation/numbers/%2$s", enterprise_id, phone_number],
              query: query,
              model: Telnyx::Enterprises::Reputation::ReputationPhoneNumberWithReputation,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Enterprises::Reputation::NumberListParams} for more details.
          #
          # Paginated list of phone numbers registered for reputation monitoring under this
          # enterprise. The response includes the latest reputation snapshot per number
          # where one has been collected.
          #
          # @overload list(enterprise_id, filter_phone_number_contains: nil, filter_phone_number_eq: nil, page_number: nil, page_size: nil, request_options: {})
          #
          # @param enterprise_id [String] The enterprise id. Lowercase UUID.
          #
          # @param filter_phone_number_contains [String] Partial match on phone number. Must contain at least 5 digits.
          #
          # @param filter_phone_number_eq [String] Exact phone-number match (E.164).
          #
          # @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
          #
          # @param page_size [Integer] Items per page. Default 10. Maximum 250; values above are clamped to 250.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Enterprises::Reputation::ReputationPhoneNumber>]
          #
          # @see Telnyx::Models::Enterprises::Reputation::NumberListParams
          def list(enterprise_id, params = {})
            parsed, options = Telnyx::Enterprises::Reputation::NumberListParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["enterprises/%1$s/reputation/numbers", enterprise_id],
              query: query.transform_keys(
                filter_phone_number_contains: "filter[phone_number][contains]",
                filter_phone_number_eq: "filter[phone_number][eq]",
                page_number: "page[number]",
                page_size: "page[size]"
              ),
              page: Telnyx::Internal::DefaultFlatPagination,
              model: Telnyx::Enterprises::Reputation::ReputationPhoneNumber,
              options: options
            )
          end

          # Add up to 100 phone numbers to reputation monitoring on this enterprise. Each
          # must be in E.164 format (`+1NPANXXXXXX` for US/CA) and belong to your Telnyx
          # phone-number inventory.
          #
          # **Prerequisite**: reputation must already be enabled on this enterprise (see
          # `POST .../reputation`).
          #
          # **Pricing:** This is a billable action. See https://telnyx.com/pricing/numbers
          # for current pricing.
          #
          # @overload associate(enterprise_id, phone_numbers:, request_options: {})
          #
          # @param enterprise_id [String] The enterprise id. Lowercase UUID.
          #
          # @param phone_numbers [Array<String>] 1–100 phone numbers in E.164 format with a leading `+`.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Enterprises::Reputation::ReputationPhoneNumberList]
          #
          # @see Telnyx::Models::Enterprises::Reputation::NumberAssociateParams
          def associate(enterprise_id, params)
            parsed, options = Telnyx::Enterprises::Reputation::NumberAssociateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["enterprises/%1$s/reputation/numbers", enterprise_id],
              body: parsed,
              model: Telnyx::Enterprises::Reputation::ReputationPhoneNumberList,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Enterprises::Reputation::NumberDisassociateParams} for more
          # details.
          #
          # Stop tracking the reputation of this phone number. The number itself remains in
          # your inventory; only the reputation registration is removed.
          #
          # @overload disassociate(phone_number, enterprise_id:, request_options: {})
          #
          # @param phone_number [String] Phone number in E.164 format (`+1NPANXXXXXX` for US/CA). The leading `+` MUST be
          #
          # @param enterprise_id [String] The enterprise id. Lowercase UUID.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::Enterprises::Reputation::NumberDisassociateParams
          def disassociate(phone_number, params)
            parsed, options = Telnyx::Enterprises::Reputation::NumberDisassociateParams.dump_request(params)
            enterprise_id =
              parsed.delete(:enterprise_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["enterprises/%1$s/reputation/numbers/%2$s", enterprise_id, phone_number],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Enterprises::Reputation::NumberRefreshParams} for more details.
          #
          # Immediately refresh the stored reputation data for the listed numbers. This is
          # in addition to the periodic refresh determined by `check_frequency`. Up to 100
          # numbers per call. The response carries the kicked-off jobs; the actual refresh
          # runs asynchronously.
          #
          # **Pricing:** Forcing a refresh performs live reputation lookups, which are
          # billable. See https://telnyx.com/pricing/numbers for current pricing.
          #
          # @overload refresh(enterprise_id, phone_numbers:, request_options: {})
          #
          # @param enterprise_id [String] The enterprise id. Lowercase UUID.
          #
          # @param phone_numbers [Array<String>] Phone numbers to refresh reputation data for. 1–100 numbers per request, each in
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse]
          #
          # @see Telnyx::Models::Enterprises::Reputation::NumberRefreshParams
          def refresh(enterprise_id, params)
            parsed, options = Telnyx::Enterprises::Reputation::NumberRefreshParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["enterprises/%1$s/reputation/numbers/refresh", enterprise_id],
              body: parsed,
              model: Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse,
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
