# typed: strong

module Telnyx
  module Resources
    class Email
      # Group dedicated IPs into pools for sending.
      class IPPools
        # Group dedicated IPs into pools for sending.
        sig { returns(Telnyx::Resources::Email::IPPools::IPs) }
        attr_reader :ips

        # Create an account-scoped pool of dedicated IPs. Set `is_default` or `domain_id`
        # for the pool to carry mail; a pool with neither carries none.
        sig do
          params(
            name: String,
            domain_id: String,
            is_default: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Email::IPPoolShowResponse)
        end
        def create(
          # Pool name: 1-64 characters of lowercase letters, digits, `.`, `_`, and `-`,
          # starting and ending with a letter or digit. Must be unique within the account
          # and must not start with `dip_`.
          name:,
          # Scope the pool to one of the account's email domains; the pool then carries that
          # domain's mail. Scope at most one pool to each domain.
          domain_id: nil,
          # Make this the account's default pool, which carries mail for sending domains
          # without a domain-scoped pool. An account can have one default pool. Defaults to
          # `false`.
          is_default: nil,
          request_options: {}
        )
        end

        # Retrieve a single IP pool by its identifier, including its dedicated-IP members
        # with billing state.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Email::IPPoolShowResponse)
        end
        def retrieve(
          # The IP pool identifier (UUID).
          id,
          request_options: {}
        )
        end

        # Rename the pool, set or clear the default flag, or change its domain scope.
        # Routing follows the new settings for subsequent mail.
        sig do
          params(
            id: String,
            domain_id: T.nilable(String),
            is_default: T::Boolean,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Email::IPPoolShowResponse)
        end
        def update(
          # The IP pool identifier (UUID).
          id,
          # Scope the pool to one of the account's email domains, or `null` to remove the
          # scope.
          domain_id: nil,
          # Set or clear the account default flag. An account can have one default pool.
          is_default: nil,
          # Pool name: 1-64 characters of lowercase letters, digits, `.`, `_`, and `-`,
          # starting and ending with a letter or digit. Must be unique within the account
          # and must not start with `dip_`.
          name: nil,
          request_options: {}
        )
        end

        # List the account's dedicated-IP pools. Member IPs are not included (`ips` is
        # empty); retrieve a pool to see its members.
        sig do
          params(request_options: Telnyx::RequestOptions::OrHash).returns(
            Telnyx::Models::Email::IPPoolListResponse
          )
        end
        def list(request_options: {})
        end

        # Delete the pool. Member IPs are kept but leave the pool, so they carry no mail
        # until added to another pool. Deleting a pool changes routing for subsequently
        # resolved messages. It does not reroute messages already assigned to the deleted
        # pool. Deleting a pool that still has IPs requires `force=true` and `drain=true`.
        sig do
          params(
            id: String,
            drain: T::Boolean,
            force: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The IP pool identifier (UUID).
          id,
          # Set together with `force=true` to delete a pool that still has IPs. Acknowledges
          # deletion while the pool still has members; this flag does not reroute already
          # queued messages.
          drain: nil,
          # Set together with `drain=true` to delete a pool that still has IPs. Either flag
          # alone has no effect.
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
