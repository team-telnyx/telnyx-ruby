# typed: strong

module Telnyx
  module Resources
    class Email
      class IPPools
        # Group dedicated IPs into pools for sending.
        class IPs
          # Add a dedicated IP to the pool with an optional routing weight. An IP can belong
          # to one pool; to move an IP that is already in a pool, use
          # `PATCH /email/dedicated_ips/{id}` with `pool_id`.
          sig do
            params(
              id: String,
              dedicated_ip_id: String,
              weight: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Email::IPPools::IPCreateResponse)
          end
          def create(
            # The IP pool identifier (UUID).
            id,
            # The dedicated IP to add. It must belong to the account, must not be released,
            # and must not already be in a pool.
            dedicated_ip_id:,
            # Relative routing weight for this IP in the pool. Positive integer; defaults
            # to 100.
            weight: nil,
            request_options: {}
          )
          end

          # Remove the dedicated IP from the pool. The IP is kept but carries no mail until
          # added to a pool again. Removing the last IP requires `force=true` and
          # `drain=true`.
          sig do
            params(
              ip_id: String,
              id: String,
              drain: T::Boolean,
              force: T::Boolean,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Path param: The dedicated IP identifier (UUID).
            ip_id,
            # Path param: The IP pool identifier (UUID).
            id:,
            # Query param: Set together with `force=true` to remove the last IP in the pool.
            # Acknowledges that mail routed to the emptied pool is held until the pool has a
            # sendable IP again.
            drain: nil,
            # Query param: Set together with `drain=true` to remove the last IP in the pool.
            # Either flag alone has no effect.
            force: nil,
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
end
