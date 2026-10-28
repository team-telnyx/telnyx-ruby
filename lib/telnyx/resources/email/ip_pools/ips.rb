# frozen_string_literal: true

module Telnyx
  module Resources
    class Email
      class IPPools
        # Group dedicated IPs into pools for sending.
        class IPs
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Email::IPPools::IPCreateParams} for more details.
          #
          # Add a dedicated IP to the pool with an optional routing weight. An IP can belong
          # to one pool; to move an IP that is already in a pool, use
          # `PATCH /email/dedicated_ips/{id}` with `pool_id`.
          #
          # @overload create(id, dedicated_ip_id:, weight: nil, request_options: {})
          #
          # @param id [String] The IP pool identifier (UUID).
          #
          # @param dedicated_ip_id [String] The dedicated IP to add. It must belong to the account, must not be released, an
          #
          # @param weight [Integer] Relative routing weight for this IP in the pool. Positive integer; defaults to 1
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Email::IPPools::IPCreateResponse]
          #
          # @see Telnyx::Models::Email::IPPools::IPCreateParams
          def create(id, params)
            parsed, options = Telnyx::Email::IPPools::IPCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["email/ip_pools/%1$s/ips", id],
              body: parsed,
              model: Telnyx::Models::Email::IPPools::IPCreateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Email::IPPools::IPDeleteParams} for more details.
          #
          # Remove the dedicated IP from the pool. The IP is kept but carries no mail until
          # added to a pool again. Removing the last IP requires `force=true` and
          # `drain=true`.
          #
          # @overload delete(ip_id, id:, drain: nil, force: nil, request_options: {})
          #
          # @param ip_id [String] Path param: The dedicated IP identifier (UUID).
          #
          # @param id [String] Path param: The IP pool identifier (UUID).
          #
          # @param drain [Boolean] Query param: Set together with `force=true` to remove the last IP in the pool. A
          #
          # @param force [Boolean] Query param: Set together with `drain=true` to remove the last IP in the pool. E
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::Email::IPPools::IPDeleteParams
          def delete(ip_id, params)
            parsed, options = Telnyx::Email::IPPools::IPDeleteParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            id =
              parsed.delete(:id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["email/ip_pools/%1$s/ips/%2$s", id, ip_id],
              query: query,
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
