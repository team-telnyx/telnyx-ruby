# frozen_string_literal: true

module Telnyx
  module Resources
    class Reputation
      # Associate phone numbers with an enterprise for reputation monitoring and
      # retrieve reputation scores
      class Numbers
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Reputation::NumberRetrieveParams} for more details.
        #
        # Get reputation data for a specific phone number without requiring an
        # `enterprise_id`.
        #
        # Same response as the enterprise-scoped endpoint. Uses cached data by default.
        #
        # @overload retrieve(phone_number, fresh: nil, request_options: {})
        #
        # @param phone_number [String] Phone number in E.164 format
        #
        # @param fresh [Boolean] When true, fetches fresh reputation data (incurs API cost). When false, returns
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Reputation::NumberRetrieveResponse]
        #
        # @see Telnyx::Models::Reputation::NumberRetrieveParams
        def retrieve(phone_number, params = {})
          parsed, options = Telnyx::Reputation::NumberRetrieveParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["reputation/numbers/%1$s", phone_number],
            query: query,
            model: Telnyx::Models::Reputation::NumberRetrieveResponse,
            options: options
          )
        end

        # List all phone numbers enrolled in Number Reputation monitoring for your
        # account. This is a simplified endpoint that does not require an `enterprise_id`
        # — it returns numbers across all your enterprises.
        #
        # Supports pagination and filtering by phone number.
        #
        # @overload list(page_number: nil, page_size: nil, phone_number: nil, request_options: {})
        #
        # @param page_number [Integer] Page number (1-indexed)
        #
        # @param page_size [Integer] Number of items per page
        #
        # @param phone_number [String] Filter by specific phone number (E.164 format)
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::ReputationPhoneNumberWithReputationData>]
        #
        # @see Telnyx::Models::Reputation::NumberListParams
        def list(params = {})
          parsed, options = Telnyx::Reputation::NumberListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "reputation/numbers",
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::ReputationPhoneNumberWithReputationData,
            options: options
          )
        end

        # Remove a phone number from Number Reputation monitoring without requiring an
        # `enterprise_id`.
        #
        # @overload delete(phone_number, request_options: {})
        #
        # @param phone_number [String] Phone number in E.164 format
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Reputation::NumberDeleteParams
        def delete(phone_number, params = {})
          @client.request(
            method: :delete,
            path: ["reputation/numbers/%1$s", phone_number],
            model: NilClass,
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
