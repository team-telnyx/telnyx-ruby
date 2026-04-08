# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      # @see Telnyx::Resources::Enterprises::Reputation#enable
      class ReputationEnableParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute enterprise_id
        #
        #   @return [String]
        required :enterprise_id, String

        # @!attribute loa_document_id
        #   ID of the signed Letter of Authorization (LOA) document uploaded to the document
        #   service
        #
        #   @return [String]
        required :loa_document_id, String

        # @!attribute check_frequency
        #   Frequency for automatically refreshing reputation data
        #
        #   @return [Symbol, Telnyx::Models::Enterprises::ReputationEnableParams::CheckFrequency, nil]
        optional :check_frequency, enum: -> { Telnyx::Enterprises::ReputationEnableParams::CheckFrequency }

        # @!method initialize(enterprise_id:, loa_document_id:, check_frequency: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Enterprises::ReputationEnableParams} for more details.
        #
        #   @param enterprise_id [String]
        #
        #   @param loa_document_id [String] ID of the signed Letter of Authorization (LOA) document uploaded to the document
        #
        #   @param check_frequency [Symbol, Telnyx::Models::Enterprises::ReputationEnableParams::CheckFrequency] Frequency for automatically refreshing reputation data
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Frequency for automatically refreshing reputation data
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
