# typed: strong

module Telnyx
  module Resources
    class PortingOrders
      class AssociatedPhoneNumbers
        # Creates a new associated phone number for a porting order. This is used for
        # partial porting in GB to specify which phone numbers should be kept or
        # disconnected.
        sig do
          params(
            porting_order_id: String,
            action:
              Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::Action::OrSymbol,
            phone_number_range:
              Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::PhoneNumberRange::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PortingOrders::AssociatedPhoneNumberCreateResponse
          )
        end
        def create(
          # Identifies the Porting Order associated with the phone number
          porting_order_id,
          # Specifies the action to take with this phone number during partial porting.
          action:,
          phone_number_range:,
          request_options: {}
        )
        end

        # Returns a list of all associated phone numbers for a porting order. Associated
        # phone numbers are used for partial porting in GB to specify which phone numbers
        # should be kept or disconnected.
        sig do
          params(
            porting_order_id: String,
            filter:
              Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            sort:
              Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber
            ]
          )
        end
        def list(
          # Identifies the Porting Order associated with the phone numbers
          porting_order_id,
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[phone_number], filter[action]
          filter: nil,
          page_number: nil,
          page_size: nil,
          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sort: nil,
          request_options: {}
        )
        end

        # Deletes an associated phone number from a porting order.
        sig do
          params(
            id: String,
            porting_order_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PortingOrders::AssociatedPhoneNumberDeleteResponse
          )
        end
        def delete(
          # Identifies the associated phone number to be deleted
          id,
          # Identifies the Porting Order associated with the phone number
          porting_order_id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
