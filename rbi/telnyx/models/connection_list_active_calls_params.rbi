# typed: strong

module Telnyx
  module Models
    class ConnectionListActiveCallsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConnectionListActiveCallsParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated page parameter (deepObject style). Originally: page[after],
      # page[before], page[limit], page[size], page[number]
      sig { returns(T.nilable(Telnyx::ConnectionListActiveCallsParams::Page)) }
      attr_reader :page

      sig do
        params(page: Telnyx::ConnectionListActiveCallsParams::Page::OrHash).void
      end
      attr_writer :page

      sig do
        params(
          page: Telnyx::ConnectionListActiveCallsParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated page parameter (deepObject style). Originally: page[after],
        # page[before], page[limit], page[size], page[number]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            page: Telnyx::ConnectionListActiveCallsParams::Page,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ConnectionListActiveCallsParams::Page,
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
