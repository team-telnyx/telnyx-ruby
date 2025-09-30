# typed: strong

module Telnyx
  module Models
    class SimCardGroupListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SimCardGroupListParams, Telnyx::Internal::AnyHash)
        end

      # A valid SIM card group name.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_name

      sig { params(filter_name: String).void }
      attr_writer :filter_name

      # A Private Wireless Gateway ID associated with the group.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_private_wireless_gateway_id

      sig { params(filter_private_wireless_gateway_id: String).void }
      attr_writer :filter_private_wireless_gateway_id

      # A Wireless Blocklist ID associated with the group.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_wireless_blocklist_id

      sig { params(filter_wireless_blocklist_id: String).void }
      attr_writer :filter_wireless_blocklist_id

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
          filter_private_wireless_gateway_id: String,
          filter_wireless_blocklist_id: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A valid SIM card group name.
        filter_name: nil,
        # A Private Wireless Gateway ID associated with the group.
        filter_private_wireless_gateway_id: nil,
        # A Wireless Blocklist ID associated with the group.
        filter_wireless_blocklist_id: nil,
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
            filter_private_wireless_gateway_id: String,
            filter_wireless_blocklist_id: String,
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
