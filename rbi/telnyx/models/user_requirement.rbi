# typed: strong

module Telnyx
  module Models
    class UserRequirement < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::UserRequirement, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      sig { returns(T.nilable(Time)) }
      attr_reader :expires_at

      sig { params(expires_at: Time).void }
      attr_writer :expires_at

      sig { returns(T.nilable(String)) }
      attr_reader :field_type

      sig { params(field_type: String).void }
      attr_writer :field_type

      sig { returns(T.nilable(String)) }
      attr_reader :field_value

      sig { params(field_value: String).void }
      attr_writer :field_value

      sig { returns(T.nilable(String)) }
      attr_reader :requirement_id

      sig { params(requirement_id: String).void }
      attr_writer :requirement_id

      sig { returns(T.nilable(Telnyx::UserRequirement::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::UserRequirement::Status::OrSymbol).void }
      attr_writer :status

      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          created_at: Time,
          expires_at: Time,
          field_type: String,
          field_value: String,
          requirement_id: String,
          status: Telnyx::UserRequirement::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        created_at: nil,
        expires_at: nil,
        field_type: nil,
        field_value: nil,
        requirement_id: nil,
        status: nil,
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            created_at: Time,
            expires_at: Time,
            field_type: String,
            field_value: String,
            requirement_id: String,
            status: Telnyx::UserRequirement::Status::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::UserRequirement::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:approved, Telnyx::UserRequirement::Status::TaggedSymbol)
        UNAPPROVED =
          T.let(:unapproved, Telnyx::UserRequirement::Status::TaggedSymbol)
        PENDING_APPROVAL =
          T.let(
            :"pending-approval",
            Telnyx::UserRequirement::Status::TaggedSymbol
          )
        DECLINED =
          T.let(:declined, Telnyx::UserRequirement::Status::TaggedSymbol)
        EXPIRED = T.let(:expired, Telnyx::UserRequirement::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::UserRequirement::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
