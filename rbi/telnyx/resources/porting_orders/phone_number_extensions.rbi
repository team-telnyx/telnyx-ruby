# typed: strong

module Telnyx
  module Resources
    class PortingOrders
      class PhoneNumberExtensions
        # Creates a new phone number extension.
        sig do
          params(
            porting_order_id: String,
            activation_ranges:
              T::Array[
                Telnyx::PortingOrders::PhoneNumberExtensionCreateParams::ActivationRange::OrHash
              ],
            extension_range:
              Telnyx::PortingOrders::PhoneNumberExtensionCreateParams::ExtensionRange::OrHash,
            porting_phone_number_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateResponse
          )
        end
        def create(
          # Identifies the Porting Order associated with the phone number extension
          porting_order_id,
          # Specifies the activation ranges for this porting phone number extension. The
          # activation range must be within the extension range and should not overlap with
          # other activation ranges.
          activation_ranges:,
          extension_range:,
          # Identifies the porting phone number associated with this porting phone number
          # extension.
          porting_phone_number_id:,
          request_options: {}
        )
        end

        # Returns a list of all phone number extensions of a porting order.
        sig do
          params(
            porting_order_id: String,
            filter:
              Telnyx::PortingOrders::PhoneNumberExtensionListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            sort:
              Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::PortingOrders::PortingPhoneNumberExtension
            ]
          )
        end
        def list(
          # Identifies the Porting Order associated with the phone number extensions
          porting_order_id,
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[porting_phone_number_id]
          filter: nil,
          page_number: nil,
          page_size: nil,
          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sort: nil,
          request_options: {}
        )
        end

        # Deletes a phone number extension.
        sig do
          params(
            id: String,
            porting_order_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PortingOrders::PhoneNumberExtensionDeleteResponse
          )
        end
        def delete(
          # Identifies the phone number extension to be deleted
          id,
          # Identifies the Porting Order associated with the phone number extension
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
