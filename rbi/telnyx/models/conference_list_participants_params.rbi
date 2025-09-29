# typed: strong

module Telnyx
  module Models
    class ConferenceListParticipantsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceListParticipantsParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[muted],
      # filter[on_hold], filter[whispering]
      sig do
        returns(T.nilable(Telnyx::ConferenceListParticipantsParams::Filter))
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::ConferenceListParticipantsParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[after],
      # page[before], page[limit], page[size], page[number]
      sig { returns(T.nilable(Telnyx::ConferenceListParticipantsParams::Page)) }
      attr_reader :page

      sig do
        params(
          page: Telnyx::ConferenceListParticipantsParams::Page::OrHash
        ).void
      end
      attr_writer :page

      sig do
        params(
          filter: Telnyx::ConferenceListParticipantsParams::Filter::OrHash,
          page: Telnyx::ConferenceListParticipantsParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[muted],
        # filter[on_hold], filter[whispering]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[after],
        # page[before], page[limit], page[size], page[number]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::ConferenceListParticipantsParams::Filter,
            page: Telnyx::ConferenceListParticipantsParams::Page,
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
              Telnyx::ConferenceListParticipantsParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # If present, participants will be filtered to those who are/are not muted
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :muted

        sig { params(muted: T::Boolean).void }
        attr_writer :muted

        # If present, participants will be filtered to those who are/are not put on hold
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :on_hold

        sig { params(on_hold: T::Boolean).void }
        attr_writer :on_hold

        # If present, participants will be filtered to those who are whispering or are not
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :whispering

        sig { params(whispering: T::Boolean).void }
        attr_writer :whispering

        # Consolidated filter parameter (deepObject style). Originally: filter[muted],
        # filter[on_hold], filter[whispering]
        sig do
          params(
            muted: T::Boolean,
            on_hold: T::Boolean,
            whispering: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # If present, participants will be filtered to those who are/are not muted
          muted: nil,
          # If present, participants will be filtered to those who are/are not put on hold
          on_hold: nil,
          # If present, participants will be filtered to those who are whispering or are not
          whispering: nil
        )
        end

        sig do
          override.returns(
            { muted: T::Boolean, on_hold: T::Boolean, whispering: T::Boolean }
          )
        end
        def to_hash
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ConferenceListParticipantsParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        # Opaque identifier of next page
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Opaque identifier of previous page
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Limit of records per single page
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # The page number to load
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # The size of the page
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[after],
        # page[before], page[limit], page[size], page[number]
        sig do
          params(
            after: String,
            before: String,
            limit: Integer,
            number: Integer,
            size: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Opaque identifier of next page
          after: nil,
          # Opaque identifier of previous page
          before: nil,
          # Limit of records per single page
          limit: nil,
          # The page number to load
          number: nil,
          # The size of the page
          size: nil
        )
        end

        sig do
          override.returns(
            {
              after: String,
              before: String,
              limit: Integer,
              number: Integer,
              size: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
