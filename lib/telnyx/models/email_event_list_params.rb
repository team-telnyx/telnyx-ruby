# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailEvents#list
    class EmailEventListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute email_id
      #   Filter events for a specific email message UUID. Invalid UUID values are
      #   silently ignored (no filter applied).
      #
      #   @return [String, nil]
      optional :email_id, String

      # @!attribute event_type
      #   Comma-separated list of event types to include. Also accepts repeated query
      #   parameters (e.g. event_type=delivered&event_type=bounced). Unknown values return
      #   no matches.
      #
      #   @return [String, Array<String>, nil]
      optional :event_type, union: -> { Telnyx::EmailEventListParams::EventType }

      # @!attribute from
      #   Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
      #
      #   @return [Time, nil]
      optional :from, Time

      # @!attribute page_cursor
      #   Opaque URL-safe Base64 cursor returned by a previous list response.
      #
      #   @return [String, nil]
      optional :page_cursor, String

      # @!attribute page_size
      #   Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      #   clamped to the valid range.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute to
      #   Inclusive ISO 8601 end timestamp. When `from` is provided without `to`, defaults
      #   to `from + 30 days`.
      #
      #   @return [Time, nil]
      optional :to, Time

      # @!method initialize(email_id: nil, event_type: nil, from: nil, page_cursor: nil, page_size: nil, to: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailEventListParams} for more details.
      #
      #   @param email_id [String] Filter events for a specific email message UUID. Invalid UUID values are silentl
      #
      #   @param event_type [String, Array<String>] Comma-separated list of event types to include. Also accepts repeated query para
      #
      #   @param from [Time] Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
      #
      #   @param page_cursor [String] Opaque URL-safe Base64 cursor returned by a previous list response.
      #
      #   @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      #
      #   @param to [Time] Inclusive ISO 8601 end timestamp. When `from` is provided without `to`, defaults
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Comma-separated list of event types to include. Also accepts repeated query
      # parameters (e.g. event_type=delivered&event_type=bounced). Unknown values return
      # no matches.
      module EventType
        extend Telnyx::Internal::Type::Union

        variant String

        variant -> { Telnyx::Models::EmailEventListParams::EventType::StringArray }

        # @!method self.variants
        #   @return [Array(String, Array<String>)]

        # @type [Telnyx::Internal::Type::Converter]
        StringArray = Telnyx::Internal::Type::ArrayOf[String]
      end
    end
  end
end
