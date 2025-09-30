# typed: strong

module Telnyx
  module Models
    class VerifiedNumber < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::VerifiedNumber, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      # The possible verified numbers record types.
      sig do
        returns(T.nilable(Telnyx::VerifiedNumber::RecordType::TaggedSymbol))
      end
      attr_reader :record_type

      sig do
        params(record_type: Telnyx::VerifiedNumber::RecordType::OrSymbol).void
      end
      attr_writer :record_type

      sig { returns(T.nilable(String)) }
      attr_reader :verified_at

      sig { params(verified_at: String).void }
      attr_writer :verified_at

      sig do
        params(
          phone_number: String,
          record_type: Telnyx::VerifiedNumber::RecordType::OrSymbol,
          verified_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        phone_number: nil,
        # The possible verified numbers record types.
        record_type: nil,
        verified_at: nil
      )
      end

      sig do
        override.returns(
          {
            phone_number: String,
            record_type: Telnyx::VerifiedNumber::RecordType::TaggedSymbol,
            verified_at: String
          }
        )
      end
      def to_hash
      end

      # The possible verified numbers record types.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::VerifiedNumber::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VERIFIED_NUMBER =
          T.let(
            :verified_number,
            Telnyx::VerifiedNumber::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::VerifiedNumber::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
