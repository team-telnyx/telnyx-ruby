# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Porting#list_uk_carriers
    class PortingListUkCarriersResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::PortingListUkCarriersResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortingListUkCarriersResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::PortingListUkCarriersResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the UK carrier.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute alternative_cupids
        #   Alternative CUPIDs of the carrier.
        #
        #   @return [Array<String>, nil]
        optional :alternative_cupids, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute cupid
        #   The CUPID of the carrier. This is a 3 digit number code that identifies the
        #   carrier in the UK.
        #
        #   @return [String, nil]
        optional :cupid, String

        # @!attribute name
        #   The name of the carrier.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the resource was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(id: nil, alternative_cupids: nil, created_at: nil, cupid: nil, name: nil, record_type: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingListUkCarriersResponse::Data} for more details.
        #
        #   @param id [String] Identifies the UK carrier.
        #
        #   @param alternative_cupids [Array<String>] Alternative CUPIDs of the carrier.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param cupid [String] The CUPID of the carrier. This is a 3 digit number code that identifies the carr
        #
        #   @param name [String] The name of the carrier.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.
      end
    end
  end
end
