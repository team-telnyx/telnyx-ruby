# typed: strong

module Telnyx
  module Models
    class ManagedAccountListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ManagedAccountListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::ManagedAccountListResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[Telnyx::Models::ManagedAccountListResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[Telnyx::Models::ManagedAccountListResponse::Data::OrHash],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::ManagedAccountListResponse::Data],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ManagedAccountListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Uniquely identifies the managed account.
        sig { returns(String) }
        attr_accessor :id

        # The manager account's email, which serves as the V1 API user identifier
        sig { returns(String) }
        attr_accessor :api_user

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(String) }
        attr_accessor :created_at

        # The managed account's email.
        sig { returns(String) }
        attr_accessor :email

        # The ID of the manager account associated with the managed account.
        sig { returns(String) }
        attr_accessor :manager_account_id

        # Identifies the type of the resource.
        sig do
          returns(
            Telnyx::Models::ManagedAccountListResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        # ISO 8601 formatted date indicating when the resource was updated.
        sig { returns(String) }
        attr_accessor :updated_at

        # Boolean value that indicates if the managed account is able to have custom
        # pricing set for it or not. If false, uses the pricing of the manager account.
        # Defaults to false. There may be time lag between when the value is changed and
        # pricing changes take effect.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :managed_account_allow_custom_pricing

        sig { params(managed_account_allow_custom_pricing: T::Boolean).void }
        attr_writer :managed_account_allow_custom_pricing

        # The organization the managed account is associated with.
        sig { returns(T.nilable(String)) }
        attr_reader :organization_name

        sig { params(organization_name: String).void }
        attr_writer :organization_name

        # Boolean value that indicates if the billing information and charges to the
        # managed account "roll up" to the manager account. If true, the managed account
        # will not have its own balance and will use the shared balance with the manager
        # account. This value cannot be changed after account creation without going
        # through Telnyx support as changes require manual updates to the account ledger.
        # Defaults to false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :rollup_billing

        sig { params(rollup_billing: T::Boolean).void }
        attr_writer :rollup_billing

        sig do
          params(
            id: String,
            api_user: String,
            created_at: String,
            email: String,
            manager_account_id: String,
            record_type:
              Telnyx::Models::ManagedAccountListResponse::Data::RecordType::OrSymbol,
            updated_at: String,
            managed_account_allow_custom_pricing: T::Boolean,
            organization_name: String,
            rollup_billing: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies the managed account.
          id:,
          # The manager account's email, which serves as the V1 API user identifier
          api_user:,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at:,
          # The managed account's email.
          email:,
          # The ID of the manager account associated with the managed account.
          manager_account_id:,
          # Identifies the type of the resource.
          record_type:,
          # ISO 8601 formatted date indicating when the resource was updated.
          updated_at:,
          # Boolean value that indicates if the managed account is able to have custom
          # pricing set for it or not. If false, uses the pricing of the manager account.
          # Defaults to false. There may be time lag between when the value is changed and
          # pricing changes take effect.
          managed_account_allow_custom_pricing: nil,
          # The organization the managed account is associated with.
          organization_name: nil,
          # Boolean value that indicates if the billing information and charges to the
          # managed account "roll up" to the manager account. If true, the managed account
          # will not have its own balance and will use the shared balance with the manager
          # account. This value cannot be changed after account creation without going
          # through Telnyx support as changes require manual updates to the account ledger.
          # Defaults to false.
          rollup_billing: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              api_user: String,
              created_at: String,
              email: String,
              manager_account_id: String,
              record_type:
                Telnyx::Models::ManagedAccountListResponse::Data::RecordType::TaggedSymbol,
              updated_at: String,
              managed_account_allow_custom_pricing: T::Boolean,
              organization_name: String,
              rollup_billing: T::Boolean
            }
          )
        end
        def to_hash
        end

        # Identifies the type of the resource.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::ManagedAccountListResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MANAGED_ACCOUNT =
            T.let(
              :managed_account,
              Telnyx::Models::ManagedAccountListResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::ManagedAccountListResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
