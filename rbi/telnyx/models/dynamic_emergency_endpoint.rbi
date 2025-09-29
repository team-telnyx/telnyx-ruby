# typed: strong

module Telnyx
  module Models
    class DynamicEmergencyEndpoint < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::DynamicEmergencyEndpoint, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :callback_number

      sig { returns(String) }
      attr_accessor :caller_name

      # An id of a currently active dynamic emergency location.
      sig { returns(String) }
      attr_accessor :dynamic_emergency_address_id

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date of when the resource was created
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig { returns(T.nilable(String)) }
      attr_reader :sip_from_id

      sig { params(sip_from_id: String).void }
      attr_writer :sip_from_id

      # Status of dynamic emergency address
      sig do
        returns(
          T.nilable(Telnyx::DynamicEmergencyEndpoint::Status::TaggedSymbol)
        )
      end
      attr_reader :status

      sig do
        params(status: Telnyx::DynamicEmergencyEndpoint::Status::OrSymbol).void
      end
      attr_writer :status

      # ISO 8601 formatted date of when the resource was last updated
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          callback_number: String,
          caller_name: String,
          dynamic_emergency_address_id: String,
          id: String,
          created_at: String,
          record_type: String,
          sip_from_id: String,
          status: Telnyx::DynamicEmergencyEndpoint::Status::OrSymbol,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        callback_number:,
        caller_name:,
        # An id of a currently active dynamic emergency location.
        dynamic_emergency_address_id:,
        id: nil,
        # ISO 8601 formatted date of when the resource was created
        created_at: nil,
        # Identifies the type of the resource.
        record_type: nil,
        sip_from_id: nil,
        # Status of dynamic emergency address
        status: nil,
        # ISO 8601 formatted date of when the resource was last updated
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            callback_number: String,
            caller_name: String,
            dynamic_emergency_address_id: String,
            id: String,
            created_at: String,
            record_type: String,
            sip_from_id: String,
            status: Telnyx::DynamicEmergencyEndpoint::Status::TaggedSymbol,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      # Status of dynamic emergency address
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::DynamicEmergencyEndpoint::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Telnyx::DynamicEmergencyEndpoint::Status::TaggedSymbol
          )
        ACTIVATED =
          T.let(
            :activated,
            Telnyx::DynamicEmergencyEndpoint::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Telnyx::DynamicEmergencyEndpoint::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::DynamicEmergencyEndpoint::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
