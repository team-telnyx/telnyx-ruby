# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardGroups#list
    class SimCardGroupListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute consumed_data
      #   Represents the amount of data consumed.
      #
      #   @return [Telnyx::Models::ConsumedData, nil]
      optional :consumed_data, -> { Telnyx::ConsumedData }

      # @!attribute data_limit
      #   Upper limit on the amount of data the SIM cards, within the group, can use.
      #
      #   @return [Telnyx::Models::SimCardGroupListResponse::DataLimit, nil]
      optional :data_limit, -> { Telnyx::Models::SimCardGroupListResponse::DataLimit }

      # @!attribute name
      #   A user friendly name for the SIM card group.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute private_wireless_gateway_id
      #   The identification of the related Private Wireless Gateway resource.
      #
      #   @return [String, nil]
      optional :private_wireless_gateway_id, String

      # @!attribute sim_card_count
      #   The number of SIM cards associated with the group.
      #
      #   @return [Integer, nil]
      optional :sim_card_count, Integer

      # @!attribute wireless_blocklist_id
      #   The identification of the related Wireless Blocklist resource.
      #
      #   @return [String, nil]
      optional :wireless_blocklist_id, String

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

        # @!attribute default
        #   Indicates whether the SIM card group is the users default group.<br/>The default
        #   group is created for the user and can not be removed.
        #
        #   @return [Boolean, nil]
        optional :default, Telnyx::Internal::Type::Boolean

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute updated_at
        #   ISO 8601 formatted date-time indicating when the resource was updated.
        #
        #   @return [String, nil]
        optional :updated_at, String
      end

      # @!method initialize(id: nil, consumed_data: nil, created_at: nil, data_limit: nil, default: nil, name: nil, private_wireless_gateway_id: nil, record_type: nil, sim_card_count: nil, updated_at: nil, wireless_blocklist_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SimCardGroupListResponse} for more details.
      #
      #   @param id [String] Identifies the resource.
      #
      #   @param consumed_data [Telnyx::Models::ConsumedData] Represents the amount of data consumed.
      #
      #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
      #
      #   @param data_limit [Telnyx::Models::SimCardGroupListResponse::DataLimit] Upper limit on the amount of data the SIM cards, within the group, can use.
      #
      #   @param default [Boolean] Indicates whether the SIM card group is the users default group.<br/>The default
      #
      #   @param name [String] A user friendly name for the SIM card group.
      #
      #   @param private_wireless_gateway_id [String] The identification of the related Private Wireless Gateway resource.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param sim_card_count [Integer] The number of SIM cards associated with the group.
      #
      #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.
      #
      #   @param wireless_blocklist_id [String] The identification of the related Wireless Blocklist resource.

      # @see Telnyx::Models::SimCardGroupListResponse#data_limit
      class DataLimit < Telnyx::Internal::Type::BaseModel
        # @!attribute amount
        #
        #   @return [String, nil]
        optional :amount, String

        # @!attribute unit
        #
        #   @return [String, nil]
        optional :unit, String

        # @!method initialize(amount: nil, unit: nil)
        #   Upper limit on the amount of data the SIM cards, within the group, can use.
        #
        #   @param amount [String]
        #   @param unit [String]
      end
    end
  end
end
