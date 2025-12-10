# typed: strong

module Telnyx
  module Resources
    class PortingOrders
      class VerificationCodes
        # Returns a list of verification codes for a porting order.
        sig do
          params(
            id: String,
            filter:
              Telnyx::PortingOrders::VerificationCodeListParams::Filter::OrHash,
            page:
              Telnyx::PortingOrders::VerificationCodeListParams::Page::OrHash,
            sort:
              Telnyx::PortingOrders::VerificationCodeListParams::Sort::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PortingOrders::VerificationCodeListResponse)
        end
        def list(
          # Porting Order id
          id,
          # Consolidated filter parameter (deepObject style). Originally: filter[verified]
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sort: nil,
          request_options: {}
        )
        end

        # Send the verification code for all porting phone numbers.
        sig do
          params(
            id: String,
            phone_numbers: T::Array[String],
            verification_method:
              Telnyx::PortingOrders::VerificationCodeSendParams::VerificationMethod::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def send_(
          # Porting Order id
          id,
          phone_numbers: nil,
          verification_method: nil,
          request_options: {}
        )
        end

        # Verifies the verification code for a list of phone numbers.
        sig do
          params(
            id: String,
            verification_codes:
              T::Array[
                Telnyx::PortingOrders::VerificationCodeVerifyParams::VerificationCode::OrHash
              ],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PortingOrders::VerificationCodeVerifyResponse
          )
        end
        def verify(
          # Porting Order id
          id,
          verification_codes: nil,
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
