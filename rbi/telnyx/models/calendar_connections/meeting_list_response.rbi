# typed: strong

module Telnyx
  module Models
    module CalendarConnections
      class MeetingListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::CalendarConnections::MeetingListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::CalendarConnections::CalendarMeeting]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[Telnyx::CalendarConnections::CalendarMeeting::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::CalendarConnections::CalendarMeeting] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
