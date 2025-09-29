# typed: strong

module Telnyx
  module Models
    class Verification < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::Verification, Telnyx::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Send a self-generated numeric code to the end-user
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_code

      # +E164 formatted phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      # The possible verification record types.
      sig { returns(T.nilable(Telnyx::Verification::RecordType::TaggedSymbol)) }
      attr_reader :record_type

      sig do
        params(record_type: Telnyx::Verification::RecordType::OrSymbol).void
      end
      attr_writer :record_type

      # The possible statuses of the verification request.
      sig { returns(T.nilable(Telnyx::Verification::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::Verification::Status::OrSymbol).void }
      attr_writer :status

      # This is the number of seconds before the code of the request is expired. Once
      # this request has expired, the code will no longer verify the user. Note: this
      # will override the `default_verification_timeout_secs` on the Verify profile.
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_secs

      sig { params(timeout_secs: Integer).void }
      attr_writer :timeout_secs

      # The possible types of verification.
      sig { returns(T.nilable(Telnyx::Verification::Type::TaggedSymbol)) }
      attr_reader :type

      sig { params(type: Telnyx::Verification::Type::OrSymbol).void }
      attr_writer :type

      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # The identifier of the associated Verify profile.
      sig { returns(T.nilable(String)) }
      attr_reader :verify_profile_id

      sig { params(verify_profile_id: String).void }
      attr_writer :verify_profile_id

      sig do
        params(
          id: String,
          created_at: String,
          custom_code: T.nilable(String),
          phone_number: String,
          record_type: Telnyx::Verification::RecordType::OrSymbol,
          status: Telnyx::Verification::Status::OrSymbol,
          timeout_secs: Integer,
          type: Telnyx::Verification::Type::OrSymbol,
          updated_at: String,
          verify_profile_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        created_at: nil,
        # Send a self-generated numeric code to the end-user
        custom_code: nil,
        # +E164 formatted phone number.
        phone_number: nil,
        # The possible verification record types.
        record_type: nil,
        # The possible statuses of the verification request.
        status: nil,
        # This is the number of seconds before the code of the request is expired. Once
        # this request has expired, the code will no longer verify the user. Note: this
        # will override the `default_verification_timeout_secs` on the Verify profile.
        timeout_secs: nil,
        # The possible types of verification.
        type: nil,
        updated_at: nil,
        # The identifier of the associated Verify profile.
        verify_profile_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            custom_code: T.nilable(String),
            phone_number: String,
            record_type: Telnyx::Verification::RecordType::TaggedSymbol,
            status: Telnyx::Verification::Status::TaggedSymbol,
            timeout_secs: Integer,
            type: Telnyx::Verification::Type::TaggedSymbol,
            updated_at: String,
            verify_profile_id: String
          }
        )
      end
      def to_hash
      end

      # The possible verification record types.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Verification::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VERIFICATION =
          T.let(:verification, Telnyx::Verification::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Verification::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The possible statuses of the verification request.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Verification::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, Telnyx::Verification::Status::TaggedSymbol)
        ACCEPTED = T.let(:accepted, Telnyx::Verification::Status::TaggedSymbol)
        INVALID = T.let(:invalid, Telnyx::Verification::Status::TaggedSymbol)
        EXPIRED = T.let(:expired, Telnyx::Verification::Status::TaggedSymbol)
        ERROR = T.let(:error, Telnyx::Verification::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::Verification::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      # The possible types of verification.
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Verification::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS = T.let(:sms, Telnyx::Verification::Type::TaggedSymbol)
        CALL = T.let(:call, Telnyx::Verification::Type::TaggedSymbol)
        FLASHCALL = T.let(:flashcall, Telnyx::Verification::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::Verification::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
