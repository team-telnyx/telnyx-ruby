# typed: strong

module Telnyx
  module Models
    class FaxListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Telnyx::FaxListParams, Telnyx::Internal::AnyHash) }

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[created_at][gte], filter[created_at][gt], filter[created_at][lte],
      # filter[created_at][lt], filter[direction][eq], filter[from][eq], filter[to][eq]
      sig { returns(T.nilable(Telnyx::FaxListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::FaxListParams::Filter::OrHash).void }
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
          filter: Telnyx::FaxListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[created_at][gte], filter[created_at][gt], filter[created_at][lte],
        # filter[created_at][lt], filter[direction][eq], filter[from][eq], filter[to][eq]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::FaxListParams::Filter,
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
            T.any(Telnyx::FaxListParams::Filter, Telnyx::Internal::AnyHash)
          end

        # Date range filtering operations for fax creation timestamp
        sig { returns(T.nilable(Telnyx::FaxListParams::Filter::CreatedAt)) }
        attr_reader :created_at

        sig do
          params(
            created_at: Telnyx::FaxListParams::Filter::CreatedAt::OrHash
          ).void
        end
        attr_writer :created_at

        # Direction filtering operations
        sig { returns(T.nilable(Telnyx::FaxListParams::Filter::Direction)) }
        attr_reader :direction

        sig do
          params(
            direction: Telnyx::FaxListParams::Filter::Direction::OrHash
          ).void
        end
        attr_writer :direction

        # From number filtering operations
        sig { returns(T.nilable(Telnyx::FaxListParams::Filter::From)) }
        attr_reader :from

        sig { params(from: Telnyx::FaxListParams::Filter::From::OrHash).void }
        attr_writer :from

        # To number filtering operations
        sig { returns(T.nilable(Telnyx::FaxListParams::Filter::To)) }
        attr_reader :to

        sig { params(to: Telnyx::FaxListParams::Filter::To::OrHash).void }
        attr_writer :to

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[created_at][gte], filter[created_at][gt], filter[created_at][lte],
        # filter[created_at][lt], filter[direction][eq], filter[from][eq], filter[to][eq]
        sig do
          params(
            created_at: Telnyx::FaxListParams::Filter::CreatedAt::OrHash,
            direction: Telnyx::FaxListParams::Filter::Direction::OrHash,
            from: Telnyx::FaxListParams::Filter::From::OrHash,
            to: Telnyx::FaxListParams::Filter::To::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Date range filtering operations for fax creation timestamp
          created_at: nil,
          # Direction filtering operations
          direction: nil,
          # From number filtering operations
          from: nil,
          # To number filtering operations
          to: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Telnyx::FaxListParams::Filter::CreatedAt,
              direction: Telnyx::FaxListParams::Filter::Direction,
              from: Telnyx::FaxListParams::Filter::From,
              to: Telnyx::FaxListParams::Filter::To
            }
          )
        end
        def to_hash
        end

        class CreatedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::FaxListParams::Filter::CreatedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # ISO 8601 date time for filtering faxes created after that date
          sig { returns(T.nilable(Time)) }
          attr_reader :gt

          sig { params(gt: Time).void }
          attr_writer :gt

          # ISO 8601 date time for filtering faxes created after or on that date
          sig { returns(T.nilable(Time)) }
          attr_reader :gte

          sig { params(gte: Time).void }
          attr_writer :gte

          # ISO 8601 formatted date time for filtering faxes created before that date
          sig { returns(T.nilable(Time)) }
          attr_reader :lt

          sig { params(lt: Time).void }
          attr_writer :lt

          # ISO 8601 formatted date time for filtering faxes created on or before that date
          sig { returns(T.nilable(Time)) }
          attr_reader :lte

          sig { params(lte: Time).void }
          attr_writer :lte

          # Date range filtering operations for fax creation timestamp
          sig do
            params(gt: Time, gte: Time, lt: Time, lte: Time).returns(
              T.attached_class
            )
          end
          def self.new(
            # ISO 8601 date time for filtering faxes created after that date
            gt: nil,
            # ISO 8601 date time for filtering faxes created after or on that date
            gte: nil,
            # ISO 8601 formatted date time for filtering faxes created before that date
            lt: nil,
            # ISO 8601 formatted date time for filtering faxes created on or before that date
            lte: nil
          )
          end

          sig { override.returns({ gt: Time, gte: Time, lt: Time, lte: Time }) }
          def to_hash
          end
        end

        class Direction < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::FaxListParams::Filter::Direction,
                Telnyx::Internal::AnyHash
              )
            end

          # The direction, inbound or outbound, for filtering faxes sent from this account
          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          # Direction filtering operations
          sig { params(eq: String).returns(T.attached_class) }
          def self.new(
            # The direction, inbound or outbound, for filtering faxes sent from this account
            eq: nil
          )
          end

          sig { override.returns({ eq: String }) }
          def to_hash
          end
        end

        class From < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::FaxListParams::Filter::From,
                Telnyx::Internal::AnyHash
              )
            end

          # The phone number, in E.164 format for filtering faxes sent from this number
          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          # From number filtering operations
          sig { params(eq: String).returns(T.attached_class) }
          def self.new(
            # The phone number, in E.164 format for filtering faxes sent from this number
            eq: nil
          )
          end

          sig { override.returns({ eq: String }) }
          def to_hash
          end
        end

        class To < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::FaxListParams::Filter::To,
                Telnyx::Internal::AnyHash
              )
            end

          # The phone number, in E.164 format for filtering faxes sent to this number
          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          # To number filtering operations
          sig { params(eq: String).returns(T.attached_class) }
          def self.new(
            # The phone number, in E.164 format for filtering faxes sent to this number
            eq: nil
          )
          end

          sig { override.returns({ eq: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
