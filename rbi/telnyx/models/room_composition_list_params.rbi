# typed: strong

module Telnyx
  module Models
    class RoomCompositionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::RoomCompositionListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[date_created_at][eq], filter[date_created_at][gte],
      # filter[date_created_at][lte], filter[session_id], filter[status]
      sig { returns(T.nilable(Telnyx::RoomCompositionListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::RoomCompositionListParams::Filter::OrHash).void
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
          filter: Telnyx::RoomCompositionListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_created_at][eq], filter[date_created_at][gte],
        # filter[date_created_at][lte], filter[session_id], filter[status]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::RoomCompositionListParams::Filter,
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
              Telnyx::RoomCompositionListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Telnyx::RoomCompositionListParams::Filter::DateCreatedAt)
          )
        end
        attr_reader :date_created_at

        sig do
          params(
            date_created_at:
              Telnyx::RoomCompositionListParams::Filter::DateCreatedAt::OrHash
          ).void
        end
        attr_writer :date_created_at

        # The session_id for filtering room compositions.
        sig { returns(T.nilable(String)) }
        attr_reader :session_id

        sig { params(session_id: String).void }
        attr_writer :session_id

        # The status for filtering room compositions.
        sig do
          returns(
            T.nilable(
              Telnyx::RoomCompositionListParams::Filter::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::RoomCompositionListParams::Filter::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[date_created_at][eq], filter[date_created_at][gte],
        # filter[date_created_at][lte], filter[session_id], filter[status]
        sig do
          params(
            date_created_at:
              Telnyx::RoomCompositionListParams::Filter::DateCreatedAt::OrHash,
            session_id: String,
            status: Telnyx::RoomCompositionListParams::Filter::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          date_created_at: nil,
          # The session_id for filtering room compositions.
          session_id: nil,
          # The status for filtering room compositions.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              date_created_at:
                Telnyx::RoomCompositionListParams::Filter::DateCreatedAt,
              session_id: String,
              status:
                Telnyx::RoomCompositionListParams::Filter::Status::OrSymbol
            }
          )
        end
        def to_hash
        end

        class DateCreatedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RoomCompositionListParams::Filter::DateCreatedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # ISO 8601 date for filtering room compositions created on that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :eq

          sig { params(eq: Date).void }
          attr_writer :eq

          # ISO 8601 date for filtering room compositions created on or after that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :gte

          sig { params(gte: Date).void }
          attr_writer :gte

          # ISO 8601 date for filtering room compositions created on or before that date.
          sig { returns(T.nilable(Date)) }
          attr_reader :lte

          sig { params(lte: Date).void }
          attr_writer :lte

          sig do
            params(eq: Date, gte: Date, lte: Date).returns(T.attached_class)
          end
          def self.new(
            # ISO 8601 date for filtering room compositions created on that date.
            eq: nil,
            # ISO 8601 date for filtering room compositions created on or after that date.
            gte: nil,
            # ISO 8601 date for filtering room compositions created on or before that date.
            lte: nil
          )
          end

          sig { override.returns({ eq: Date, gte: Date, lte: Date }) }
          def to_hash
          end
        end

        # The status for filtering room compositions.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::RoomCompositionListParams::Filter::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPLETED =
            T.let(
              :completed,
              Telnyx::RoomCompositionListParams::Filter::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :processing,
              Telnyx::RoomCompositionListParams::Filter::Status::TaggedSymbol
            )
          ENQUEUED =
            T.let(
              :enqueued,
              Telnyx::RoomCompositionListParams::Filter::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::RoomCompositionListParams::Filter::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
