# frozen_string_literal: true

module Telnyx
  module Resources
    class Email
      # Purchase and manage dedicated sending IP addresses for your Telnyx email
      # traffic.
      class DedicatedIPs
        # Purchase and manage dedicated sending IP addresses for your Telnyx email
        # traffic.
        # @return [Telnyx::Resources::Email::DedicatedIPs::Actions]
        attr_reader :actions

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Email::DedicatedIPCreateParams} for more details.
        #
        # Purchase a dedicated sending IP. Requires a verified, enterprise, or legacy
        # account, and an `Idempotency-Key` header: a request without the header returns
        # `400` (code `10015`) and allocates nothing. Telnyx allocates the next available
        # IP from stock. The optional `region` and `ip_version` fields each restrict which
        # stock IP is allocated; they never change the allocated IP's metadata. An omitted
        # field applies no restriction for that field, and omitting the body applies
        # neither restriction. An unsupported selector value returns `422`; a supported
        # value that matches no available IP returns `429` and records the request on the
        # waitlist. Billing: $14/month/IP, charged as a monthly recurring charge (MRC)
        # from purchase. The IP is returned in `provisioning` status with a Telnyx-managed
        # PTR hostname and carries no mail until you call `start_warmup` and add it to a
        # pool that routes mail.
        #
        # @overload create(idempotency_key:, ip_version: nil, region: nil, request_options: {})
        #
        # @param idempotency_key [String] Header param: Required. Opaque, unquoted key for safely retrying the same purcha
        #
        # @param ip_version [Symbol, Telnyx::Models::Email::DedicatedIPCreateParams::IPVersion] Body param: Allocate an IP of this address family. Supported value: `ipv4`. Any
        #
        # @param region [Symbol, Telnyx::Models::Email::DedicatedIPCreateParams::Region] Body param: Allocate an IP in this region. Supported value: `ewr-nj1`. Any other
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Email::DedicatedIPShowResponse]
        #
        # @see Telnyx::Models::Email::DedicatedIPCreateParams
        def create(params)
          parsed, options = Telnyx::Email::DedicatedIPCreateParams.dump_request(params)
          header_params = {idempotency_key: "idempotency-key"}
          @client.request(
            method: :post,
            path: "email/dedicated_ips",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Telnyx::Email::DedicatedIPShowResponse,
            options: options
          )
        end

        # Retrieve a single dedicated IP by its identifier, including warm-up state,
        # billing state, and the DNS/PTR provisioning checklist.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] The dedicated IP identifier (UUID).
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Email::DedicatedIPShowResponse]
        #
        # @see Telnyx::Models::Email::DedicatedIPRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["email/dedicated_ips/%1$s", id],
            model: Telnyx::Email::DedicatedIPShowResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Email::DedicatedIPUpdateParams} for more details.
        #
        # Move the IP to another pool, or pause/resume its warm-up ramp. One change
        # applies per request. `pool_id` takes precedence over warm-up changes. Otherwise,
        # use `warmup_paused` or `warmup.paused`; a Boolean `warmup_paused` takes
        # precedence. Moving the last IP out of a pool requires `force: true` and
        # `drain: true`. The PTR hostname is managed by Telnyx: a request that includes
        # `ptr_hostname` returns `422` unless `pool_id` or a warm-up field is present, in
        # which case `ptr_hostname` is ignored.
        #
        # @overload update(id, drain: nil, force: nil, pool_id: nil, warmup: nil, warmup_paused: nil, weight: nil, request_options: {})
        #
        # @param id [String] The dedicated IP identifier (UUID).
        #
        # @param drain [Boolean] Set together with `force: true` to move the last IP out of its current pool. Ack
        #
        # @param force [Boolean] Set together with `drain: true` to move the last IP out of its current pool. Use
        #
        # @param pool_id [String] Move the IP to this pool, replacing its current membership. Use the IP's current
        #
        # @param warmup [Telnyx::Models::Email::DedicatedIPUpdateParams::Warmup] Alias for `warmup_paused`.
        #
        # @param warmup_paused [Boolean] Pause (`true`) or resume (`false`) the warm-up ramp; equivalent to the `pause_wa
        #
        # @param weight [Integer] Routing weight in the target pool. Used only with `pool_id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Email::DedicatedIPShowResponse]
        #
        # @see Telnyx::Models::Email::DedicatedIPUpdateParams
        def update(id, params = {})
          parsed, options = Telnyx::Email::DedicatedIPUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["email/dedicated_ips/%1$s", id],
            body: parsed,
            model: Telnyx::Email::DedicatedIPShowResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Email::DedicatedIPListParams} for more details.
        #
        # List the dedicated sending IPs owned by the account, newest first. Narrow the
        # list with `filter[status]`, `filter[pool_id]`, and `filter[region]`; supplied
        # filters combine, so an IP must match every one. An empty value, or a nested or
        # array value such as `filter[status][]=active`, applies no filter, and other
        # `filter[...]` keys are ignored. A value that no IP can match (an unknown status,
        # a `pool_id` that is not a UUID, or a value containing a NUL byte) returns an
        # empty list, not an error.
        #
        # @overload list(filter_pool_id: nil, filter_region: nil, filter_status: nil, request_options: {})
        #
        # @param filter_pool_id [String] Return only IPs in this pool (exact match on `pool_id`). A value that is not a U
        #
        # @param filter_region [String] Return only IPs in this region (exact, case-sensitive match on `region`). An emp
        #
        # @param filter_status [Symbol, Telnyx::Models::Email::DedicatedIPListParams::FilterStatus] Return only IPs in this lifecycle status (exact match). Any other value returns
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Email::DedicatedIPListResponse]
        #
        # @see Telnyx::Models::Email::DedicatedIPListParams
        def list(params = {})
          parsed, options = Telnyx::Email::DedicatedIPListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "email/dedicated_ips",
            query: query.transform_keys(
              filter_pool_id: "filter[pool_id]",
              filter_region: "filter[region]",
              filter_status: "filter[status]"
            ),
            model: Telnyx::Models::Email::DedicatedIPListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Email::DedicatedIPDeleteParams} for more details.
        #
        # Release the dedicated IP to Telnyx. The IP stops carrying mail immediately,
        # leaves its pool, and moves to `released`. Telnyx sets `quarantine_until` to 30
        # days after release. Release requests that the MRC stop asynchronously. Check
        # `billing`: `stopping` means the stop is pending, `stopped` means it completed,
        # and `stop_failed` means the charge remains. If the charge was never created or
        # its creation has not completed, `billing` keeps showing the creation status
        # (`not_started`, `pending`, `in_progress`, or `failed`). Any status except
        # `released` can be released. Releasing the last IP in a pool requires
        # `force=true` and `drain=true`.
        #
        # @overload delete(id, body_drain: nil, body_force: nil, body_reason: nil, request_options: {})
        #
        # @param id [String] Path param: The dedicated IP identifier (UUID).
        #
        # @param body_drain [Boolean] Body param: Set together with `force: true` to release the last IP in a pool. Ac
        #
        # @param body_force [Boolean] Body param: Set together with `drain: true` to release the last IP in a pool. Ei
        #
        # @param body_reason [String] Body param: Free-text reason recorded with the release.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Email::DedicatedIPShowResponse]
        #
        # @see Telnyx::Models::Email::DedicatedIPDeleteParams
        def delete(id, params = {})
          query_params = [:query_drain, :query_force, :query_reason]
          parsed, options = Telnyx::Email::DedicatedIPDeleteParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :delete,
            path: ["email/dedicated_ips/%1$s", id],
            query: query.transform_keys(query_drain: "drain", query_force: "force", query_reason: "reason"),
            body: parsed.except(*query_params),
            model: Telnyx::Email::DedicatedIPShowResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @actions = Telnyx::Resources::Email::DedicatedIPs::Actions.new(client: client)
        end
      end
    end
  end
end
