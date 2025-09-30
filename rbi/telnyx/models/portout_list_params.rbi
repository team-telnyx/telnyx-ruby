# typed: strong

module Telnyx
  module Models
    class PortoutListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PortoutListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[carrier_name], filter[country_code], filter[country_code_in],
      # filter[foc_date], filter[inserted_at], filter[phone_number], filter[pon],
      # filter[ported_out_at], filter[spid], filter[status], filter[status_in],
      # filter[support_key]
      sig { returns(T.nilable(Telnyx::PortoutListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::PortoutListParams::Filter::OrHash).void }
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::PortoutListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::PortoutListParams::Page::OrHash).void }
      attr_writer :page

      sig do
        params(
          filter: Telnyx::PortoutListParams::Filter::OrHash,
          page: Telnyx::PortoutListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[carrier_name], filter[country_code], filter[country_code_in],
        # filter[foc_date], filter[inserted_at], filter[phone_number], filter[pon],
        # filter[ported_out_at], filter[spid], filter[status], filter[status_in],
        # filter[support_key]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::PortoutListParams::Filter,
            page: Telnyx::PortoutListParams::Page,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::PortoutListParams::Filter, Telnyx::Internal::AnyHash)
          end

        # Filter by new carrier name.
        sig { returns(T.nilable(String)) }
        attr_reader :carrier_name

        sig { params(carrier_name: String).void }
        attr_writer :carrier_name

        # Filter by 2-letter country code
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Filter by a list of 2-letter country codes
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :country_code_in

        sig { params(country_code_in: T::Array[String]).void }
        attr_writer :country_code_in

        # Filter by foc_date. Matches all portouts with the same date
        sig { returns(T.nilable(Time)) }
        attr_reader :foc_date

        sig { params(foc_date: Time).void }
        attr_writer :foc_date

        # Filter by inserted_at date range using nested operations
        sig do
          returns(T.nilable(Telnyx::PortoutListParams::Filter::InsertedAt))
        end
        attr_reader :inserted_at

        sig do
          params(
            inserted_at: Telnyx::PortoutListParams::Filter::InsertedAt::OrHash
          ).void
        end
        attr_writer :inserted_at

        # Filter by a phone number on the portout. Matches all portouts with the phone
        # number
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Filter by Port Order Number (PON).
        sig { returns(T.nilable(String)) }
        attr_reader :pon

        sig { params(pon: String).void }
        attr_writer :pon

        # Filter by ported_out_at date range using nested operations
        sig do
          returns(T.nilable(Telnyx::PortoutListParams::Filter::PortedOutAt))
        end
        attr_reader :ported_out_at

        sig do
          params(
            ported_out_at:
              Telnyx::PortoutListParams::Filter::PortedOutAt::OrHash
          ).void
        end
        attr_writer :ported_out_at

        # Filter by new carrier spid.
        sig { returns(T.nilable(String)) }
        attr_reader :spid

        sig { params(spid: String).void }
        attr_writer :spid

        # Filter by portout status.
        sig do
          returns(
            T.nilable(Telnyx::PortoutListParams::Filter::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::PortoutListParams::Filter::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Filter by a list of portout statuses
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::PortoutListParams::Filter::StatusIn::OrSymbol]
            )
          )
        end
        attr_reader :status_in

        sig do
          params(
            status_in:
              T::Array[Telnyx::PortoutListParams::Filter::StatusIn::OrSymbol]
          ).void
        end
        attr_writer :status_in

        # Filter by the portout's support_key
        sig { returns(T.nilable(String)) }
        attr_reader :support_key

        sig { params(support_key: String).void }
        attr_writer :support_key

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[carrier_name], filter[country_code], filter[country_code_in],
        # filter[foc_date], filter[inserted_at], filter[phone_number], filter[pon],
        # filter[ported_out_at], filter[spid], filter[status], filter[status_in],
        # filter[support_key]
        sig do
          params(
            carrier_name: String,
            country_code: String,
            country_code_in: T::Array[String],
            foc_date: Time,
            inserted_at: Telnyx::PortoutListParams::Filter::InsertedAt::OrHash,
            phone_number: String,
            pon: String,
            ported_out_at:
              Telnyx::PortoutListParams::Filter::PortedOutAt::OrHash,
            spid: String,
            status: Telnyx::PortoutListParams::Filter::Status::OrSymbol,
            status_in:
              T::Array[Telnyx::PortoutListParams::Filter::StatusIn::OrSymbol],
            support_key: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by new carrier name.
          carrier_name: nil,
          # Filter by 2-letter country code
          country_code: nil,
          # Filter by a list of 2-letter country codes
          country_code_in: nil,
          # Filter by foc_date. Matches all portouts with the same date
          foc_date: nil,
          # Filter by inserted_at date range using nested operations
          inserted_at: nil,
          # Filter by a phone number on the portout. Matches all portouts with the phone
          # number
          phone_number: nil,
          # Filter by Port Order Number (PON).
          pon: nil,
          # Filter by ported_out_at date range using nested operations
          ported_out_at: nil,
          # Filter by new carrier spid.
          spid: nil,
          # Filter by portout status.
          status: nil,
          # Filter by a list of portout statuses
          status_in: nil,
          # Filter by the portout's support_key
          support_key: nil
        )
        end

        sig do
          override.returns(
            {
              carrier_name: String,
              country_code: String,
              country_code_in: T::Array[String],
              foc_date: Time,
              inserted_at: Telnyx::PortoutListParams::Filter::InsertedAt,
              phone_number: String,
              pon: String,
              ported_out_at: Telnyx::PortoutListParams::Filter::PortedOutAt,
              spid: String,
              status: Telnyx::PortoutListParams::Filter::Status::OrSymbol,
              status_in:
                T::Array[Telnyx::PortoutListParams::Filter::StatusIn::OrSymbol],
              support_key: String
            }
          )
        end
        def to_hash
        end

        class InsertedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortoutListParams::Filter::InsertedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by inserted_at date greater than or equal.
          sig { returns(T.nilable(Time)) }
          attr_reader :gte

          sig { params(gte: Time).void }
          attr_writer :gte

          # Filter by inserted_at date less than or equal.
          sig { returns(T.nilable(Time)) }
          attr_reader :lte

          sig { params(lte: Time).void }
          attr_writer :lte

          # Filter by inserted_at date range using nested operations
          sig { params(gte: Time, lte: Time).returns(T.attached_class) }
          def self.new(
            # Filter by inserted_at date greater than or equal.
            gte: nil,
            # Filter by inserted_at date less than or equal.
            lte: nil
          )
          end

          sig { override.returns({ gte: Time, lte: Time }) }
          def to_hash
          end
        end

        class PortedOutAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortoutListParams::Filter::PortedOutAt,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by ported_out_at date greater than or equal.
          sig { returns(T.nilable(Time)) }
          attr_reader :gte

          sig { params(gte: Time).void }
          attr_writer :gte

          # Filter by ported_out_at date less than or equal.
          sig { returns(T.nilable(Time)) }
          attr_reader :lte

          sig { params(lte: Time).void }
          attr_writer :lte

          # Filter by ported_out_at date range using nested operations
          sig { params(gte: Time, lte: Time).returns(T.attached_class) }
          def self.new(
            # Filter by ported_out_at date greater than or equal.
            gte: nil,
            # Filter by ported_out_at date less than or equal.
            lte: nil
          )
          end

          sig { override.returns({ gte: Time, lte: Time }) }
          def to_hash
          end
        end

        # Filter by portout status.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PortoutListParams::Filter::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::PortoutListParams::Filter::Status::TaggedSymbol
            )
          AUTHORIZED =
            T.let(
              :authorized,
              Telnyx::PortoutListParams::Filter::Status::TaggedSymbol
            )
          PORTED =
            T.let(
              :ported,
              Telnyx::PortoutListParams::Filter::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Telnyx::PortoutListParams::Filter::Status::TaggedSymbol
            )
          REJECTED_PENDING =
            T.let(
              :"rejected-pending",
              Telnyx::PortoutListParams::Filter::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              Telnyx::PortoutListParams::Filter::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::PortoutListParams::Filter::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module StatusIn
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PortoutListParams::Filter::StatusIn)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::PortoutListParams::Filter::StatusIn::TaggedSymbol
            )
          AUTHORIZED =
            T.let(
              :authorized,
              Telnyx::PortoutListParams::Filter::StatusIn::TaggedSymbol
            )
          PORTED =
            T.let(
              :ported,
              Telnyx::PortoutListParams::Filter::StatusIn::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Telnyx::PortoutListParams::Filter::StatusIn::TaggedSymbol
            )
          REJECTED_PENDING =
            T.let(
              :"rejected-pending",
              Telnyx::PortoutListParams::Filter::StatusIn::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              Telnyx::PortoutListParams::Filter::StatusIn::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortoutListParams::Filter::StatusIn::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::PortoutListParams::Page, Telnyx::Internal::AnyHash)
          end

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

        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # The page number to load
          number: nil,
          # The size of the page
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
