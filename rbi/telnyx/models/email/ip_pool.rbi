# typed: strong

module Telnyx
  module Models
    module Email
      class IPPool < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Email::IPPool, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Email domain this pool is scoped to. The pool carries that domain's mail. Null
        # when the pool is not domain-scoped.
        sig { returns(T.nilable(String)) }
        attr_accessor :domain_id

        # Member IPs with their routing weights. Populated by Retrieve an IP pool; list,
        # create, and update responses return an empty array.
        sig { returns(T.nilable(T::Array[Telnyx::Email::IPPool::IP])) }
        attr_reader :ips

        sig { params(ips: T::Array[Telnyx::Email::IPPool::IP::OrHash]).void }
        attr_writer :ips

        # Whether this is the account's default pool. The default pool carries mail for
        # sending domains that have no domain-scoped pool. At most one per account.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_default

        sig { params(is_default: T::Boolean).void }
        attr_writer :is_default

        # Pool name, unique within the account.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          returns(T.nilable(Telnyx::Email::IPPool::RecordType::TaggedSymbol))
        end
        attr_reader :record_type

        sig do
          params(record_type: Telnyx::Email::IPPool::RecordType::OrSymbol).void
        end
        attr_writer :record_type

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # An account-scoped pool of dedicated IPs. Mail uses a pool only when the pool is
        # scoped to the sending domain (`domain_id`) or is the account default
        # (`is_default`).
        sig do
          params(
            id: String,
            created_at: Time,
            domain_id: T.nilable(String),
            ips: T::Array[Telnyx::Email::IPPool::IP::OrHash],
            is_default: T::Boolean,
            name: String,
            record_type: Telnyx::Email::IPPool::RecordType::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          created_at: nil,
          # Email domain this pool is scoped to. The pool carries that domain's mail. Null
          # when the pool is not domain-scoped.
          domain_id: nil,
          # Member IPs with their routing weights. Populated by Retrieve an IP pool; list,
          # create, and update responses return an empty array.
          ips: nil,
          # Whether this is the account's default pool. The default pool carries mail for
          # sending domains that have no domain-scoped pool. At most one per account.
          is_default: nil,
          # Pool name, unique within the account.
          name: nil,
          record_type: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              domain_id: T.nilable(String),
              ips: T::Array[Telnyx::Email::IPPool::IP],
              is_default: T::Boolean,
              name: String,
              record_type: Telnyx::Email::IPPool::RecordType::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        class IP < Telnyx::Models::Email::DedicatedIP
          OrHash =
            T.type_alias do
              T.any(Telnyx::Email::IPPool::IP, Telnyx::Internal::AnyHash)
            end

          # Relative routing weight of this IP within the pool.
          sig { returns(T.nilable(Integer)) }
          attr_reader :weight

          sig { params(weight: Integer).void }
          attr_writer :weight

          # A dedicated IP as a member of a pool, with its routing weight in this pool.
          # Weight is a positive integer (default 100).
          sig { params(weight: Integer).returns(T.attached_class) }
          def self.new(
            # Relative routing weight of this IP within the pool.
            weight: nil
          )
          end

          sig { override.returns({ weight: Integer }) }
          def to_hash
          end
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::Email::IPPool::RecordType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IP_POOL =
            T.let(:ip_pool, Telnyx::Email::IPPool::RecordType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Email::IPPool::RecordType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
