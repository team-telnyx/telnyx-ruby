# typed: strong

module Telnyx
  module Models
    class RoomRecordingListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::RoomRecordingListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[date_ended_at][eq], filter[date_ended_at][gte],
      # filter[date_ended_at][lte], filter[date_started_at][eq],
      # filter[date_started_at][gte], filter[date_started_at][lte], filter[room_id],
      # filter[participant_id], filter[session_id], filter[status], filter[type],
      # filter[duration_secs]
      sig { returns(T.nilable(Telnyx::RoomRecordingListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::RoomRecordingListParams::Filter::OrHash).void
      end
      attr_writer :filter

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter: Telnyx::RoomRecordingListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_ended_at][eq], filter[date_ended_at][gte],
        # filter[date_ended_at][lte], filter[date_started_at][eq],
        # filter[date_started_at][gte], filter[date_started_at][lte], filter[room_id],
        # filter[participant_id], filter[session_id], filter[status], filter[type],
        # filter[duration_secs]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::RoomRecordingListParams::Filter,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::RoomRecordingListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Telnyx::RoomRecordingListParams::Filter::DateEndedAt)
          )
        end
        attr_reader :date_ended_at

        sig do
          params(
            date_ended_at:
              Telnyx::RoomRecordingListParams::Filter::DateEndedAt::OrHash
          ).void
        end
        attr_writer :date_ended_at

        sig do
          returns(
            T.nilable(Telnyx::RoomRecordingListParams::Filter::DateStartedAt)
          )
        end
        attr_reader :date_started_at

        sig do
          params(
            date_started_at:
              Telnyx::RoomRecordingListParams::Filter::DateStartedAt::OrHash
          ).void
        end
        attr_writer :date_started_at

        # duration_secs greater or equal for filtering room recordings.
        sig { returns(T.nilable(Integer)) }
        attr_reader :duration_secs

        sig { params(duration_secs: Integer).void }
        attr_writer :duration_secs

        # participant_id for filtering room recordings.
        sig { returns(T.nilable(String)) }
        attr_reader :participant_id

        sig { params(participant_id: String).void }
        attr_writer :participant_id

        # room_id for filtering room recordings.
        sig { returns(T.nilable(String)) }
        attr_reader :room_id

        sig { params(room_id: String).void }
        attr_writer :room_id

        # session_id for filtering room recordings.
        sig { returns(T.nilable(String)) }
        attr_reader :session_id

        sig { params(session_id: String).void }
        attr_writer :session_id

        # status for filtering room recordings.
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        # type for filtering room recordings.
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_ended_at][eq], filter[date_ended_at][gte],
        # filter[date_ended_at][lte], filter[date_started_at][eq],
        # filter[date_started_at][gte], filter[date_started_at][lte], filter[room_id],
        # filter[participant_id], filter[session_id], filter[status], filter[type],
        # filter[duration_secs]
        sig do
          params(
            date_ended_at:
              Telnyx::RoomRecordingListParams::Filter::DateEndedAt::OrHash,
            date_started_at:
              Telnyx::RoomRecordingListParams::Filter::DateStartedAt::OrHash,
            duration_secs: Integer,
            participant_id: String,
            room_id: String,
            session_id: String,
            status: String,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          date_ended_at: nil,
          date_started_at: nil,
          # duration_secs greater or equal for filtering room recordings.
          duration_secs: nil,
          # participant_id for filtering room recordings.
          participant_id: nil,
          # room_id for filtering room recordings.
          room_id: nil,
          # session_id for filtering room recordings.
          session_id: nil,
          # status for filtering room recordings.
          status: nil,
          # type for filtering room recordings.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              date_ended_at:
                Telnyx::RoomRecordingListParams::Filter::DateEndedAt,
              date_started_at:
                Telnyx::RoomRecordingListParams::Filter::DateStartedAt,
              duration_secs: Integer,
              participant_id: String,
              room_id: String,
              session_id: String,
              status: String,
              type: String
            }
          )
        end
        def to_hash
        end

        class DateEndedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RoomRecordingListParams::Filter::DateEndedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # ISO 8601 date for filtering room recordings ended on that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :eq

          sig { params(eq: Date).void }
          attr_writer :eq

          # ISO 8601 date for filtering room recordings ended on or after that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :gte

          sig { params(gte: Date).void }
          attr_writer :gte

          # ISO 8601 date for filtering room recordings ended on or before that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :lte

          sig { params(lte: Date).void }
          attr_writer :lte

          sig do
            params(eq: Date, gte: Date, lte: Date).returns(T.attached_class)
          end
          def self.new(
            # ISO 8601 date for filtering room recordings ended on that date.
            eq: nil,
            # ISO 8601 date for filtering room recordings ended on or after that date.
            gte: nil,
            # ISO 8601 date for filtering room recordings ended on or before that date.
            lte: nil
          )
          end

          sig { override.returns({ eq: Date, gte: Date, lte: Date }) }
          def to_hash
          end
        end

        class DateStartedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RoomRecordingListParams::Filter::DateStartedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # ISO 8601 date for filtering room recordings started on that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :eq

          sig { params(eq: Date).void }
          attr_writer :eq

          # ISO 8601 date for filtering room recordings started on or after that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :gte

          sig { params(gte: Date).void }
          attr_writer :gte

          # ISO 8601 date for filtering room recordings started on or before that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :lte

          sig { params(lte: Date).void }
          attr_writer :lte

          sig do
            params(eq: Date, gte: Date, lte: Date).returns(T.attached_class)
          end
          def self.new(
            # ISO 8601 date for filtering room recordings started on that date.
            eq: nil,
            # ISO 8601 date for filtering room recordings started on or after that date.
            gte: nil,
            # ISO 8601 date for filtering room recordings started on or before that date.
            lte: nil
          )
          end

          sig { override.returns({ eq: Date, gte: Date, lte: Date }) }
          def to_hash
          end
        end
      end
    end
  end
end
