# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingOptouts#list
    class MessagingOptoutListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute created_at
      #   Consolidated created_at parameter (deepObject style). Originally:
      #   created_at[gte], created_at[lte]
      #
      #   @return [Telnyx::Models::MessagingOptoutListParams::CreatedAt, nil]
      optional :created_at, -> { Telnyx::MessagingOptoutListParams::CreatedAt }

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[messaging_profile_id], filter[from]
      #
      #   @return [Telnyx::Models::MessagingOptoutListParams::Filter, nil]
      optional :filter, -> { Telnyx::MessagingOptoutListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::MessagingOptoutListParams::Page, nil]
      optional :page, -> { Telnyx::MessagingOptoutListParams::Page }

      # @!attribute redaction_enabled
      #   If receiving address (+E.164 formatted phone number) should be redacted
      #
      #   @return [String, nil]
      optional :redaction_enabled, String

      # @!method initialize(created_at: nil, filter: nil, page: nil, redaction_enabled: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MessagingOptoutListParams} for more details.
      #
      #   @param created_at [Telnyx::Models::MessagingOptoutListParams::CreatedAt] Consolidated created_at parameter (deepObject style). Originally: created_at[gte
      #
      #   @param filter [Telnyx::Models::MessagingOptoutListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[messaging_p
      #
      #   @param page [Telnyx::Models::MessagingOptoutListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param redaction_enabled [String] If receiving address (+E.164 formatted phone number) should be redacted
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class CreatedAt < Telnyx::Internal::Type::BaseModel
        # @!attribute gte
        #   Filter opt-outs created after this date (ISO-8601 format)
        #
        #   @return [Time, nil]
        optional :gte, Time

        # @!attribute lte
        #   Filter opt-outs created before this date (ISO-8601 format)
        #
        #   @return [Time, nil]
        optional :lte, Time

        # @!method initialize(gte: nil, lte: nil)
        #   Consolidated created_at parameter (deepObject style). Originally:
        #   created_at[gte], created_at[lte]
        #
        #   @param gte [Time] Filter opt-outs created after this date (ISO-8601 format)
        #
        #   @param lte [Time] Filter opt-outs created before this date (ISO-8601 format)
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute from
        #   The sending address (+E.164 formatted phone number, alphanumeric sender ID, or
        #   short code) to retrieve opt-outs for
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute messaging_profile_id
        #   The ID of the messaging profile to retrieve opt-outs for
        #
        #   @return [String, nil]
        optional :messaging_profile_id, String

        # @!method initialize(from: nil, messaging_profile_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MessagingOptoutListParams::Filter} for more details.
        #
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[messaging_profile_id], filter[from]
        #
        #   @param from [String] The sending address (+E.164 formatted phone number, alphanumeric sender ID, or s
        #
        #   @param messaging_profile_id [String] The ID of the messaging profile to retrieve opt-outs for
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end
    end
  end
end
