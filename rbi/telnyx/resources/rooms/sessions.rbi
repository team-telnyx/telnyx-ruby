# typed: strong

module Telnyx
  module Resources
    class Rooms
      class Sessions
        # Rooms Sessions operations.
        sig { returns(Telnyx::Resources::Rooms::Sessions::Actions) }
        attr_reader :actions

        # Returns the room session identified by `room_session_id`, including its room,
        # active status, and lifecycle timestamps. Use `include_participants` to include
        # its participant records.
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

        # Returns a paginated list of room sessions across the account. Filter sessions by
        # room, creation, update, or end date and active status, and use
        # `include_participants` to include participant records.
        sig do
          params(
            filter: Telnyx::Rooms::SessionList0Params::Filter::OrHash,
            include_participants: T::Boolean,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[Telnyx::RoomSession]
          )
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
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        # Returns a paginated list of sessions for the specified room. Filter sessions by
        # creation, update, or end date and active status, and use `include_participants`
        # to include participant records.
        sig do
          params(
            room_id: String,
            filter: Telnyx::Rooms::SessionList1Params::Filter::OrHash,
            include_participants: T::Boolean,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[Telnyx::RoomSession]
          )
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
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        # Returns a paginated list of participants for the specified room session. Filter
        # participants by join, update, or leave date and by participant context.
        sig do
          params(
            room_session_id: String,
            filter:
              Telnyx::Rooms::SessionRetrieveParticipantsParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[Telnyx::RoomParticipant]
          )
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
          page_number: nil,
          page_size: nil,
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
