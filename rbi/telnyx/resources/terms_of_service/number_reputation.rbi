# typed: strong

module Telnyx
  module Resources
    class TermsOfService
      # Terms of Service agreement endpoints
      class NumberReputation
        # Accept the Terms of Service for the Number Reputation product. Must be called
        # before using Number Reputation endpoints.
        #
        # Returns `400` with error code `10015` if the user has already agreed to the
        # current ToS version.
        sig { params(request_options: Telnyx::RequestOptions::OrHash).void }
        def agree(request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
