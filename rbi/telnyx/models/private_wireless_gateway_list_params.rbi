# typed: strong

module Telnyx
  module Models
    class PrivateWirelessGatewayListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PrivateWirelessGatewayListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Private Wireless Gateway resource creation date.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_created_at

      sig { params(filter_created_at: String).void }
      attr_writer :filter_created_at

      # The IP address range of the Private Wireless Gateway.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_ip_range

      sig { params(filter_ip_range: String).void }
      attr_writer :filter_ip_range

      # The name of the Private Wireless Gateway.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_name

      sig { params(filter_name: String).void }
      attr_writer :filter_name

      # The name of the region where the Private Wireless Gateway is deployed.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_region_code

      sig { params(filter_region_code: String).void }
      attr_writer :filter_region_code

      # When the Private Wireless Gateway was last updated.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_updated_at

      sig { params(filter_updated_at: String).void }
      attr_writer :filter_updated_at

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
          filter_created_at: String,
          filter_ip_range: String,
          filter_name: String,
          filter_region_code: String,
          filter_updated_at: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Private Wireless Gateway resource creation date.
        filter_created_at: nil,
        # The IP address range of the Private Wireless Gateway.
        filter_ip_range: nil,
        # The name of the Private Wireless Gateway.
        filter_name: nil,
        # The name of the region where the Private Wireless Gateway is deployed.
        filter_region_code: nil,
        # When the Private Wireless Gateway was last updated.
        filter_updated_at: nil,
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
            filter_created_at: String,
            filter_ip_range: String,
            filter_name: String,
            filter_region_code: String,
            filter_updated_at: String,
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
