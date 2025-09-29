# frozen_string_literal: true

module Telnyx
  module Models
    class SimCardOrder < Telnyx::Internal::Type::BaseModel
      # @!attribute cost
      #   An object representing the total cost of the order.
      #
      #   @return [Telnyx::Models::SimCardOrder::Cost, nil]
      optional :cost, -> { Telnyx::SimCardOrder::Cost }

      # @!attribute quantity
      #   The amount of SIM cards requested in the SIM card order.
      #
      #   @return [Integer, nil]
      optional :quantity, Integer

      # @!attribute status
      #   The current status of the SIM Card order.<ul> <li><code>pending</code> - the
      #   order is waiting to be processed.</li> <li><code>processing</code> - the order
      #   is currently being processed.</li> <li><code>ready_to_ship</code> - the order is
      #   ready to be shipped to the specified <b>address</b>.</li>
      #   <li><code>shipped</code> - the order was shipped and is on its way to be
      #   delivered to the specified <b>address</b>.</li> <li><code>delivered</code> - the
      #   order was delivered to the specified <b>address</b>.</li>
      #   <li><code>canceled</code> - the order was canceled.</li> </ul>
      #
      #   @return [Symbol, Telnyx::Models::SimCardOrder::Status, nil]
      optional :status, enum: -> { Telnyx::SimCardOrder::Status }

      # @!attribute tracking_url
      #   The URL used to get tracking information about the order.
      #
      #   @return [String, nil]
      optional :tracking_url, String

      response_only do
        # @!attribute id
        #   Identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date-time indicating when the resource was last created.
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute order_address
        #   An object representing the address information from when the order was
        #   submitted.
        #
        #   @return [Telnyx::Models::SimCardOrder::OrderAddress, nil]
        optional :order_address, -> { Telnyx::SimCardOrder::OrderAddress }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute updated_at
        #   ISO 8601 formatted date-time indicating when the resource was last updated.
        #
        #   @return [String, nil]
        optional :updated_at, String
      end

      # @!method initialize(id: nil, cost: nil, created_at: nil, order_address: nil, quantity: nil, record_type: nil, status: nil, tracking_url: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SimCardOrder} for more details.
      #
      #   @param id [String] Identifies the resource.
      #
      #   @param cost [Telnyx::Models::SimCardOrder::Cost] An object representing the total cost of the order.
      #
      #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was last created.
      #
      #   @param order_address [Telnyx::Models::SimCardOrder::OrderAddress] An object representing the address information from when the order was submitted
      #
      #   @param quantity [Integer] The amount of SIM cards requested in the SIM card order.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param status [Symbol, Telnyx::Models::SimCardOrder::Status] The current status of the SIM Card order.<ul> <li><code>pending</code> - the ord
      #
      #   @param tracking_url [String] The URL used to get tracking information about the order.
      #
      #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was last updated.

      # @see Telnyx::Models::SimCardOrder#cost
      class Cost < Telnyx::Internal::Type::BaseModel
        # @!attribute amount
        #   A string representing the cost amount.
        #
        #   @return [String, nil]
        optional :amount, String

        # @!attribute currency
        #   Filter by ISO 4217 currency string.
        #
        #   @return [String, nil]
        optional :currency, String

        # @!method initialize(amount: nil, currency: nil)
        #   An object representing the total cost of the order.
        #
        #   @param amount [String] A string representing the cost amount.
        #
        #   @param currency [String] Filter by ISO 4217 currency string.
      end

      # @see Telnyx::Models::SimCardOrder#order_address
      class OrderAddress < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the address for the order.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute administrative_area
        #   State or province where the address is located.
        #
        #   @return [String, nil]
        optional :administrative_area, String

        # @!attribute business_name
        #   The name of the business where the address is located.
        #
        #   @return [String, nil]
        optional :business_name, String

        # @!attribute country_code
        #   The mobile operator two-character (ISO 3166-1 alpha-2) origin country code.
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute extended_address
        #   Supplemental field for address information.
        #
        #   @return [String, nil]
        optional :extended_address, String

        # @!attribute first_name
        #   The first name of the shipping recipient.
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!attribute last_name
        #   The last name of the shipping recipient.
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!attribute locality
        #   The name of the city where the address is located.
        #
        #   @return [String, nil]
        optional :locality, String

        # @!attribute postal_code
        #   Postal code for the address.
        #
        #   @return [String, nil]
        optional :postal_code, String

        # @!attribute street_address
        #   The name of the street where the address is located.
        #
        #   @return [String, nil]
        optional :street_address, String

        # @!method initialize(id: nil, administrative_area: nil, business_name: nil, country_code: nil, extended_address: nil, first_name: nil, last_name: nil, locality: nil, postal_code: nil, street_address: nil)
        #   An object representing the address information from when the order was
        #   submitted.
        #
        #   @param id [String] Uniquely identifies the address for the order.
        #
        #   @param administrative_area [String] State or province where the address is located.
        #
        #   @param business_name [String] The name of the business where the address is located.
        #
        #   @param country_code [String] The mobile operator two-character (ISO 3166-1 alpha-2) origin country code.
        #
        #   @param extended_address [String] Supplemental field for address information.
        #
        #   @param first_name [String] The first name of the shipping recipient.
        #
        #   @param last_name [String] The last name of the shipping recipient.
        #
        #   @param locality [String] The name of the city where the address is located.
        #
        #   @param postal_code [String] Postal code for the address.
        #
        #   @param street_address [String] The name of the street where the address is located.
      end

      # The current status of the SIM Card order.<ul> <li><code>pending</code> - the
      # order is waiting to be processed.</li> <li><code>processing</code> - the order
      # is currently being processed.</li> <li><code>ready_to_ship</code> - the order is
      # ready to be shipped to the specified <b>address</b>.</li>
      # <li><code>shipped</code> - the order was shipped and is on its way to be
      # delivered to the specified <b>address</b>.</li> <li><code>delivered</code> - the
      # order was delivered to the specified <b>address</b>.</li>
      # <li><code>canceled</code> - the order was canceled.</li> </ul>
      #
      # @see Telnyx::Models::SimCardOrder#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        PROCESSING = :processing
        READY_TO_SHIP = :ready_to_ship
        SHIPPED = :shipped
        DELIVERED = :delivered
        CANCELED = :canceled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
