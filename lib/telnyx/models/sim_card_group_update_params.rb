# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardGroups#update
    class SimCardGroupUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute data_limit
      #   Upper limit on the amount of data the SIM cards, within the group, can use.
      #
      #   @return [Telnyx::Models::SimCardGroupUpdateParams::DataLimit, nil]
      optional :data_limit, -> { Telnyx::SimCardGroupUpdateParams::DataLimit }

      # @!attribute name
      #   A user friendly name for the SIM card group.
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(data_limit: nil, name: nil, request_options: {})
      #   @param data_limit [Telnyx::Models::SimCardGroupUpdateParams::DataLimit] Upper limit on the amount of data the SIM cards, within the group, can use.
      #
      #   @param name [String] A user friendly name for the SIM card group.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
