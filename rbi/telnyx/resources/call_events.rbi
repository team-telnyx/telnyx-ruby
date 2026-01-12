# typed: strong

module Telnyx
  module Resources
    class CallEvents
      # Filters call events by given filter parameters. Events are ordered by
      # `occurred_at`. If filter for `leg_id` or `application_session_id` is not
      # present, it only filters events from the last 24 hours.
      #
      # **Note**: Only one `filter[occurred_at]` can be passed.
      sig do
        params(
          filter: Telnyx::CallEventListParams::Filter::OrHash,
          page: Telnyx::CallEventListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultPagination[
            Telnyx::Models::CallEventListResponse
          ]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[application_name][contains], filter[outbound.outbound_voice_profile_id],
        # filter[leg_id], filter[application_session_id], filter[connection_id],
        # filter[product], filter[failed], filter[from], filter[to], filter[name],
        # filter[type], filter[occurred_at][eq/gt/gte/lt/lte], filter[status]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[after],
        # page[before], page[limit], page[size], page[number]
        page: nil,
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
