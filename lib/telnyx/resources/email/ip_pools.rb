# frozen_string_literal: true

module Telnyx
  module Resources
    class Email
      # Group dedicated IPs into pools for sending.
      class IPPools
        # Group dedicated IPs into pools for sending.
        # @return [Telnyx::Resources::Email::IPPools::IPs]
        attr_reader :ips

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Email::IPPoolCreateParams} for more details.
        #
        # Create an account-scoped pool of dedicated IPs. Set `is_default` or `domain_id`
        # for the pool to carry mail; a pool with neither carries none.
        #
        # @overload create(name:, domain_id: nil, is_default: nil, request_options: {})
        #
        # @param name [String] Pool name: 1-64 characters of lowercase letters, digits, `.`, `_`, and `-`, star
        #
        # @param domain_id [String] Scope the pool to one of the account's email domains; the pool then carries that
        #
        # @param is_default [Boolean] Make this the account's default pool, which carries mail for sending domains wit
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Email::IPPoolShowResponse]
        #
        # @see Telnyx::Models::Email::IPPoolCreateParams
        def create(params)
          parsed, options = Telnyx::Email::IPPoolCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "email/ip_pools",
            body: parsed,
            model: Telnyx::Email::IPPoolShowResponse,
            options: options
          )
        end

        # Retrieve a single IP pool by its identifier, including its dedicated-IP members
        # with billing state.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] The IP pool identifier (UUID).
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Email::IPPoolShowResponse]
        #
        # @see Telnyx::Models::Email::IPPoolRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["email/ip_pools/%1$s", id],
            model: Telnyx::Email::IPPoolShowResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Email::IPPoolUpdateParams} for more details.
        #
        # Rename the pool, set or clear the default flag, or change its domain scope.
        # Routing follows the new settings for subsequent mail.
        #
        # @overload update(id, domain_id: nil, is_default: nil, name: nil, request_options: {})
        #
        # @param id [String] The IP pool identifier (UUID).
        #
        # @param domain_id [String, nil] Scope the pool to one of the account's email domains, or `null` to remove the sc
        #
        # @param is_default [Boolean] Set or clear the account default flag. An account can have one default pool.
        #
        # @param name [String] Pool name: 1-64 characters of lowercase letters, digits, `.`, `_`, and `-`, star
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Email::IPPoolShowResponse]
        #
        # @see Telnyx::Models::Email::IPPoolUpdateParams
        def update(id, params = {})
          parsed, options = Telnyx::Email::IPPoolUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["email/ip_pools/%1$s", id],
            body: parsed,
            model: Telnyx::Email::IPPoolShowResponse,
            options: options
          )
        end

        # List the account's dedicated-IP pools. Member IPs are not included (`ips` is
        # empty); retrieve a pool to see its members.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Email::IPPoolListResponse]
        #
        # @see Telnyx::Models::Email::IPPoolListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "email/ip_pools",
            model: Telnyx::Models::Email::IPPoolListResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Email::IPPoolDeleteParams} for more details.
        #
        # Delete the pool. Member IPs are kept but leave the pool, so they carry no mail
        # until added to another pool. Deleting a pool changes routing for subsequently
        # resolved messages. It does not reroute messages already assigned to the deleted
        # pool. Deleting a pool that still has IPs requires `force=true` and `drain=true`.
        #
        # @overload delete(id, drain: nil, force: nil, request_options: {})
        #
        # @param id [String] The IP pool identifier (UUID).
        #
        # @param drain [Boolean] Set together with `force=true` to delete a pool that still has IPs. Acknowledges
        #
        # @param force [Boolean] Set together with `drain=true` to delete a pool that still has IPs. Either flag
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Email::IPPoolDeleteParams
        def delete(id, params = {})
          parsed, options = Telnyx::Email::IPPoolDeleteParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :delete,
            path: ["email/ip_pools/%1$s", id],
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
          @ips = Telnyx::Resources::Email::IPPools::IPs.new(client: client)
        end
      end
    end
  end
end
