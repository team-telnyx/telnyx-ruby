# typed: strong

module Telnyx
  module Resources
    class Rooms
      class Sessions
        sig { returns(Telnyx::Resources::Rooms::Sessions::Actions) }
        attr_reader :actions

        # View a room session.
        sig do
          params(
            room_session_id: String,
            include_participants: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Rooms::SessionRetrieveResponse)
        end
        def retrieve(
          # The unique identifier of a room session.
          room_session_id,
          # To decide if room participants should be included in the response.
          include_participants: nil,
          request_options: {}
        )
        end

        # View a list of room sessions.
        sig do
          params(
            filter: Telnyx::Rooms::SessionList0Params::Filter::OrHash,
            include_participants: T::Boolean,
            page: Telnyx::Rooms::SessionList0Params::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Rooms::SessionList0Response)
        end
        def list_0(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[date_created_at][eq], filter[date_created_at][gte],
          # filter[date_created_at][lte], filter[date_updated_at][eq],
          # filter[date_updated_at][gte], filter[date_updated_at][lte],
          # filter[date_ended_at][eq], filter[date_ended_at][gte],
          # filter[date_ended_at][lte], filter[room_id], filter[active]
          filter: nil,
          # To decide if room participants should be included in the response.
          include_participants: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          request_options: {}
        )
        end

        # View a list of room sessions.
        sig do
          params(
            room_id: String,
            filter: Telnyx::Rooms::SessionList1Params::Filter::OrHash,
            include_participants: T::Boolean,
            page: Telnyx::Rooms::SessionList1Params::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Rooms::SessionList1Response)
        end
        def list_1(
          # The unique identifier of a room.
          room_id,
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[date_created_at][eq], filter[date_created_at][gte],
          # filter[date_created_at][lte], filter[date_updated_at][eq],
          # filter[date_updated_at][gte], filter[date_updated_at][lte],
          # filter[date_ended_at][eq], filter[date_ended_at][gte],
          # filter[date_ended_at][lte], filter[active]
          filter: nil,
          # To decide if room participants should be included in the response.
          include_participants: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          request_options: {}
        )
        end

        # View a list of room participants.
        sig do
          params(
            room_session_id: String,
            filter:
              Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::OrHash,
            page:
              Telnyx::Rooms::SessionRetrieveParticipantsParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Rooms::SessionRetrieveParticipantsResponse)
        end
        def retrieve_participants(
          # The unique identifier of a room session.
          room_session_id,
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[date_joined_at][eq], filter[date_joined_at][gte],
          # filter[date_joined_at][lte], filter[date_updated_at][eq],
          # filter[date_updated_at][gte], filter[date_updated_at][lte],
          # filter[date_left_at][eq], filter[date_left_at][gte], filter[date_left_at][lte],
          # filter[context]
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
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
end
