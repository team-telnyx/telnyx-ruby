# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      # @see Telnyx::Resources::Rooms::Sessions#retrieve_participants
      class SessionRetrieveParticipantsParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[date_joined_at][eq], filter[date_joined_at][gte],
        #   filter[date_joined_at][lte], filter[date_updated_at][eq],
        #   filter[date_updated_at][gte], filter[date_updated_at][lte],
        #   filter[date_left_at][eq], filter[date_left_at][gte], filter[date_left_at][lte],
        #   filter[context]
        #
        #   @return [Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Filter, nil]
        optional :filter, -> { Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter }

        # @!attribute page
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @return [Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Page, nil]
        optional :page, -> { Telnyx::Rooms::SessionRetrieveParticipantsParams::Page }

        # @!method initialize(filter: nil, page: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Rooms::SessionRetrieveParticipantsParams} for more details.
        #
        #   @param filter [Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date_joined
        #
        #   @param page [Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute context
          #   Filter room participants based on the context.
          #
          #   @return [String, nil]
          optional :context, String

          # @!attribute date_joined_at
          #
          #   @return [Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Filter::DateJoinedAt, nil]
          optional :date_joined_at, -> { Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateJoinedAt }

          # @!attribute date_left_at
          #
          #   @return [Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Filter::DateLeftAt, nil]
          optional :date_left_at, -> { Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateLeftAt }

          # @!attribute date_updated_at
          #
          #   @return [Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Filter::DateUpdatedAt, nil]
          optional :date_updated_at, -> { Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::DateUpdatedAt }

          # @!method initialize(context: nil, date_joined_at: nil, date_left_at: nil, date_updated_at: nil)
          #   Consolidated filter parameter (deepObject style). Originally:
          #   filter[date_joined_at][eq], filter[date_joined_at][gte],
          #   filter[date_joined_at][lte], filter[date_updated_at][eq],
          #   filter[date_updated_at][gte], filter[date_updated_at][lte],
          #   filter[date_left_at][eq], filter[date_left_at][gte], filter[date_left_at][lte],
          #   filter[context]
          #
          #   @param context [String] Filter room participants based on the context.
          #
          #   @param date_joined_at [Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Filter::DateJoinedAt]
          #
          #   @param date_left_at [Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Filter::DateLeftAt]
          #
          #   @param date_updated_at [Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Filter::DateUpdatedAt]

          # @see Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Filter#date_joined_at
          class DateJoinedAt < Telnyx::Internal::Type::BaseModel
            # @!attribute eq
            #   ISO 8601 date for filtering room participants that joined on that date.
            #
            #   @return [Date, nil]
            optional :eq, Date

            # @!attribute gte
            #   ISO 8601 date for filtering room participants that joined on or after that date.
            #
            #   @return [Date, nil]
            optional :gte, Date

            # @!attribute lte
            #   ISO 8601 date for filtering room participants that joined on or before that
            #   date.
            #
            #   @return [Date, nil]
            optional :lte, Date

            # @!method initialize(eq: nil, gte: nil, lte: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Filter::DateJoinedAt}
            #   for more details.
            #
            #   @param eq [Date] ISO 8601 date for filtering room participants that joined on that date.
            #
            #   @param gte [Date] ISO 8601 date for filtering room participants that joined on or after that date.
            #
            #   @param lte [Date] ISO 8601 date for filtering room participants that joined on or before that date
          end

          # @see Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Filter#date_left_at
          class DateLeftAt < Telnyx::Internal::Type::BaseModel
            # @!attribute eq
            #   ISO 8601 date for filtering room participants that left on that date.
            #
            #   @return [Date, nil]
            optional :eq, Date

            # @!attribute gte
            #   ISO 8601 date for filtering room participants that left on or after that date.
            #
            #   @return [Date, nil]
            optional :gte, Date

            # @!attribute lte
            #   ISO 8601 date for filtering room participants that left on or before that date.
            #
            #   @return [Date, nil]
            optional :lte, Date

            # @!method initialize(eq: nil, gte: nil, lte: nil)
            #   @param eq [Date] ISO 8601 date for filtering room participants that left on that date.
            #
            #   @param gte [Date] ISO 8601 date for filtering room participants that left on or after that date.
            #
            #   @param lte [Date] ISO 8601 date for filtering room participants that left on or before that date.
          end

          # @see Telnyx::Models::Rooms::SessionRetrieveParticipantsParams::Filter#date_updated_at
          class DateUpdatedAt < Telnyx::Internal::Type::BaseModel
            # @!attribute eq
            #   ISO 8601 date for filtering room participants updated on that date.
            #
            #   @return [Date, nil]
            optional :eq, Date

            # @!attribute gte
            #   ISO 8601 date for filtering room participants updated on or after that date.
            #
            #   @return [Date, nil]
            optional :gte, Date

            # @!attribute lte
            #   ISO 8601 date for filtering room participants updated on or before that date.
            #
            #   @return [Date, nil]
            optional :lte, Date

            # @!method initialize(eq: nil, gte: nil, lte: nil)
            #   @param eq [Date] ISO 8601 date for filtering room participants updated on that date.
            #
            #   @param gte [Date] ISO 8601 date for filtering room participants updated on or after that date.
            #
            #   @param lte [Date] ISO 8601 date for filtering room participants updated on or before that date.
          end
        end

        class Page < Telnyx::Internal::Type::BaseModel
          # @!attribute number
          #   The page number to load.
          #
          #   @return [Integer, nil]
          optional :number, Integer

          # @!attribute size
          #   The size of the page.
          #
          #   @return [Integer, nil]
          optional :size, Integer

          # @!method initialize(number: nil, size: nil)
          #   Consolidated page parameter (deepObject style). Originally: page[size],
          #   page[number]
          #
          #   @param number [Integer] The page number to load.
          #
          #   @param size [Integer] The size of the page.
        end
      end
    end
  end
end
