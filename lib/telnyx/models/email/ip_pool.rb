# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      class IPPool < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute domain_id
        #   Email domain this pool is scoped to. The pool carries that domain's mail. Null
        #   when the pool is not domain-scoped.
        #
        #   @return [String, nil]
        optional :domain_id, String, nil?: true

        # @!attribute ips
        #   Member IPs with their routing weights. Populated by Retrieve an IP pool; list,
        #   create, and update responses return an empty array.
        #
        #   @return [Array<Telnyx::Models::Email::IPPool::IP>, nil]
        optional :ips, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Email::IPPool::IP] }

        # @!attribute is_default
        #   Whether this is the account's default pool. The default pool carries mail for
        #   sending domains that have no domain-scoped pool. At most one per account.
        #
        #   @return [Boolean, nil]
        optional :is_default, Telnyx::Internal::Type::Boolean

        # @!attribute name
        #   Pool name, unique within the account.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::Email::IPPool::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::Email::IPPool::RecordType }

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(id: nil, created_at: nil, domain_id: nil, ips: nil, is_default: nil, name: nil, record_type: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Email::IPPool} for more details.
        #
        #   An account-scoped pool of dedicated IPs. Mail uses a pool only when the pool is
        #   scoped to the sending domain (`domain_id`) or is the account default
        #   (`is_default`).
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param domain_id [String, nil] Email domain this pool is scoped to. The pool carries that domain's mail. Null w
        #
        #   @param ips [Array<Telnyx::Models::Email::IPPool::IP>] Member IPs with their routing weights. Populated by Retrieve an IP pool; list, c
        #
        #   @param is_default [Boolean] Whether this is the account's default pool. The default pool carries mail for se
        #
        #   @param name [String] Pool name, unique within the account.
        #
        #   @param record_type [Symbol, Telnyx::Models::Email::IPPool::RecordType]
        #
        #   @param updated_at [Time]

        class IP < Telnyx::Models::Email::DedicatedIP
          # @!attribute weight
          #   Relative routing weight of this IP within the pool.
          #
          #   @return [Integer, nil]
          optional :weight, Integer

          # @!method initialize(weight: nil)
          #   A dedicated IP as a member of a pool, with its routing weight in this pool.
          #   Weight is a positive integer (default 100).
          #
          #   @param weight [Integer] Relative routing weight of this IP within the pool.
        end

        # @see Telnyx::Models::Email::IPPool#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          IP_POOL = :ip_pool

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
