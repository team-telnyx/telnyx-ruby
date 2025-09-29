# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardGroups#create
    class SimCardGroupCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute name
      #   A user friendly name for the SIM card group.
      #
      #   @return [String]
      required :name, String

      # @!attribute data_limit
      #   Upper limit on the amount of data the SIM cards, within the group, can use.
      #
      #   @return [Telnyx::Models::SimCardGroupCreateParams::DataLimit, nil]
      optional :data_limit, -> { Telnyx::SimCardGroupCreateParams::DataLimit }

      # @!method initialize(name:, data_limit: nil, request_options: {})
      #   @param name [String] A user friendly name for the SIM card group.
      #
      #   @param data_limit [Telnyx::Models::SimCardGroupCreateParams::DataLimit] Upper limit on the amount of data the SIM cards, within the group, can use.
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
