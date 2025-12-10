# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Portouts#list
    class PortoutDetails < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute already_ported
      #   Is true when the number is already ported
      #
      #   @return [Boolean, nil]
      optional :already_ported, Telnyx::Internal::Type::Boolean

      # @!attribute authorized_name
      #   Name of person authorizing the porting order
      #
      #   @return [String, nil]
      optional :authorized_name, String

      # @!attribute carrier_name
      #   Carrier the number will be ported out to
      #
      #   @return [String, nil]
      optional :carrier_name, String

      # @!attribute city
      #   City or municipality of billing address
      #
      #   @return [String, nil]
      optional :city, String

      # @!attribute created_at
      #   ISO 8601 formatted date of when the portout was created
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute current_carrier
      #   The current carrier
      #
      #   @return [String, nil]
      optional :current_carrier, String

      # @!attribute end_user_name
      #   Person name or company name requesting the port
      #
      #   @return [String, nil]
      optional :end_user_name, String

      # @!attribute foc_date
      #   ISO 8601 formatted Date/Time of the FOC date
      #
      #   @return [String, nil]
      optional :foc_date, String

      # @!attribute host_messaging
      #   Indicates whether messaging services should be maintained with Telnyx after the
      #   port out completes
      #
      #   @return [Boolean, nil]
      optional :host_messaging, Telnyx::Internal::Type::Boolean

      # @!attribute inserted_at
      #   ISO 8601 formatted date of when the portout was created
      #
      #   @return [String, nil]
      optional :inserted_at, String

      # @!attribute lsr
      #   The Local Service Request
      #
      #   @return [Array<String>, nil]
      optional :lsr, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute phone_numbers
      #   Phone numbers associated with this portout
      #
      #   @return [Array<String>, nil]
      optional :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute pon
      #   Port order number assigned by the carrier the number will be ported out to
      #
      #   @return [String, nil]
      optional :pon, String

      # @!attribute reason
      #   The reason why the order is being rejected by the user. If the order is
      #   authorized, this field can be left null
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!attribute rejection_code
      #   The rejection code for one of the valid rejections to reject a port out order
      #
      #   @return [Integer, nil]
      optional :rejection_code, Integer

      # @!attribute requested_foc_date
      #   ISO 8601 formatted Date/Time of the user requested FOC date
      #
      #   @return [String, nil]
      optional :requested_foc_date, String

      # @!attribute service_address
      #   First line of billing address (street address)
      #
      #   @return [String, nil]
      optional :service_address, String

      # @!attribute spid
      #   New service provider spid
      #
      #   @return [String, nil]
      optional :spid, String

      # @!attribute state
      #   State, province, or similar of billing address
      #
      #   @return [String, nil]
      optional :state, String

      # @!attribute status
      #   Status of portout request
      #
      #   @return [Symbol, Telnyx::Models::PortoutDetails::Status, nil]
      optional :status, enum: -> { Telnyx::PortoutDetails::Status }

      # @!attribute support_key
      #   A key to reference this port out request when contacting Telnyx customer support
      #
      #   @return [String, nil]
      optional :support_key, String

      # @!attribute updated_at
      #   ISO 8601 formatted date of when the portout was last updated
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!attribute user_id
      #   Identifies the user (or organization) who requested the port out
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!attribute vendor
      #   Telnyx partner providing network coverage
      #
      #   @return [String, nil]
      optional :vendor, String

      # @!attribute zip
      #   Postal Code of billing address
      #
      #   @return [String, nil]
      optional :zip, String

      response_only do
        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String
      end

      # @!method initialize(id: nil, already_ported: nil, authorized_name: nil, carrier_name: nil, city: nil, created_at: nil, current_carrier: nil, end_user_name: nil, foc_date: nil, host_messaging: nil, inserted_at: nil, lsr: nil, phone_numbers: nil, pon: nil, reason: nil, record_type: nil, rejection_code: nil, requested_foc_date: nil, service_address: nil, spid: nil, state: nil, status: nil, support_key: nil, updated_at: nil, user_id: nil, vendor: nil, zip: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortoutDetails} for more details.
      #
      #   @param id [String]
      #
      #   @param already_ported [Boolean] Is true when the number is already ported
      #
      #   @param authorized_name [String] Name of person authorizing the porting order
      #
      #   @param carrier_name [String] Carrier the number will be ported out to
      #
      #   @param city [String] City or municipality of billing address
      #
      #   @param created_at [String] ISO 8601 formatted date of when the portout was created
      #
      #   @param current_carrier [String] The current carrier
      #
      #   @param end_user_name [String] Person name or company name requesting the port
      #
      #   @param foc_date [String] ISO 8601 formatted Date/Time of the FOC date
      #
      #   @param host_messaging [Boolean] Indicates whether messaging services should be maintained with Telnyx after the
      #
      #   @param inserted_at [String] ISO 8601 formatted date of when the portout was created
      #
      #   @param lsr [Array<String>] The Local Service Request
      #
      #   @param phone_numbers [Array<String>] Phone numbers associated with this portout
      #
      #   @param pon [String] Port order number assigned by the carrier the number will be ported out to
      #
      #   @param reason [String, nil] The reason why the order is being rejected by the user. If the order is authoriz
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param rejection_code [Integer] The rejection code for one of the valid rejections to reject a port out order
      #
      #   @param requested_foc_date [String] ISO 8601 formatted Date/Time of the user requested FOC date
      #
      #   @param service_address [String] First line of billing address (street address)
      #
      #   @param spid [String] New service provider spid
      #
      #   @param state [String] State, province, or similar of billing address
      #
      #   @param status [Symbol, Telnyx::Models::PortoutDetails::Status] Status of portout request
      #
      #   @param support_key [String] A key to reference this port out request when contacting Telnyx customer support
      #
      #   @param updated_at [String] ISO 8601 formatted date of when the portout was last updated
      #
      #   @param user_id [String] Identifies the user (or organization) who requested the port out
      #
      #   @param vendor [String] Telnyx partner providing network coverage
      #
      #   @param zip [String] Postal Code of billing address

      # Status of portout request
      #
      # @see Telnyx::Models::PortoutDetails#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        AUTHORIZED = :authorized
        PORTED = :ported
        REJECTED = :rejected
        REJECTED_PENDING = :"rejected-pending"
        CANCELED = :canceled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
