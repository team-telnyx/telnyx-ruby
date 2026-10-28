# typed: strong

module Telnyx
  module Resources
    class Email
      # Purchase and manage dedicated sending IP addresses for your Telnyx email
      # traffic.
      class DedicatedIPs
        # Purchase and manage dedicated sending IP addresses for your Telnyx email
        # traffic.
        sig { returns(Telnyx::Resources::Email::DedicatedIPs::Actions) }
        attr_reader :actions

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
        sig do
          params(
            idempotency_key: String,
            ip_version:
              Telnyx::Email::DedicatedIPCreateParams::IPVersion::OrSymbol,
            region: Telnyx::Email::DedicatedIPCreateParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Email::DedicatedIPShowResponse)
        end
        def create(
          # Header param: Required. Opaque, unquoted key for safely retrying the same
          # purchase. Keys must contain 1 to 255 letters, numbers, hyphens, or underscores.
          # Generate a unique UUID v4 for each purchase and reuse it only when retrying that
          # purchase with the same request. A missing header, or an invalid one —including
          # duplicate, empty, malformed, or overlong values—returns 400 with error
          # code 10015. A request already in progress with the same key returns 409; reusing
          # the key with a different request returns 422. Only successful responses are
          # replayed, for up to 24 hours. Do not include sensitive data in the key.
          idempotency_key:,
          # Body param: Allocate an IP of this address family. Supported value: `ipv4`. Any
          # other value, including `ipv6` or `null`, returns `422`.
          ip_version: nil,
          # Body param: Allocate an IP in this region. Supported value: `ewr-nj1`. Any other
          # value, including an empty string or `null`, returns `422`.
          region: nil,
          request_options: {}
        )
        end

        # Retrieve a single dedicated IP by its identifier, including warm-up state,
        # billing state, and the DNS/PTR provisioning checklist.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Email::DedicatedIPShowResponse)
        end
        def retrieve(
          # The dedicated IP identifier (UUID).
          id,
          request_options: {}
        )
        end

        # Move the IP to another pool, or pause/resume its warm-up ramp. One change
        # applies per request. `pool_id` takes precedence over warm-up changes. Otherwise,
        # use `warmup_paused` or `warmup.paused`; a Boolean `warmup_paused` takes
        # precedence. Moving the last IP out of a pool requires `force: true` and
        # `drain: true`. The PTR hostname is managed by Telnyx: a request that includes
        # `ptr_hostname` returns `422` unless `pool_id` or a warm-up field is present, in
        # which case `ptr_hostname` is ignored.
        sig do
          params(
            id: String,
            drain: T::Boolean,
            force: T::Boolean,
            pool_id: String,
            warmup: Telnyx::Email::DedicatedIPUpdateParams::Warmup::OrHash,
            warmup_paused: T::Boolean,
            weight: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Email::DedicatedIPShowResponse)
        end
        def update(
          # The dedicated IP identifier (UUID).
          id,
          # Set together with `force: true` to move the last IP out of its current pool.
          # Acknowledges that mail routed to the emptied pool is held. Used only with
          # `pool_id`.
          drain: nil,
          # Set together with `drain: true` to move the last IP out of its current pool.
          # Used only with `pool_id`.
          force: nil,
          # Move the IP to this pool, replacing its current membership. Use the IP's current
          # pool to change only its weight. To take an IP out of a pool, use
          # `DELETE /email/ip_pools/{id}/ips/{ip_id}`.
          pool_id: nil,
          # Alias for `warmup_paused`.
          warmup: nil,
          # Pause (`true`) or resume (`false`) the warm-up ramp; equivalent to the
          # `pause_warmup` and `resume_warmup` actions. A Boolean value takes precedence
          # over `warmup.paused`. When a pause field is present and `pool_id` is absent,
          # supplying neither pause field as a Boolean invokes resume.
          warmup_paused: nil,
          # Routing weight in the target pool. Used only with `pool_id`.
          weight: nil,
          request_options: {}
        )
        end

        # List the dedicated sending IPs owned by the account, newest first. Narrow the
        # list with `filter[status]`, `filter[pool_id]`, and `filter[region]`; supplied
        # filters combine, so an IP must match every one. An empty value, or a nested or
        # array value such as `filter[status][]=active`, applies no filter, and other
        # `filter[...]` keys are ignored. A value that no IP can match (an unknown status,
        # a `pool_id` that is not a UUID, or a value containing a NUL byte) returns an
        # empty list, not an error.
        sig do
          params(
            filter_pool_id: String,
            filter_region: String,
            filter_status:
              Telnyx::Email::DedicatedIPListParams::FilterStatus::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Email::DedicatedIPListResponse)
        end
        def list(
          # Return only IPs in this pool (exact match on `pool_id`). A value that is not a
          # UUID returns an empty list. An empty value applies no filter.
          filter_pool_id: nil,
          # Return only IPs in this region (exact, case-sensitive match on `region`). An
          # empty value applies no filter.
          filter_region: nil,
          # Return only IPs in this lifecycle status (exact match). Any other value returns
          # an empty list. An empty value applies no filter.
          filter_status: nil,
          request_options: {}
        )
        end

        # Release the dedicated IP to Telnyx. The IP stops carrying mail immediately,
        # leaves its pool, and moves to `released`. Telnyx sets `quarantine_until` to 30
        # days after release. Release requests that the MRC stop asynchronously. Check
        # `billing`: `stopping` means the stop is pending, `stopped` means it completed,
        # and `stop_failed` means the charge remains. If the charge was never created or
        # its creation has not completed, `billing` keeps showing the creation status
        # (`not_started`, `pending`, `in_progress`, or `failed`). Any status except
        # `released` can be released. Releasing the last IP in a pool requires
        # `force=true` and `drain=true`.
        sig do
          params(
            id: String,
            body_drain: T::Boolean,
            body_force: T::Boolean,
            body_reason: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Email::DedicatedIPShowResponse)
        end
        def delete(
          # Path param: The dedicated IP identifier (UUID).
          id,
          # Body param: Set together with `force: true` to release the last IP in a pool.
          # Acknowledges that mail routed to the emptied pool is held until the pool has a
          # sendable IP again.
          body_drain: nil,
          # Body param: Set together with `drain: true` to release the last IP in a pool.
          # Either flag alone has no effect.
          body_force: nil,
          # Body param: Free-text reason recorded with the release.
          body_reason: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
