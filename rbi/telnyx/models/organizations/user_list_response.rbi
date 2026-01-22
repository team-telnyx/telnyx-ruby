# typed: strong

module Telnyx
  module Models
    module Organizations
      class UserListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Organizations::UserListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the specific resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # The email address of the user.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # The groups the user belongs to. Only included when include_groups parameter is
        # true.
        sig do
          returns(
            T.nilable(T::Array[Telnyx::Organizations::UserGroupReference])
          )
        end
        attr_reader :groups

        sig do
          params(
            groups: T::Array[Telnyx::Organizations::UserGroupReference::OrHash]
          ).void
        end
        attr_writer :groups

        # ISO 8601 formatted date indicating when the resource last signed into the
        # portal. Null if the user has never signed in.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_sign_in_at

        # Indicates whether this user is allowed to bypass SSO and use password
        # authentication.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :organization_user_bypasses_sso

        sig { params(organization_user_bypasses_sso: T::Boolean).void }
        attr_writer :organization_user_bypasses_sso

        # Identifies the type of the resource. Can be 'organization_owner' or
        # 'organization_sub_user'.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # The status of the account.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::Organizations::UserListResponse::UserStatus::TaggedSymbol
            )
          )
        end
        attr_reader :user_status

        sig do
          params(
            user_status:
              Telnyx::Models::Organizations::UserListResponse::UserStatus::OrSymbol
          ).void
        end
        attr_writer :user_status

        sig do
          params(
            id: String,
            created_at: String,
            email: String,
            groups: T::Array[Telnyx::Organizations::UserGroupReference::OrHash],
            last_sign_in_at: T.nilable(String),
            organization_user_bypasses_sso: T::Boolean,
            record_type: String,
            user_status:
              Telnyx::Models::Organizations::UserListResponse::UserStatus::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the specific resource.
          id: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # The email address of the user.
          email: nil,
          # The groups the user belongs to. Only included when include_groups parameter is
          # true.
          groups: nil,
          # ISO 8601 formatted date indicating when the resource last signed into the
          # portal. Null if the user has never signed in.
          last_sign_in_at: nil,
          # Indicates whether this user is allowed to bypass SSO and use password
          # authentication.
          organization_user_bypasses_sso: nil,
          # Identifies the type of the resource. Can be 'organization_owner' or
          # 'organization_sub_user'.
          record_type: nil,
          # The status of the account.
          user_status: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              email: String,
              groups: T::Array[Telnyx::Organizations::UserGroupReference],
              last_sign_in_at: T.nilable(String),
              organization_user_bypasses_sso: T::Boolean,
              record_type: String,
              user_status:
                Telnyx::Models::Organizations::UserListResponse::UserStatus::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The status of the account.
        module UserStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::Organizations::UserListResponse::UserStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENABLED =
            T.let(
              :enabled,
              Telnyx::Models::Organizations::UserListResponse::UserStatus::TaggedSymbol
            )
          DISABLED =
            T.let(
              :disabled,
              Telnyx::Models::Organizations::UserListResponse::UserStatus::TaggedSymbol
            )
          BLOCKED =
            T.let(
              :blocked,
              Telnyx::Models::Organizations::UserListResponse::UserStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Organizations::UserListResponse::UserStatus::TaggedSymbol
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
