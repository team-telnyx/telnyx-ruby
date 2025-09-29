# typed: strong

module Telnyx
  module Models
    class PortoutDetails < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortoutDetails, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Is true when the number is already ported
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :already_ported

      sig { params(already_ported: T::Boolean).void }
      attr_writer :already_ported

      # Name of person authorizing the porting order
      sig { returns(T.nilable(String)) }
      attr_reader :authorized_name

      sig { params(authorized_name: String).void }
      attr_writer :authorized_name

      # Carrier the number will be ported out to
      sig { returns(T.nilable(String)) }
      attr_reader :carrier_name

      sig { params(carrier_name: String).void }
      attr_writer :carrier_name

      # City or municipality of billing address
      sig { returns(T.nilable(String)) }
      attr_reader :city

      sig { params(city: String).void }
      attr_writer :city

      # ISO 8601 formatted date of when the portout was created
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # The current carrier
      sig { returns(T.nilable(String)) }
      attr_reader :current_carrier

      sig { params(current_carrier: String).void }
      attr_writer :current_carrier

      # Person name or company name requesting the port
      sig { returns(T.nilable(String)) }
      attr_reader :end_user_name

      sig { params(end_user_name: String).void }
      attr_writer :end_user_name

      # ISO 8601 formatted Date/Time of the FOC date
      sig { returns(T.nilable(String)) }
      attr_reader :foc_date

      sig { params(foc_date: String).void }
      attr_writer :foc_date

      # Indicates whether messaging services should be maintained with Telnyx after the
      # port out completes
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :host_messaging

      sig { params(host_messaging: T::Boolean).void }
      attr_writer :host_messaging

      # ISO 8601 formatted date of when the portout was created
      sig { returns(T.nilable(String)) }
      attr_reader :inserted_at

      sig { params(inserted_at: String).void }
      attr_writer :inserted_at

      # The Local Service Request
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :lsr

      sig { params(lsr: T::Array[String]).void }
      attr_writer :lsr

      # Phone numbers associated with this portout
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :phone_numbers

      sig { params(phone_numbers: T::Array[String]).void }
      attr_writer :phone_numbers

      # Port order number assigned by the carrier the number will be ported out to
      sig { returns(T.nilable(String)) }
      attr_reader :pon

      sig { params(pon: String).void }
      attr_writer :pon

      # The reason why the order is being rejected by the user. If the order is
      # authorized, this field can be left null
      sig { returns(T.nilable(String)) }
      attr_reader :reason

      sig { params(reason: String).void }
      attr_writer :reason

      # The rejection code for one of the valid rejections to reject a port out order
      sig { returns(T.nilable(Integer)) }
      attr_reader :rejection_code

      sig { params(rejection_code: Integer).void }
      attr_writer :rejection_code

      # ISO 8601 formatted Date/Time of the user requested FOC date
      sig { returns(T.nilable(String)) }
      attr_reader :requested_foc_date

      sig { params(requested_foc_date: String).void }
      attr_writer :requested_foc_date

      # First line of billing address (street address)
      sig { returns(T.nilable(String)) }
      attr_reader :service_address

      sig { params(service_address: String).void }
      attr_writer :service_address

      # New service provider spid
      sig { returns(T.nilable(String)) }
      attr_reader :spid

      sig { params(spid: String).void }
      attr_writer :spid

      # State, province, or similar of billing address
      sig { returns(T.nilable(String)) }
      attr_reader :state

      sig { params(state: String).void }
      attr_writer :state

      # Status of portout request
      sig { returns(T.nilable(Telnyx::PortoutDetails::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::PortoutDetails::Status::OrSymbol).void }
      attr_writer :status

      # A key to reference this port out request when contacting Telnyx customer support
      sig { returns(T.nilable(String)) }
      attr_reader :support_key

      sig { params(support_key: String).void }
      attr_writer :support_key

      # ISO 8601 formatted date of when the portout was last updated
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # Identifies the user (or organization) who requested the port out
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      # Telnyx partner providing network coverage
      sig { returns(T.nilable(String)) }
      attr_reader :vendor

      sig { params(vendor: String).void }
      attr_writer :vendor

      # Postal Code of billing address
      sig { returns(T.nilable(String)) }
      attr_reader :zip

      sig { params(zip: String).void }
      attr_writer :zip

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig do
        params(
          id: String,
          already_ported: T::Boolean,
          authorized_name: String,
          carrier_name: String,
          city: String,
          created_at: String,
          current_carrier: String,
          end_user_name: String,
          foc_date: String,
          host_messaging: T::Boolean,
          inserted_at: String,
          lsr: T::Array[String],
          phone_numbers: T::Array[String],
          pon: String,
          reason: String,
          record_type: String,
          rejection_code: Integer,
          requested_foc_date: String,
          service_address: String,
          spid: String,
          state: String,
          status: Telnyx::PortoutDetails::Status::OrSymbol,
          support_key: String,
          updated_at: String,
          user_id: String,
          vendor: String,
          zip: String
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        # Is true when the number is already ported
        already_ported: nil,
        # Name of person authorizing the porting order
        authorized_name: nil,
        # Carrier the number will be ported out to
        carrier_name: nil,
        # City or municipality of billing address
        city: nil,
        # ISO 8601 formatted date of when the portout was created
        created_at: nil,
        # The current carrier
        current_carrier: nil,
        # Person name or company name requesting the port
        end_user_name: nil,
        # ISO 8601 formatted Date/Time of the FOC date
        foc_date: nil,
        # Indicates whether messaging services should be maintained with Telnyx after the
        # port out completes
        host_messaging: nil,
        # ISO 8601 formatted date of when the portout was created
        inserted_at: nil,
        # The Local Service Request
        lsr: nil,
        # Phone numbers associated with this portout
        phone_numbers: nil,
        # Port order number assigned by the carrier the number will be ported out to
        pon: nil,
        # The reason why the order is being rejected by the user. If the order is
        # authorized, this field can be left null
        reason: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # The rejection code for one of the valid rejections to reject a port out order
        rejection_code: nil,
        # ISO 8601 formatted Date/Time of the user requested FOC date
        requested_foc_date: nil,
        # First line of billing address (street address)
        service_address: nil,
        # New service provider spid
        spid: nil,
        # State, province, or similar of billing address
        state: nil,
        # Status of portout request
        status: nil,
        # A key to reference this port out request when contacting Telnyx customer support
        support_key: nil,
        # ISO 8601 formatted date of when the portout was last updated
        updated_at: nil,
        # Identifies the user (or organization) who requested the port out
        user_id: nil,
        # Telnyx partner providing network coverage
        vendor: nil,
        # Postal Code of billing address
        zip: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            already_ported: T::Boolean,
            authorized_name: String,
            carrier_name: String,
            city: String,
            created_at: String,
            current_carrier: String,
            end_user_name: String,
            foc_date: String,
            host_messaging: T::Boolean,
            inserted_at: String,
            lsr: T::Array[String],
            phone_numbers: T::Array[String],
            pon: String,
            reason: String,
            record_type: String,
            rejection_code: Integer,
            requested_foc_date: String,
            service_address: String,
            spid: String,
            state: String,
            status: Telnyx::PortoutDetails::Status::TaggedSymbol,
            support_key: String,
            updated_at: String,
            user_id: String,
            vendor: String,
            zip: String
          }
        )
      end
      def to_hash
      end

      # Status of portout request
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PortoutDetails::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, Telnyx::PortoutDetails::Status::TaggedSymbol)
        AUTHORIZED =
          T.let(:authorized, Telnyx::PortoutDetails::Status::TaggedSymbol)
        PORTED = T.let(:ported, Telnyx::PortoutDetails::Status::TaggedSymbol)
        REJECTED =
          T.let(:rejected, Telnyx::PortoutDetails::Status::TaggedSymbol)
        REJECTED_PENDING =
          T.let(
            :"rejected-pending",
            Telnyx::PortoutDetails::Status::TaggedSymbol
          )
        CANCELED =
          T.let(:canceled, Telnyx::PortoutDetails::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::PortoutDetails::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
