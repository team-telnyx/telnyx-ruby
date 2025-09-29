# typed: strong

module Telnyx
  module Models
    class RoomListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::RoomListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[date_created_at][eq], filter[date_created_at][gte],
      # filter[date_created_at][lte], filter[date_updated_at][eq],
      # filter[date_updated_at][gte], filter[date_updated_at][lte], filter[unique_name]
      sig { returns(T.nilable(Telnyx::RoomListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::RoomListParams::Filter::OrHash).void }
      attr_writer :filter

      # To decide if room sessions should be included in the response.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_sessions

      sig { params(include_sessions: T::Boolean).void }
      attr_writer :include_sessions

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::RoomListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::RoomListParams::Page::OrHash).void }
      attr_writer :page

      sig do
        params(
          filter: Telnyx::RoomListParams::Filter::OrHash,
          include_sessions: T::Boolean,
          page: Telnyx::RoomListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_created_at][eq], filter[date_created_at][gte],
        # filter[date_created_at][lte], filter[date_updated_at][eq],
        # filter[date_updated_at][gte], filter[date_updated_at][lte], filter[unique_name]
        filter: nil,
        # To decide if room sessions should be included in the response.
        include_sessions: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::RoomListParams::Filter,
            include_sessions: T::Boolean,
            page: Telnyx::RoomListParams::Page,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::RoomListParams::Filter, Telnyx::Internal::AnyHash)
          end

        sig do
          returns(T.nilable(Telnyx::RoomListParams::Filter::DateCreatedAt))
        end
        attr_reader :date_created_at

        sig do
          params(
            date_created_at:
              Telnyx::RoomListParams::Filter::DateCreatedAt::OrHash
          ).void
        end
        attr_writer :date_created_at

        sig do
          returns(T.nilable(Telnyx::RoomListParams::Filter::DateUpdatedAt))
        end
        attr_reader :date_updated_at

        sig do
          params(
            date_updated_at:
              Telnyx::RoomListParams::Filter::DateUpdatedAt::OrHash
          ).void
        end
        attr_writer :date_updated_at

        # Unique_name for filtering rooms.
        sig { returns(T.nilable(String)) }
        attr_reader :unique_name

        sig { params(unique_name: String).void }
        attr_writer :unique_name

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_created_at][eq], filter[date_created_at][gte],
        # filter[date_created_at][lte], filter[date_updated_at][eq],
        # filter[date_updated_at][gte], filter[date_updated_at][lte], filter[unique_name]
        sig do
          params(
            date_created_at:
              Telnyx::RoomListParams::Filter::DateCreatedAt::OrHash,
            date_updated_at:
              Telnyx::RoomListParams::Filter::DateUpdatedAt::OrHash,
            unique_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          date_created_at: nil,
          date_updated_at: nil,
          # Unique_name for filtering rooms.
          unique_name: nil
        )
        end

        sig do
          override.returns(
            {
              date_created_at: Telnyx::RoomListParams::Filter::DateCreatedAt,
              date_updated_at: Telnyx::RoomListParams::Filter::DateUpdatedAt,
              unique_name: String
            }
          )
        end
        def to_hash
        end

        class DateCreatedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RoomListParams::Filter::DateCreatedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # ISO 8601 date for filtering rooms created on that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :eq

          sig { params(eq: Date).void }
          attr_writer :eq

          # ISO 8601 date for filtering rooms created on or after that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :gte

          sig { params(gte: Date).void }
          attr_writer :gte

          # ISO 8601 date for filtering rooms created on or before that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :lte

          sig { params(lte: Date).void }
          attr_writer :lte

          sig do
            params(eq: Date, gte: Date, lte: Date).returns(T.attached_class)
          end
          def self.new(
            # ISO 8601 date for filtering rooms created on that date.
            eq: nil,
            # ISO 8601 date for filtering rooms created on or after that date.
            gte: nil,
            # ISO 8601 date for filtering rooms created on or before that date.
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
                Telnyx::RoomListParams::Filter::DateUpdatedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # ISO 8601 date for filtering rooms updated on that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :eq

          sig { params(eq: Date).void }
          attr_writer :eq

          # ISO 8601 date for filtering rooms updated on or after that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :gte

          sig { params(gte: Date).void }
          attr_writer :gte

          # ISO 8601 date for filtering rooms updated on or before that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :lte

          sig { params(lte: Date).void }
          attr_writer :lte

          sig do
            params(eq: Date, gte: Date, lte: Date).returns(T.attached_class)
          end
          def self.new(
            # ISO 8601 date for filtering rooms updated on that date.
            eq: nil,
            # ISO 8601 date for filtering rooms updated on or after that date.
            gte: nil,
            # ISO 8601 date for filtering rooms updated on or before that date.
            lte: nil
          )
          end

          sig { override.returns({ eq: Date, gte: Date, lte: Date }) }
          def to_hash
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::RoomListParams::Page, Telnyx::Internal::AnyHash)
          end

        # The page number to load.
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # The size of the page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # The page number to load.
          number: nil,
          # The size of the page.
          size: nil
        )
        end

        sig { override.returns({ number: Integer, size: Integer }) }
        def to_hash
        end
      end
    end
  end
end
