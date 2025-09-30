# typed: strong

module Telnyx
  module Models
    class MessagingHostedNumberOrder < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::MessagingHostedNumberOrder, Telnyx::Internal::AnyHash)
        end

      # Automatically associate the number with this messaging profile ID when the order
      # is complete.
      sig { returns(T.nilable(String)) }
      attr_accessor :messaging_profile_id

      sig { returns(T.nilable(T::Array[Telnyx::HostedNumber])) }
      attr_reader :phone_numbers

      sig { params(phone_numbers: T::Array[Telnyx::HostedNumber::OrHash]).void }
      attr_writer :phone_numbers

      sig do
        returns(
          T.nilable(Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: Telnyx::MessagingHostedNumberOrder::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # Resource unique identifier.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig do
        params(
          id: String,
          messaging_profile_id: T.nilable(String),
          phone_numbers: T::Array[Telnyx::HostedNumber::OrHash],
          record_type: String,
          status: Telnyx::MessagingHostedNumberOrder::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Resource unique identifier.
        id: nil,
        # Automatically associate the number with this messaging profile ID when the order
        # is complete.
        messaging_profile_id: nil,
        phone_numbers: nil,
        # Identifies the type of the resource.
        record_type: nil,
        status: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            messaging_profile_id: T.nilable(String),
            phone_numbers: T::Array[Telnyx::HostedNumber],
            record_type: String,
            status: Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::MessagingHostedNumberOrder::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARRIER_REJECTED =
          T.let(
            :carrier_rejected,
            Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol
          )
        COMPLIANCE_REVIEW_FAILED =
          T.let(
            :compliance_review_failed,
            Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol
          )
        DELETED =
          T.let(
            :deleted,
            Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol
          )
        INCOMPLETE_DOCUMENTATION =
          T.let(
            :incomplete_documentation,
            Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol
          )
        INCORRECT_BILLING_INFORMATION =
          T.let(
            :incorrect_billing_information,
            Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol
          )
        INELIGIBLE_CARRIER =
          T.let(
            :ineligible_carrier,
            Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol
          )
        LOA_FILE_INVALID =
          T.let(
            :loa_file_invalid,
            Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol
          )
        LOA_FILE_SUCCESSFUL =
          T.let(
            :loa_file_successful,
            Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol
          )
        PROVISIONING =
          T.let(
            :provisioning,
            Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol
          )
        SUCCESSFUL =
          T.let(
            :successful,
            Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::MessagingHostedNumberOrder::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
