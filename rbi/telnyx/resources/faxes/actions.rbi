# typed: strong

module Telnyx
  module Resources
    class Faxes
      class Actions
        # Cancel the outbound fax that is in one of the following states: `queued`,
        # `media.processed`, `originated` or `sending`
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Faxes::ActionCancelResponse)
        end
        def cancel(
          # The unique identifier of a fax.
          id,
          request_options: {}
        )
        end

        # Refreshes the inbound fax's media_url when it has expired
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Faxes::ActionRefreshResponse)
        end
        def refresh(
          # The unique identifier of a fax.
          id,
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
