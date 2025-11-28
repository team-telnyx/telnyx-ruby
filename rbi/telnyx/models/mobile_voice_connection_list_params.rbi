# typed: strong

module Telnyx
  module Models
    class MobileVoiceConnectionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MobileVoiceConnectionListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Filter by connection name containing the given string
      sig { returns(T.nilable(String)) }
      attr_reader :filter_connection_name_contains

      sig { params(filter_connection_name_contains: String).void }
      attr_writer :filter_connection_name_contains

      # The page number to load
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # The size of the page
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Sort by field (e.g., created_at, connection_name, active). Prefix with - for
      # descending order.
      sig { returns(T.nilable(String)) }
      attr_reader :sort

      sig { params(sort: String).void }
      attr_writer :sort

      sig do
        params(
          filter_connection_name_contains: String,
          page_number: Integer,
          page_size: Integer,
          sort: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by connection name containing the given string
        filter_connection_name_contains: nil,
        # The page number to load
        page_number: nil,
        # The size of the page
        page_size: nil,
        # Sort by field (e.g., created_at, connection_name, active). Prefix with - for
        # descending order.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter_connection_name_contains: String,
            page_number: Integer,
            page_size: Integer,
            sort: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
