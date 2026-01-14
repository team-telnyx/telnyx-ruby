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

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Region where the conference data is located
      sig do
        returns(
          T.nilable(Telnyx::ConferenceListParticipantsParams::Region::OrSymbol)
        )
      end
      attr_reader :region

      sig do
        params(
          region: Telnyx::ConferenceListParticipantsParams::Region::OrSymbol
        ).void
      end
      attr_writer :region

      sig do
        params(
          filter: Telnyx::ConferenceListParticipantsParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          region: Telnyx::ConferenceListParticipantsParams::Region::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[muted],
        # filter[on_hold], filter[whispering]
        filter: nil,
        page_number: nil,
        page_size: nil,
        # Region where the conference data is located
        region: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::ConferenceListParticipantsParams::Filter,
            page_number: Integer,
            page_size: Integer,
            region: Telnyx::ConferenceListParticipantsParams::Region::OrSymbol,
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

      # Region where the conference data is located
      module Region
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::ConferenceListParticipantsParams::Region)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUSTRALIA =
          T.let(
            :Australia,
            Telnyx::ConferenceListParticipantsParams::Region::TaggedSymbol
          )
        EUROPE =
          T.let(
            :Europe,
            Telnyx::ConferenceListParticipantsParams::Region::TaggedSymbol
          )
        MIDDLE_EAST =
          T.let(
            :"Middle East",
            Telnyx::ConferenceListParticipantsParams::Region::TaggedSymbol
          )
        US =
          T.let(
            :US,
            Telnyx::ConferenceListParticipantsParams::Region::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::ConferenceListParticipantsParams::Region::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
