# typed: strong

module Telnyx
  module Models
    class EmailInbox < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::EmailInbox, Telnyx::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :address

      sig { returns(Time) }
      attr_accessor :created_at

      # Domain name used by the inbox address.
      sig { returns(String) }
      attr_accessor :domain

      sig { returns(String) }
      attr_accessor :domain_id

      sig { returns(Telnyx::EmailInbox::RecordType::TaggedSymbol) }
      attr_accessor :record_type

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :settings

      sig { returns(Telnyx::EmailInbox::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          address: String,
          created_at: Time,
          domain: String,
          domain_id: String,
          record_type: Telnyx::EmailInbox::RecordType::OrSymbol,
          settings: T::Hash[Symbol, T.anything],
          status: Telnyx::EmailInbox::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        address:,
        created_at:,
        # Domain name used by the inbox address.
        domain:,
        domain_id:,
        record_type:,
        settings:,
        status:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            address: String,
            created_at: Time,
            domain: String,
            domain_id: String,
            record_type: Telnyx::EmailInbox::RecordType::TaggedSymbol,
            settings: T::Hash[Symbol, T.anything],
            status: Telnyx::EmailInbox::Status::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailInbox::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_INBOX =
          T.let(:email_inbox, Telnyx::EmailInbox::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EmailInbox::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailInbox::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, Telnyx::EmailInbox::Status::TaggedSymbol)
        PAUSED = T.let(:paused, Telnyx::EmailInbox::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::EmailInbox::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
