# typed: strong

module Telnyx
  module Resources
    class PortingOrders
      class PhoneNumberConfigurations
        # Creates a list of phone number configurations.
        sig do
          params(
            phone_number_configurations:
              T::Array[
                Telnyx::PortingOrders::PhoneNumberConfigurationCreateParams::PhoneNumberConfiguration::OrHash
              ],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PortingOrders::PhoneNumberConfigurationCreateResponse
          )
        end
        def create(phone_number_configurations: nil, request_options: {})
        end

        # Returns a list of phone number configurations paginated.
        sig do
          params(
            filter:
              Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            sort:
              Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::PortingOrders::PhoneNumberConfigurationListResponse
            ]
          )
        end
        def list(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[porting_order.status][in][], filter[porting_phone_number][in][],
          # filter[user_bundle_id][in][]
          filter: nil,
          page_number: nil,
          page_size: nil,
          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sort: nil,
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
