# typed: strong

module Telnyx
  module Resources
    class Verifications
      class ByPhoneNumber
        sig do
          returns(Telnyx::Resources::Verifications::ByPhoneNumber::Actions)
        end
        attr_reader :actions

        # List verifications by phone number
        sig do
          params(
            phone_number: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Verifications::ByPhoneNumberListResponse)
        end
        def list(
          # +E164 formatted phone number.
          phone_number,
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
