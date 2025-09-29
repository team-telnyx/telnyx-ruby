# typed: strong

module Telnyx
  module Resources
    class PortabilityChecks
      # Runs a portability check, returning the results immediately.
      sig do
        params(
          phone_numbers: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PortabilityCheckRunResponse)
      end
      def run(
        # The list of +E.164 formatted phone numbers to check for portability
        phone_numbers: nil,
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
