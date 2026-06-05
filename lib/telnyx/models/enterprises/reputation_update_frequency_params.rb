# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      # @see Telnyx::Resources::Enterprises::Reputation#update_frequency
      class ReputationUpdateFrequencyParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute enterprise_id
        #
        #   @return [String]
        required :enterprise_id, String

        # @!attribute check_frequency
        #   How often Telnyx refreshes the stored reputation data for this enterprise's
        #   registered numbers.
        #
        #   @return [Symbol, Telnyx::Models::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency]
        required :check_frequency,
                 enum: -> { Telnyx::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency }

        # @!method initialize(enterprise_id:, check_frequency:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Enterprises::ReputationUpdateFrequencyParams} for more details.
        #
        #   @param enterprise_id [String]
        #
        #   @param check_frequency [Symbol, Telnyx::Models::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency] How often Telnyx refreshes the stored reputation data for this enterprise's regi
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # How often Telnyx refreshes the stored reputation data for this enterprise's
        # registered numbers.
        module CheckFrequency
          extend Telnyx::Internal::Type::Enum

          BUSINESS_DAILY = :business_daily
          DAILY = :daily
          WEEKLY = :weekly
          BIWEEKLY = :biweekly
          MONTHLY = :monthly
          NEVER = :never

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
