# typed: strong

module Telnyx
  module Models
    class EmailBlock < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::EmailBlock, Telnyx::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Telnyx::EmailBlock::Reason::TaggedSymbol) }
      attr_accessor :reason

      # View-only discriminator.
      sig { returns(Telnyx::EmailBlock::RecordType::TaggedSymbol) }
      attr_accessor :record_type

      # Derived server-side from `domain_id`/`from`; never trusted from the caller.
      sig { returns(Telnyx::EmailBlock::Scope::TaggedSymbol) }
      attr_accessor :scope

      sig { returns(Telnyx::EmailBlock::Source::TaggedSymbol) }
      attr_accessor :source

      sig { returns(Telnyx::EmailBlock::Status::TaggedSymbol) }
      attr_accessor :status

      # Normalized recipient. (schema: to_address)
      sig { returns(String) }
      attr_accessor :to

      sig { returns(Time) }
      attr_accessor :updated_at

      # `null` ⇒ account scope. Stored on the row; exposed here.
      sig { returns(T.nilable(String)) }
      attr_accessor :domain_id

      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # `null` ⇒ not address-scope. (schema: from_address)
      sig { returns(T.nilable(String)) }
      attr_accessor :from

      # `null` ⇒ global; set ⇒ group-scoped opt-out.
      sig { returns(T.nilable(String)) }
      attr_accessor :group_id

      # Suppression record. Schema fields hidden by the view: `account_id`,
      # `bounce_category`, `dsn_code`, `meta`.
      sig do
        params(
          id: String,
          created_at: Time,
          reason: Telnyx::EmailBlock::Reason::OrSymbol,
          record_type: Telnyx::EmailBlock::RecordType::OrSymbol,
          scope: Telnyx::EmailBlock::Scope::OrSymbol,
          source: Telnyx::EmailBlock::Source::OrSymbol,
          status: Telnyx::EmailBlock::Status::OrSymbol,
          to: String,
          updated_at: Time,
          domain_id: T.nilable(String),
          expires_at: T.nilable(Time),
          from: T.nilable(String),
          group_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        reason:,
        # View-only discriminator.
        record_type:,
        # Derived server-side from `domain_id`/`from`; never trusted from the caller.
        scope:,
        source:,
        status:,
        # Normalized recipient. (schema: to_address)
        to:,
        updated_at:,
        # `null` ⇒ account scope. Stored on the row; exposed here.
        domain_id: nil,
        expires_at: nil,
        # `null` ⇒ not address-scope. (schema: from_address)
        from: nil,
        # `null` ⇒ global; set ⇒ group-scoped opt-out.
        group_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            reason: Telnyx::EmailBlock::Reason::TaggedSymbol,
            record_type: Telnyx::EmailBlock::RecordType::TaggedSymbol,
            scope: Telnyx::EmailBlock::Scope::TaggedSymbol,
            source: Telnyx::EmailBlock::Source::TaggedSymbol,
            status: Telnyx::EmailBlock::Status::TaggedSymbol,
            to: String,
            updated_at: Time,
            domain_id: T.nilable(String),
            expires_at: T.nilable(Time),
            from: T.nilable(String),
            group_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Reason
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailBlock::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HARD_BOUNCE =
          T.let(:hard_bounce, Telnyx::EmailBlock::Reason::TaggedSymbol)
        SPAM_COMPLAINT =
          T.let(:spam_complaint, Telnyx::EmailBlock::Reason::TaggedSymbol)
        UNSUBSCRIBE =
          T.let(:unsubscribe, Telnyx::EmailBlock::Reason::TaggedSymbol)
        INVALID = T.let(:invalid, Telnyx::EmailBlock::Reason::TaggedSymbol)
        MANUAL_BLOCK =
          T.let(:manual_block, Telnyx::EmailBlock::Reason::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::EmailBlock::Reason::TaggedSymbol])
        end
        def self.values
        end
      end

      # View-only discriminator.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailBlock::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_BLOCK =
          T.let(:email_block, Telnyx::EmailBlock::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EmailBlock::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Derived server-side from `domain_id`/`from`; never trusted from the caller.
      module Scope
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::EmailBlock::Scope) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT = T.let(:account, Telnyx::EmailBlock::Scope::TaggedSymbol)
        DOMAIN = T.let(:domain, Telnyx::EmailBlock::Scope::TaggedSymbol)
        ADDRESS = T.let(:address, Telnyx::EmailBlock::Scope::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::EmailBlock::Scope::TaggedSymbol])
        end
        def self.values
        end
      end

      module Source
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailBlock::Source) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FEEDBACK = T.let(:feedback, Telnyx::EmailBlock::Source::TaggedSymbol)
        MANUAL = T.let(:manual, Telnyx::EmailBlock::Source::TaggedSymbol)
        IMPORT = T.let(:import, Telnyx::EmailBlock::Source::TaggedSymbol)
        SYSTEM = T.let(:system, Telnyx::EmailBlock::Source::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::EmailBlock::Source::TaggedSymbol])
        end
        def self.values
        end
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailBlock::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, Telnyx::EmailBlock::Status::TaggedSymbol)
        EXPIRED = T.let(:expired, Telnyx::EmailBlock::Status::TaggedSymbol)
        REMOVED = T.let(:removed, Telnyx::EmailBlock::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::EmailBlock::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
