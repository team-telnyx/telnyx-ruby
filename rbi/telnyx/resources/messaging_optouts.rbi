# typed: strong

module Telnyx
  module Resources
    class MessagingOptouts
      # Retrieve a list of opt-out blocks.
      sig do
        params(
          created_at: Telnyx::MessagingOptoutListParams::CreatedAt::OrHash,
          filter: Telnyx::MessagingOptoutListParams::Filter::OrHash,
          page: Telnyx::MessagingOptoutListParams::Page::OrHash,
          redaction_enabled: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessagingOptoutListResponse)
      end
      def list(
        # Consolidated created_at parameter (deepObject style). Originally:
        # created_at[gte], created_at[lte]
        created_at: nil,
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[messaging_profile_id], filter[from]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        # If receiving address (+E.164 formatted phone number) should be redacted
        redaction_enabled: nil,
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
