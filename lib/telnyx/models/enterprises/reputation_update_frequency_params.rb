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
        #   New frequency for refreshing reputation data
        #
        #   @return [Symbol, Telnyx::Models::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency]
        required :check_frequency,
                 enum: -> { Telnyx::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency }

        # @!method initialize(enterprise_id:, check_frequency:, request_options: {})
        #   @param enterprise_id [String]
        #
        #   @param check_frequency [Symbol, Telnyx::Models::Enterprises::ReputationUpdateFrequencyParams::CheckFrequency] New frequency for refreshing reputation data
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # New frequency for refreshing reputation data
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
