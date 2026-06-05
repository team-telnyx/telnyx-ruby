# frozen_string_literal: true

module Telnyx
  module Resources
    class TermsOfService
      # Accept and review the Branded Calling and Phone Number Reputation terms of
      # service.
      class Agreements
        # Retrieve a single ToS agreement record. Returns `404` if the agreement does not
        # exist or does not belong to the authenticated user.
        #
        # @overload retrieve(agreement_id, request_options: {})
        #
        # @param agreement_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::TermsOfService::AgreementRetrieveResponse]
        #
        # @see Telnyx::Models::TermsOfService::AgreementRetrieveParams
        def retrieve(agreement_id, params = {})
          @client.request(
            method: :get,
            path: ["terms_of_service/agreements/%1$s", agreement_id],
            model: Telnyx::Models::TermsOfService::AgreementRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::TermsOfService::AgreementListParams} for more details.
        #
        # Returns the Terms of Service agreements the authenticated user has on file. Each
        # entry records the version agreed to and when. Most users only have one agreement
        # per product, but if the ToS is updated and the user re-agrees a new entry is
        # added.
        #
        # Results are paginated with the standard `page[number]` / `page[size]`
        # parameters; the response uses the standard `{data, meta}` JSON:API envelope.
        #
        # By default this returns agreements for **all** products the user has agreed to
        # (including Branded Calling). Pass the `product_type` query parameter to scope
        # the result to a single product.
        #
        # @overload list(page_number: nil, page_size: nil, product_type: nil, request_options: {})
        #
        # @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
        #
        # @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
        #
        # @param product_type [Symbol, Telnyx::Models::TermsOfService::AgreementListParams::ProductType] Optional filter. Omit to list the user's agreements for **every** product (brand
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::TermsOfService::AgreementListResponse>]
        #
        # @see Telnyx::Models::TermsOfService::AgreementListParams
        def list(params = {})
          parsed, options = Telnyx::TermsOfService::AgreementListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "terms_of_service/agreements",
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::TermsOfService::AgreementListResponse,
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
