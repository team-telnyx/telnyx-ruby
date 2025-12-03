# typed: strong

module Telnyx
  module Models
    class AuditEventListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AuditEventListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique identifier for the audit log entry.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # An alternate identifier for a resource which may be considered unique enough to
      # identify the resource but is not the primary identifier for the resource. For
      # example, this field could be used to store the phone number value for a phone
      # number when the primary database identifier is a separate distinct value.
      sig { returns(T.nilable(String)) }
      attr_accessor :alternate_resource_id

      # Indicates if the change was made by Telnyx on your behalf, the organization
      # owner, a member of your organization, or in the case of managed accounts, the
      # account manager.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::AuditEventListResponse::ChangeMadeBy::TaggedSymbol
          )
        )
      end
      attr_reader :change_made_by

      sig do
        params(
          change_made_by:
            Telnyx::Models::AuditEventListResponse::ChangeMadeBy::OrSymbol
        ).void
      end
      attr_writer :change_made_by

      # The type of change that occurred.
      sig { returns(T.nilable(String)) }
      attr_reader :change_type

      sig { params(change_type: String).void }
      attr_writer :change_type

      # Details of the changes made to the resource.
      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::AuditEventListResponse::Change])
        )
      end
      attr_accessor :changes

      # ISO 8601 formatted date indicating when the change occurred.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Unique identifier for the organization that owns the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :organization_id

      sig { params(organization_id: String).void }
      attr_writer :organization_id

      # The type of the resource being audited.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # Unique identifier for the resource that was changed.
      sig { returns(T.nilable(String)) }
      attr_reader :resource_id

      sig { params(resource_id: String).void }
      attr_writer :resource_id

      # Unique identifier for the user who made the change.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig do
        params(
          id: String,
          alternate_resource_id: T.nilable(String),
          change_made_by:
            Telnyx::Models::AuditEventListResponse::ChangeMadeBy::OrSymbol,
          change_type: String,
          changes:
            T.nilable(
              T::Array[Telnyx::Models::AuditEventListResponse::Change::OrHash]
            ),
          created_at: Time,
          organization_id: String,
          record_type: String,
          resource_id: String,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the audit log entry.
        id: nil,
        # An alternate identifier for a resource which may be considered unique enough to
        # identify the resource but is not the primary identifier for the resource. For
        # example, this field could be used to store the phone number value for a phone
        # number when the primary database identifier is a separate distinct value.
        alternate_resource_id: nil,
        # Indicates if the change was made by Telnyx on your behalf, the organization
        # owner, a member of your organization, or in the case of managed accounts, the
        # account manager.
        change_made_by: nil,
        # The type of change that occurred.
        change_type: nil,
        # Details of the changes made to the resource.
        changes: nil,
        # ISO 8601 formatted date indicating when the change occurred.
        created_at: nil,
        # Unique identifier for the organization that owns the resource.
        organization_id: nil,
        # The type of the resource being audited.
        record_type: nil,
        # Unique identifier for the resource that was changed.
        resource_id: nil,
        # Unique identifier for the user who made the change.
        user_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            alternate_resource_id: T.nilable(String),
            change_made_by:
              Telnyx::Models::AuditEventListResponse::ChangeMadeBy::TaggedSymbol,
            change_type: String,
            changes:
              T.nilable(
                T::Array[Telnyx::Models::AuditEventListResponse::Change]
              ),
            created_at: Time,
            organization_id: String,
            record_type: String,
            resource_id: String,
            user_id: String
          }
        )
      end
      def to_hash
      end

      # Indicates if the change was made by Telnyx on your behalf, the organization
      # owner, a member of your organization, or in the case of managed accounts, the
      # account manager.
      module ChangeMadeBy
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Models::AuditEventListResponse::ChangeMadeBy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TELNYX =
          T.let(
            :telnyx,
            Telnyx::Models::AuditEventListResponse::ChangeMadeBy::TaggedSymbol
          )
        ACCOUNT_MANAGER =
          T.let(
            :account_manager,
            Telnyx::Models::AuditEventListResponse::ChangeMadeBy::TaggedSymbol
          )
        ACCOUNT_OWNER =
          T.let(
            :account_owner,
            Telnyx::Models::AuditEventListResponse::ChangeMadeBy::TaggedSymbol
          )
        ORGANIZATION_MEMBER =
          T.let(
            :organization_member,
            Telnyx::Models::AuditEventListResponse::ChangeMadeBy::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::AuditEventListResponse::ChangeMadeBy::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Change < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AuditEventListResponse::Change,
              Telnyx::Internal::AnyHash
            )
          end

        # The name of the field that was changed. May use the dot notation to indicate
        # nested fields.
        sig { returns(T.nilable(String)) }
        attr_reader :field

        sig { params(field: String).void }
        attr_writer :field

        # The previous value of the field. Can be any JSON type.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::AuditEventListResponse::Change::From::Variants
            )
          )
        end
        attr_accessor :from

        # The new value of the field. Can be any JSON type.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::AuditEventListResponse::Change::To::Variants
            )
          )
        end
        attr_accessor :to

        # Details of the changes made to a resource.
        sig do
          params(
            field: String,
            from:
              T.nilable(
                Telnyx::Models::AuditEventListResponse::Change::From::Variants
              ),
            to:
              T.nilable(
                Telnyx::Models::AuditEventListResponse::Change::To::Variants
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the field that was changed. May use the dot notation to indicate
          # nested fields.
          field: nil,
          # The previous value of the field. Can be any JSON type.
          from: nil,
          # The new value of the field. Can be any JSON type.
          to: nil
        )
        end

        sig do
          override.returns(
            {
              field: String,
              from:
                T.nilable(
                  Telnyx::Models::AuditEventListResponse::Change::From::Variants
                ),
              to:
                T.nilable(
                  Telnyx::Models::AuditEventListResponse::Change::To::Variants
                )
            }
          )
        end
        def to_hash
        end

        # The previous value of the field. Can be any JSON type.
        module From
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                Float,
                T::Boolean,
                T::Hash[Symbol, T.anything],
                T::Array[T::Hash[Symbol, T.anything]]
              )
            end

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::AuditEventListResponse::Change::From::Variants
              ]
            )
          end
          def self.variants
          end

          ChangesObjectMap =
            T.let(
              Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
              Telnyx::Internal::Type::Converter
            )

          UnionMember4Array =
            T.let(
              Telnyx::Internal::Type::ArrayOf[
                Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]
              ],
              Telnyx::Internal::Type::Converter
            )
        end

        # The new value of the field. Can be any JSON type.
        module To
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                Float,
                T::Boolean,
                T::Hash[Symbol, T.anything],
                T::Array[T::Hash[Symbol, T.anything]]
              )
            end

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::AuditEventListResponse::Change::To::Variants
              ]
            )
          end
          def self.variants
          end

          ChangesObjectMap =
            T.let(
              Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
              Telnyx::Internal::Type::Converter
            )

          UnionMember4Array =
            T.let(
              Telnyx::Internal::Type::ArrayOf[
                Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]
              ],
              Telnyx::Internal::Type::Converter
            )
        end
      end
    end
  end
end
