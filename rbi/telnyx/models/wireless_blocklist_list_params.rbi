# typed: strong

module Telnyx
  module Models
    class WirelessBlocklistListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::WirelessBlocklistListParams, Telnyx::Internal::AnyHash)
        end

      # The name of the Wireless Blocklist.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_name

      sig { params(filter_name: String).void }
      attr_writer :filter_name

      # When the Private Wireless Gateway was last updated.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_type

      sig { params(filter_type: String).void }
      attr_writer :filter_type

      # Values to filter on (inclusive).
      sig { returns(T.nilable(String)) }
      attr_reader :filter_values

      sig { params(filter_values: String).void }
      attr_writer :filter_values

      # The page number to load.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # The size of the page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter_name: String,
          filter_type: String,
          filter_values: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the Wireless Blocklist.
        filter_name: nil,
        # When the Private Wireless Gateway was last updated.
        filter_type: nil,
        # Values to filter on (inclusive).
        filter_values: nil,
        # The page number to load.
        page_number: nil,
        # The size of the page.
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter_name: String,
            filter_type: String,
            filter_values: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
