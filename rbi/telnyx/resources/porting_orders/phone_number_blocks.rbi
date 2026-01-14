# typed: strong

module Telnyx
  module Resources
    class PortingOrders
      class PhoneNumberBlocks
        # Creates a new phone number block.
        sig do
          params(
            porting_order_id: String,
            activation_ranges:
              T::Array[
                Telnyx::PortingOrders::PhoneNumberBlockCreateParams::ActivationRange::OrHash
              ],
            phone_number_range:
              Telnyx::PortingOrders::PhoneNumberBlockCreateParams::PhoneNumberRange::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PortingOrders::PhoneNumberBlockCreateResponse
          )
        end
        def create(
          # Identifies the Porting Order associated with the phone number block
          porting_order_id,
          # Specifies the activation ranges for this porting phone number block. The
          # activation range must be within the block range and should not overlap with
          # other activation ranges.
          activation_ranges:,
          phone_number_range:,
          request_options: {}
        )
        end

        # Returns a list of all phone number blocks of a porting order.
        sig do
          params(
            porting_order_id: String,
            filter:
              Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            sort:
              Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::PortingOrders::PortingPhoneNumberBlock
            ]
          )
        end
        def list(
          # Identifies the Porting Order associated with the phone number blocks
          porting_order_id,
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[porting_order_id], filter[support_key], filter[status],
          # filter[phone_number], filter[activation_status], filter[portability_status]
          filter: nil,
          page_number: nil,
          page_size: nil,
          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sort: nil,
          request_options: {}
        )
        end

        # Deletes a phone number block.
        sig do
          params(
            id: String,
            porting_order_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PortingOrders::PhoneNumberBlockDeleteResponse
          )
        end
        def delete(
          # Identifies the phone number block to be deleted
          id,
          # Identifies the Porting Order associated with the phone number block
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
