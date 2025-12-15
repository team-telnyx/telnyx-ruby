# typed: strong

module Telnyx
  module Resources
    class MessagingHostedNumberOrders
      sig { returns(Telnyx::Resources::MessagingHostedNumberOrders::Actions) }
      attr_reader :actions

      # Create a messaging hosted number order
      sig do
        params(
          messaging_profile_id: String,
          phone_numbers: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessagingHostedNumberOrderCreateResponse)
      end
      def create(
        # Automatically associate the number with this messaging profile ID when the order
        # is complete.
        messaging_profile_id: nil,
        # Phone numbers to be used for hosted messaging.
        phone_numbers: nil,
        request_options: {}
      )
      end

      # Retrieve a messaging hosted number order
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessagingHostedNumberOrderRetrieveResponse)
      end
      def retrieve(
        # Identifies the type of resource.
        id,
        request_options: {}
      )
      end

      # List messaging hosted number orders
      sig do
        params(
          page: Telnyx::MessagingHostedNumberOrderListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultPagination[
            Telnyx::MessagingHostedNumberOrder
          ]
        )
      end
      def list(
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      # Delete a messaging hosted number order and all associated phone numbers.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessagingHostedNumberOrderDeleteResponse)
      end
      def delete(
        # Identifies the messaging hosted number order to delete.
        id,
        request_options: {}
      )
      end

      # Check eligibility of phone numbers for hosted messaging
      sig do
        params(
          phone_numbers: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse
        )
      end
      def check_eligibility(
        # List of phone numbers to check eligibility
        phone_numbers:,
        request_options: {}
      )
      end

      # Create verification codes to validate numbers of the hosted order. The
      # verification codes will be sent to the numbers of the hosted order.
      sig do
        params(
          id: String,
          phone_numbers: T::Array[String],
          verification_method:
            Telnyx::MessagingHostedNumberOrderCreateVerificationCodesParams::VerificationMethod::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse
        )
      end
      def create_verification_codes(
        # Order ID to have a verification code created.
        id,
        phone_numbers:,
        verification_method:,
        request_options: {}
      )
      end

      # Validate the verification codes sent to the numbers of the hosted order. The
      # verification codes must be created in the verification codes endpoint.
      sig do
        params(
          id: String,
          verification_codes:
            T::Array[
              Telnyx::MessagingHostedNumberOrderValidateCodesParams::VerificationCode::OrHash
            ],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse
        )
      end
      def validate_codes(
        # Order ID related to the validation codes.
        id,
        verification_codes:,
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
