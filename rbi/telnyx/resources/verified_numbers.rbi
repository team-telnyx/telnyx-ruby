# typed: strong

module Telnyx
  module Resources
    class VerifiedNumbers
      sig { returns(Telnyx::Resources::VerifiedNumbers::Actions) }
      attr_reader :actions

      # Initiates phone number verification procedure. Supports DTMF extension dialing
      # for voice calls to numbers behind IVR systems.
      sig do
        params(
          phone_number: String,
          verification_method:
            Telnyx::VerifiedNumberCreateParams::VerificationMethod::OrSymbol,
          extension: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VerifiedNumberCreateResponse)
      end
      def create(
        phone_number:,
        # Verification method.
        verification_method:,
        # Optional DTMF extension sequence to dial after the call is answered. This
        # parameter enables verification of phone numbers behind IVR systems that require
        # extension dialing. Valid characters: digits 0-9, letters A-D, symbols \* and #.
        # Pauses: w = 0.5 second pause, W = 1 second pause. Maximum length: 50 characters.
        # Only works with 'call' verification method.
        extension: nil,
        request_options: {}
      )
      end

      # Retrieve a verified number
      sig do
        params(
          phone_number: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::VerifiedNumberDataWrapper)
      end
      def retrieve(
        # +E164 formatted phone number.
        phone_number,
        request_options: {}
      )
      end

      # Gets a paginated list of Verified Numbers.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::VerifiedNumber]
        )
      end
      def list(page_number: nil, page_size: nil, request_options: {})
      end

      # Delete a verified number
      sig do
        params(
          phone_number: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::VerifiedNumberDataWrapper)
      end
      def delete(
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
