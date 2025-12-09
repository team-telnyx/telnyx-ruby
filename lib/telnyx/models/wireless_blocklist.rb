# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WirelessBlocklists#list
    class WirelessBlocklist < Telnyx::Internal::Type::BaseModel
      # @!attribute name
      #   The wireless blocklist name.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute type
      #   The type of the wireless blocklist.
      #
      #   @return [Symbol, Telnyx::Models::WirelessBlocklist::Type, nil]
      optional :type, enum: -> { Telnyx::WirelessBlocklist::Type }

      # @!attribute values
      #   Values to block. The values here depend on the `type` of Wireless Blocklist.
      #
      #   @return [Array<String>, nil]
      optional :values, Telnyx::Internal::Type::ArrayOf[String]

      response_only do
        # @!attribute id
        #   Identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute updated_at
        #   ISO 8601 formatted date-time indicating when the resource was updated.
        #
        #   @return [String, nil]
        optional :updated_at, String
      end

      # @!method initialize(id: nil, created_at: nil, name: nil, record_type: nil, type: nil, updated_at: nil, values: nil)
      #   @param id [String] Identifies the resource.
      #
      #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
      #
      #   @param name [String] The wireless blocklist name.
      #
      #   @param record_type [String]
      #
      #   @param type [Symbol, Telnyx::Models::WirelessBlocklist::Type] The type of the wireless blocklist.
      #
      #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.
      #
      #   @param values [Array<String>] Values to block. The values here depend on the `type` of Wireless Blocklist.

      # The type of the wireless blocklist.
      #
      # @see Telnyx::Models::WirelessBlocklist#type
      module Type
        extend Telnyx::Internal::Type::Enum

        COUNTRY = :country
        MCC = :mcc
        PLMN = :plmn

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
