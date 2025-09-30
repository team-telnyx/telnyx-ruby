# typed: strong

module Telnyx
  module Models
    class HostedNumber < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::HostedNumber, Telnyx::Internal::AnyHash) }

      # The messaging hosted phone number (+E.164 format)
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig { returns(T.nilable(Telnyx::HostedNumber::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::HostedNumber::Status::OrSymbol).void }
      attr_writer :status

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig do
        params(
          id: String,
          phone_number: String,
          record_type: String,
          status: Telnyx::HostedNumber::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        # The messaging hosted phone number (+E.164 format)
        phone_number: nil,
        record_type: nil,
        status: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            phone_number: String,
            record_type: String,
            status: Telnyx::HostedNumber::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::HostedNumber::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DELETED = T.let(:deleted, Telnyx::HostedNumber::Status::TaggedSymbol)
        FAILED = T.let(:failed, Telnyx::HostedNumber::Status::TaggedSymbol)
        FAILED_ACTIVATION =
          T.let(:failed_activation, Telnyx::HostedNumber::Status::TaggedSymbol)
        FAILED_CARRIER_REJECTED =
          T.let(
            :failed_carrier_rejected,
            Telnyx::HostedNumber::Status::TaggedSymbol
          )
        FAILED_INELIGIBLE_CARRIER =
          T.let(
            :failed_ineligible_carrier,
            Telnyx::HostedNumber::Status::TaggedSymbol
          )
        FAILED_NUMBER_ALREADY_HOSTED =
          T.let(
            :failed_number_already_hosted,
            Telnyx::HostedNumber::Status::TaggedSymbol
          )
        FAILED_NUMBER_NOT_FOUND =
          T.let(
            :failed_number_not_found,
            Telnyx::HostedNumber::Status::TaggedSymbol
          )
        FAILED_OWNERSHIP_VERIFICATION =
          T.let(
            :failed_ownership_verification,
            Telnyx::HostedNumber::Status::TaggedSymbol
          )
        FAILED_TIMEOUT =
          T.let(:failed_timeout, Telnyx::HostedNumber::Status::TaggedSymbol)
        PENDING = T.let(:pending, Telnyx::HostedNumber::Status::TaggedSymbol)
        PROVISIONING =
          T.let(:provisioning, Telnyx::HostedNumber::Status::TaggedSymbol)
        SUCCESSFUL =
          T.let(:successful, Telnyx::HostedNumber::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::HostedNumber::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
