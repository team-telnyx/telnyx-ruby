# typed: strong

module Telnyx
  module Models
    class RoomParticipantListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::RoomParticipantListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[date_joined_at][eq], filter[date_joined_at][gte],
      # filter[date_joined_at][lte], filter[date_updated_at][eq],
      # filter[date_updated_at][gte], filter[date_updated_at][lte],
      # filter[date_left_at][eq], filter[date_left_at][gte], filter[date_left_at][lte],
      # filter[context], filter[session_id]
      sig { returns(T.nilable(Telnyx::RoomParticipantListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::RoomParticipantListParams::Filter::OrHash).void
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
          filter: Telnyx::RoomParticipantListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_joined_at][eq], filter[date_joined_at][gte],
        # filter[date_joined_at][lte], filter[date_updated_at][eq],
        # filter[date_updated_at][gte], filter[date_updated_at][lte],
        # filter[date_left_at][eq], filter[date_left_at][gte], filter[date_left_at][lte],
        # filter[context], filter[session_id]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::RoomParticipantListParams::Filter,
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
              Telnyx::RoomParticipantListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter room participants based on the context.
        sig { returns(T.nilable(String)) }
        attr_reader :context

        sig { params(context: String).void }
        attr_writer :context

        sig do
          returns(
            T.nilable(Telnyx::RoomParticipantListParams::Filter::DateJoinedAt)
          )
        end
        attr_reader :date_joined_at

        sig do
          params(
            date_joined_at:
              Telnyx::RoomParticipantListParams::Filter::DateJoinedAt::OrHash
          ).void
        end
        attr_writer :date_joined_at

        sig do
          returns(
            T.nilable(Telnyx::RoomParticipantListParams::Filter::DateLeftAt)
          )
        end
        attr_reader :date_left_at

        sig do
          params(
            date_left_at:
              Telnyx::RoomParticipantListParams::Filter::DateLeftAt::OrHash
          ).void
        end
        attr_writer :date_left_at

        sig do
          returns(
            T.nilable(Telnyx::RoomParticipantListParams::Filter::DateUpdatedAt)
          )
        end
        attr_reader :date_updated_at

        sig do
          params(
            date_updated_at:
              Telnyx::RoomParticipantListParams::Filter::DateUpdatedAt::OrHash
          ).void
        end
        attr_writer :date_updated_at

        # Session_id for filtering room participants.
        sig { returns(T.nilable(String)) }
        attr_reader :session_id

        sig { params(session_id: String).void }
        attr_writer :session_id

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_joined_at][eq], filter[date_joined_at][gte],
        # filter[date_joined_at][lte], filter[date_updated_at][eq],
        # filter[date_updated_at][gte], filter[date_updated_at][lte],
        # filter[date_left_at][eq], filter[date_left_at][gte], filter[date_left_at][lte],
        # filter[context], filter[session_id]
        sig do
          params(
            context: String,
            date_joined_at:
              Telnyx::RoomParticipantListParams::Filter::DateJoinedAt::OrHash,
            date_left_at:
              Telnyx::RoomParticipantListParams::Filter::DateLeftAt::OrHash,
            date_updated_at:
              Telnyx::RoomParticipantListParams::Filter::DateUpdatedAt::OrHash,
            session_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter room participants based on the context.
          context: nil,
          date_joined_at: nil,
          date_left_at: nil,
          date_updated_at: nil,
          # Session_id for filtering room participants.
          session_id: nil
        )
        end

        sig do
          override.returns(
            {
              context: String,
              date_joined_at:
                Telnyx::RoomParticipantListParams::Filter::DateJoinedAt,
              date_left_at:
                Telnyx::RoomParticipantListParams::Filter::DateLeftAt,
              date_updated_at:
                Telnyx::RoomParticipantListParams::Filter::DateUpdatedAt,
              session_id: String
            }
          )
        end
        def to_hash
        end

        class DateJoinedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RoomParticipantListParams::Filter::DateJoinedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # ISO 8601 date for filtering room participants that joined on that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :eq

          sig { params(eq: Date).void }
          attr_writer :eq

          # ISO 8601 date for filtering room participants that joined on or after that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :gte

          sig { params(gte: Date).void }
          attr_writer :gte

          # ISO 8601 date for filtering room participants that joined on or before that
          # date.
          sig { returns(T.nilable(Date)) }
          attr_reader :lte

          sig { params(lte: Date).void }
          attr_writer :lte

          sig do
            params(eq: Date, gte: Date, lte: Date).returns(T.attached_class)
          end
          def self.new(
            # ISO 8601 date for filtering room participants that joined on that date.
            eq: nil,
            # ISO 8601 date for filtering room participants that joined on or after that date.
            gte: nil,
            # ISO 8601 date for filtering room participants that joined on or before that
            # date.
            lte: nil
          )
          end

          sig { override.returns({ eq: Date, gte: Date, lte: Date }) }
          def to_hash
          end
        end

        class DateLeftAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RoomParticipantListParams::Filter::DateLeftAt,
                Telnyx::Internal::AnyHash
              )
            end

          # ISO 8601 date for filtering room participants that left on that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :eq

          sig { params(eq: Date).void }
          attr_writer :eq

          # ISO 8601 date for filtering room participants that left on or after that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :gte

          sig { params(gte: Date).void }
          attr_writer :gte

          # ISO 8601 date for filtering room participants that left on or before that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :lte

          sig { params(lte: Date).void }
          attr_writer :lte

          sig do
            params(eq: Date, gte: Date, lte: Date).returns(T.attached_class)
          end
          def self.new(
            # ISO 8601 date for filtering room participants that left on that date.
            eq: nil,
            # ISO 8601 date for filtering room participants that left on or after that date.
            gte: nil,
            # ISO 8601 date for filtering room participants that left on or before that date.
            lte: nil
          )
          end

          sig { override.returns({ eq: Date, gte: Date, lte: Date }) }
          def to_hash
          end
        end

        class DateUpdatedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RoomParticipantListParams::Filter::DateUpdatedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # ISO 8601 date for filtering room participants updated on that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :eq

          sig { params(eq: Date).void }
          attr_writer :eq

          # ISO 8601 date for filtering room participants updated on or after that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :gte

          sig { params(gte: Date).void }
          attr_writer :gte

          # ISO 8601 date for filtering room participants updated on or before that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :lte

          sig { params(lte: Date).void }
          attr_writer :lte

          sig do
            params(eq: Date, gte: Date, lte: Date).returns(T.attached_class)
          end
          def self.new(
            # ISO 8601 date for filtering room participants updated on that date.
            eq: nil,
            # ISO 8601 date for filtering room participants updated on or after that date.
            gte: nil,
            # ISO 8601 date for filtering room participants updated on or before that date.
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
