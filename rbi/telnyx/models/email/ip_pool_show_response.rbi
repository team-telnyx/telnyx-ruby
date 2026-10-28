# typed: strong

module Telnyx
  module Models
    module Email
      class IPPoolShowResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Email::IPPoolShowResponse, Telnyx::Internal::AnyHash)
          end

        # An account-scoped pool of dedicated IPs. Mail uses a pool only when the pool is
        # scoped to the sending domain (`domain_id`) or is the account default
        # (`is_default`).
        sig { returns(Telnyx::Email::IPPool) }
        attr_reader :data

        sig { params(data: Telnyx::Email::IPPool::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Email::IPPool::OrHash).returns(T.attached_class)
        end
        def self.new(
          # An account-scoped pool of dedicated IPs. Mail uses a pool only when the pool is
          # scoped to the sending domain (`domain_id`) or is the account default
          # (`is_default`).
          data:
        )
        end

        sig { override.returns({ data: Telnyx::Email::IPPool }) }
        def to_hash
        end
      end
    end
  end
end
