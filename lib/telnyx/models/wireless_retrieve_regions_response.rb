# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Wireless#retrieve_regions
    class WirelessRetrieveRegionsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::WirelessRetrieveRegionsResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::WirelessRetrieveRegionsResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::WirelessRetrieveRegionsResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute code
        #   The unique code of the region.
        #
        #   @return [String]
        required :code, String

        # @!attribute name
        #   The name of the region.
        #
        #   @return [String]
        required :name, String

        # @!attribute inserted_at
        #   Timestamp when the region was inserted.
        #
        #   @return [Time, nil]
        optional :inserted_at, Time

        # @!attribute updated_at
        #   Timestamp when the region was last updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(code:, name:, inserted_at: nil, updated_at: nil)
        #   @param code [String] The unique code of the region.
        #
        #   @param name [String] The name of the region.
        #
        #   @param inserted_at [Time] Timestamp when the region was inserted.
        #
        #   @param updated_at [Time] Timestamp when the region was last updated.
      end
    end
  end
end
