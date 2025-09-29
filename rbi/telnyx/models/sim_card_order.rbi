# typed: strong

module Telnyx
  module Models
    class SimCardOrder < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::SimCardOrder, Telnyx::Internal::AnyHash) }

      # An object representing the total cost of the order.
      sig { returns(T.nilable(Telnyx::SimCardOrder::Cost)) }
      attr_reader :cost

      sig { params(cost: Telnyx::SimCardOrder::Cost::OrHash).void }
      attr_writer :cost

      # The amount of SIM cards requested in the SIM card order.
      sig { returns(T.nilable(Integer)) }
      attr_reader :quantity

      sig { params(quantity: Integer).void }
      attr_writer :quantity

      # The current status of the SIM Card order.<ul> <li><code>pending</code> - the
      # order is waiting to be processed.</li> <li><code>processing</code> - the order
      # is currently being processed.</li> <li><code>ready_to_ship</code> - the order is
      # ready to be shipped to the specified <b>address</b>.</li>
      # <li><code>shipped</code> - the order was shipped and is on its way to be
      # delivered to the specified <b>address</b>.</li> <li><code>delivered</code> - the
      # order was delivered to the specified <b>address</b>.</li>
      # <li><code>canceled</code> - the order was canceled.</li> </ul>
      sig { returns(T.nilable(Telnyx::SimCardOrder::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::SimCardOrder::Status::OrSymbol).void }
      attr_writer :status

      # The URL used to get tracking information about the order.
      sig { returns(T.nilable(String)) }
      attr_reader :tracking_url

      sig { params(tracking_url: String).void }
      attr_writer :tracking_url

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date-time indicating when the resource was last created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # An object representing the address information from when the order was
      # submitted.
      sig { returns(T.nilable(Telnyx::SimCardOrder::OrderAddress)) }
      attr_reader :order_address

      sig do
        params(order_address: Telnyx::SimCardOrder::OrderAddress::OrHash).void
      end
      attr_writer :order_address

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # ISO 8601 formatted date-time indicating when the resource was last updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          cost: Telnyx::SimCardOrder::Cost::OrHash,
          created_at: String,
          order_address: Telnyx::SimCardOrder::OrderAddress::OrHash,
          quantity: Integer,
          record_type: String,
          status: Telnyx::SimCardOrder::Status::OrSymbol,
          tracking_url: String,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # An object representing the total cost of the order.
        cost: nil,
        # ISO 8601 formatted date-time indicating when the resource was last created.
        created_at: nil,
        # An object representing the address information from when the order was
        # submitted.
        order_address: nil,
        # The amount of SIM cards requested in the SIM card order.
        quantity: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # The current status of the SIM Card order.<ul> <li><code>pending</code> - the
        # order is waiting to be processed.</li> <li><code>processing</code> - the order
        # is currently being processed.</li> <li><code>ready_to_ship</code> - the order is
        # ready to be shipped to the specified <b>address</b>.</li>
        # <li><code>shipped</code> - the order was shipped and is on its way to be
        # delivered to the specified <b>address</b>.</li> <li><code>delivered</code> - the
        # order was delivered to the specified <b>address</b>.</li>
        # <li><code>canceled</code> - the order was canceled.</li> </ul>
        status: nil,
        # The URL used to get tracking information about the order.
        tracking_url: nil,
        # ISO 8601 formatted date-time indicating when the resource was last updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            cost: Telnyx::SimCardOrder::Cost,
            created_at: String,
            order_address: Telnyx::SimCardOrder::OrderAddress,
            quantity: Integer,
            record_type: String,
            status: Telnyx::SimCardOrder::Status::TaggedSymbol,
            tracking_url: String,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      class Cost < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::SimCardOrder::Cost, Telnyx::Internal::AnyHash)
          end

        # A string representing the cost amount.
        sig { returns(T.nilable(String)) }
        attr_reader :amount

        sig { params(amount: String).void }
        attr_writer :amount

        # Filter by ISO 4217 currency string.
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        # An object representing the total cost of the order.
        sig do
          params(amount: String, currency: String).returns(T.attached_class)
        end
        def self.new(
          # A string representing the cost amount.
          amount: nil,
          # Filter by ISO 4217 currency string.
          currency: nil
        )
        end

        sig { override.returns({ amount: String, currency: String }) }
        def to_hash
        end
      end

      class OrderAddress < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::SimCardOrder::OrderAddress, Telnyx::Internal::AnyHash)
          end

        # Uniquely identifies the address for the order.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # State or province where the address is located.
        sig { returns(T.nilable(String)) }
        attr_reader :administrative_area

        sig { params(administrative_area: String).void }
        attr_writer :administrative_area

        # The name of the business where the address is located.
        sig { returns(T.nilable(String)) }
        attr_reader :business_name

        sig { params(business_name: String).void }
        attr_writer :business_name

        # The mobile operator two-character (ISO 3166-1 alpha-2) origin country code.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Supplemental field for address information.
        sig { returns(T.nilable(String)) }
        attr_reader :extended_address

        sig { params(extended_address: String).void }
        attr_writer :extended_address

        # The first name of the shipping recipient.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # The last name of the shipping recipient.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # The name of the city where the address is located.
        sig { returns(T.nilable(String)) }
        attr_reader :locality

        sig { params(locality: String).void }
        attr_writer :locality

        # Postal code for the address.
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code

        sig { params(postal_code: String).void }
        attr_writer :postal_code

        # The name of the street where the address is located.
        sig { returns(T.nilable(String)) }
        attr_reader :street_address

        sig { params(street_address: String).void }
        attr_writer :street_address

        # An object representing the address information from when the order was
        # submitted.
        sig do
          params(
            id: String,
            administrative_area: String,
            business_name: String,
            country_code: String,
            extended_address: String,
            first_name: String,
            last_name: String,
            locality: String,
            postal_code: String,
            street_address: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies the address for the order.
          id: nil,
          # State or province where the address is located.
          administrative_area: nil,
          # The name of the business where the address is located.
          business_name: nil,
          # The mobile operator two-character (ISO 3166-1 alpha-2) origin country code.
          country_code: nil,
          # Supplemental field for address information.
          extended_address: nil,
          # The first name of the shipping recipient.
          first_name: nil,
          # The last name of the shipping recipient.
          last_name: nil,
          # The name of the city where the address is located.
          locality: nil,
          # Postal code for the address.
          postal_code: nil,
          # The name of the street where the address is located.
          street_address: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              administrative_area: String,
              business_name: String,
              country_code: String,
              extended_address: String,
              first_name: String,
              last_name: String,
              locality: String,
              postal_code: String,
              street_address: String
            }
          )
        end
        def to_hash
        end
      end

      # The current status of the SIM Card order.<ul> <li><code>pending</code> - the
      # order is waiting to be processed.</li> <li><code>processing</code> - the order
      # is currently being processed.</li> <li><code>ready_to_ship</code> - the order is
      # ready to be shipped to the specified <b>address</b>.</li>
      # <li><code>shipped</code> - the order was shipped and is on its way to be
      # delivered to the specified <b>address</b>.</li> <li><code>delivered</code> - the
      # order was delivered to the specified <b>address</b>.</li>
      # <li><code>canceled</code> - the order was canceled.</li> </ul>
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::SimCardOrder::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, Telnyx::SimCardOrder::Status::TaggedSymbol)
        PROCESSING =
          T.let(:processing, Telnyx::SimCardOrder::Status::TaggedSymbol)
        READY_TO_SHIP =
          T.let(:ready_to_ship, Telnyx::SimCardOrder::Status::TaggedSymbol)
        SHIPPED = T.let(:shipped, Telnyx::SimCardOrder::Status::TaggedSymbol)
        DELIVERED =
          T.let(:delivered, Telnyx::SimCardOrder::Status::TaggedSymbol)
        CANCELED = T.let(:canceled, Telnyx::SimCardOrder::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::SimCardOrder::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
