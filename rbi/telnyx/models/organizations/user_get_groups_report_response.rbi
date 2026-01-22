# typed: strong

module Telnyx
  module Models
    module Organizations
      class UserGetGroupsReportResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Organizations::UserGetGroupsReportResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data
              ]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::OrHash
              ]
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data
                ]
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifies the specific resource.
          sig { returns(String) }
          attr_accessor :id

          # ISO 8601 formatted date indicating when the resource was created.
          sig { returns(String) }
          attr_accessor :created_at

          # The email address of the user.
          sig { returns(String) }
          attr_accessor :email

          # The groups the user belongs to.
          sig do
            returns(
              T::Array[
                Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::Group
              ]
            )
          end
          attr_accessor :groups

          # Identifies the type of the resource. Can be 'organization_owner' or
          # 'organization_sub_user'.
          sig { returns(String) }
          attr_accessor :record_type

          # The status of the account.
          sig do
            returns(
              Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::UserStatus::TaggedSymbol
            )
          end
          attr_accessor :user_status

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

          # An organization user with their group memberships always included.
          sig do
            params(
              id: String,
              created_at: String,
              email: String,
              groups:
                T::Array[
                  Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::Group::OrHash
                ],
              record_type: String,
              user_status:
                Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::UserStatus::OrSymbol,
              last_sign_in_at: T.nilable(String),
              organization_user_bypasses_sso: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the specific resource.
            id:,
            # ISO 8601 formatted date indicating when the resource was created.
            created_at:,
            # The email address of the user.
            email:,
            # The groups the user belongs to.
            groups:,
            # Identifies the type of the resource. Can be 'organization_owner' or
            # 'organization_sub_user'.
            record_type:,
            # The status of the account.
            user_status:,
            # ISO 8601 formatted date indicating when the resource last signed into the
            # portal. Null if the user has never signed in.
            last_sign_in_at: nil,
            # Indicates whether this user is allowed to bypass SSO and use password
            # authentication.
            organization_user_bypasses_sso: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: String,
                email: String,
                groups:
                  T::Array[
                    Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::Group
                  ],
                record_type: String,
                user_status:
                  Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::UserStatus::TaggedSymbol,
                last_sign_in_at: T.nilable(String),
                organization_user_bypasses_sso: T::Boolean
              }
            )
          end
          def to_hash
          end

          class Group < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::Group,
                  Telnyx::Internal::AnyHash
                )
              end

            # The unique identifier of the group.
            sig { returns(String) }
            attr_accessor :id

            # The name of the group.
            sig { returns(String) }
            attr_accessor :name

            # A reference to a group that a user belongs to.
            sig { params(id: String, name: String).returns(T.attached_class) }
            def self.new(
              # The unique identifier of the group.
              id:,
              # The name of the group.
              name:
            )
            end

            sig { override.returns({ id: String, name: String }) }
            def to_hash
            end
          end

          # The status of the account.
          module UserStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::UserStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLED =
              T.let(
                :enabled,
                Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::UserStatus::TaggedSymbol
              )
            DISABLED =
              T.let(
                :disabled,
                Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::UserStatus::TaggedSymbol
              )
            BLOCKED =
              T.let(
                :blocked,
                Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::UserStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::UserStatus::TaggedSymbol
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
end
