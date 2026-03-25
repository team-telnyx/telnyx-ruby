# frozen_string_literal: true

module Telnyx
  module Resources
    class Enterprises
      class Reputation
        # Associate phone numbers with an enterprise for reputation monitoring and
        # retrieve reputation scores
        class Numbers
          # Associate one or more phone numbers with an enterprise for Number Reputation
          # monitoring.
          #
          # **Validations:**
          #
          # - Phone numbers must be in E.164 format (e.g., `+16035551234`)
          # - Phone numbers must be in-service and belong to your account (verified via
          #   Warehouse)
          # - Phone numbers must be US local numbers
          # - Phone numbers cannot already be associated with any enterprise
          #
          # **Note:** This operation is atomic — if any number fails validation, the entire
          # request fails.
          #
          # **Maximum:** 100 phone numbers per request.
          #
          # @overload create(enterprise_id, phone_numbers:, request_options: {})
          #
          # @param enterprise_id [String] Unique identifier of the enterprise (UUID)
          #
          # @param phone_numbers [Array<String>] List of phone numbers to associate for reputation monitoring (max 100)
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Enterprises::Reputation::NumberCreateResponse]
          #
          # @see Telnyx::Models::Enterprises::Reputation::NumberCreateParams
          def create(enterprise_id, params)
            parsed, options = Telnyx::Enterprises::Reputation::NumberCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["enterprises/%1$s/reputation/numbers", enterprise_id],
              body: parsed,
              model: Telnyx::Models::Enterprises::Reputation::NumberCreateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Enterprises::Reputation::NumberRetrieveParams} for more
          # details.
          #
          # Get detailed reputation data for a specific phone number associated with an
          # enterprise.
          #
          # **Query Parameters:**
          #
          # - `fresh` (default: `false`): When `true`, fetches fresh reputation data (incurs
          #   API cost). When `false`, returns cached data. If no cached data exists, fresh
          #   data is automatically fetched.
          #
          # **Returns:**
          #
          # - `spam_risk`: Overall spam risk level (`low`, `medium`, `high`)
          # - `spam_category`: Spam category classification
          # - `maturity_score`: Maturity metric (0–100)
          # - `connection_score`: Connection quality metric (0–100)
          # - `engagement_score`: Engagement metric (0–100)
          # - `sentiment_score`: Sentiment metric (0–100)
          # - `last_refreshed_at`: Timestamp of last data refresh
          #
          # @overload retrieve(phone_number, enterprise_id:, fresh: nil, request_options: {})
          #
          # @param phone_number [String] Path param: Phone number in E.164 format
          #
          # @param enterprise_id [String] Path param: Unique identifier of the enterprise (UUID)
          #
          # @param fresh [Boolean] Query param: When true, fetches fresh reputation data (incurs API cost). When fa
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse]
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
              model: Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse,
              options: options
            )
          end

          # List all phone numbers associated with an enterprise for Number Reputation
          # monitoring.
          #
          # Returns phone numbers with their cached reputation data (if available). Supports
          # pagination and filtering by phone number.
          #
          # @overload list(enterprise_id, page_number: nil, page_size: nil, phone_number: nil, request_options: {})
          #
          # @param enterprise_id [String] Unique identifier of the enterprise (UUID)
          #
          # @param page_number [Integer] Page number (1-indexed)
          #
          # @param page_size [Integer] Number of items per page
          #
          # @param phone_number [String] Filter by specific phone number (E.164 format)
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Enterprises::Reputation::NumberListResponse>]
          #
          # @see Telnyx::Models::Enterprises::Reputation::NumberListParams
          def list(enterprise_id, params = {})
            parsed, options = Telnyx::Enterprises::Reputation::NumberListParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["enterprises/%1$s/reputation/numbers", enterprise_id],
              query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
              page: Telnyx::Internal::DefaultFlatPagination,
              model: Telnyx::Models::Enterprises::Reputation::NumberListResponse,
              options: options
            )
          end

          # Remove a phone number from Number Reputation monitoring for an enterprise.
          #
          # The number will no longer be tracked and reputation data will no longer be
          # refreshed.
          #
          # @overload delete(phone_number, enterprise_id:, request_options: {})
          #
          # @param phone_number [String] Phone number in E.164 format
          #
          # @param enterprise_id [String] Unique identifier of the enterprise (UUID)
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::Enterprises::Reputation::NumberDeleteParams
          def delete(phone_number, params)
            parsed, options = Telnyx::Enterprises::Reputation::NumberDeleteParams.dump_request(params)
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
