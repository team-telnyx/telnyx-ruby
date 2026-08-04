# typed: strong

module Telnyx
  module Models
    class UnsubscribeGroup < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::UnsubscribeGroup, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # Always present (not omit-nullable); `null` when unset.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(String) }
      attr_accessor :name

      # View-only.
      sig { returns(Telnyx::UnsubscribeGroup::RecordType::TaggedSymbol) }
      attr_accessor :record_type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          description: T.nilable(String),
          name: String,
          record_type: Telnyx::UnsubscribeGroup::RecordType::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        # Always present (not omit-nullable); `null` when unset.
        description:,
        name:,
        # View-only.
        record_type:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            description: T.nilable(String),
            name: String,
            record_type: Telnyx::UnsubscribeGroup::RecordType::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # View-only.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::UnsubscribeGroup::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_UNSUBSCRIBE_GROUP =
          T.let(
            :email_unsubscribe_group,
            Telnyx::UnsubscribeGroup::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::UnsubscribeGroup::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
