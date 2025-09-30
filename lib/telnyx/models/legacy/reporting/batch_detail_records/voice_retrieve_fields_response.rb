# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Voice#retrieve_fields
          class VoiceRetrieveFieldsResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute billing
            #   Cost and billing related information
            #
            #   @return [Array<String>, nil]
            optional :billing, Telnyx::Internal::Type::ArrayOf[String], api_name: :Billing

            # @!attribute interaction_data
            #   Fields related to call interaction and basic call information
            #
            #   @return [Array<String>, nil]
            optional :interaction_data, Telnyx::Internal::Type::ArrayOf[String], api_name: :"Interaction Data"

            # @!attribute number_information
            #   Geographic and routing information for phone numbers
            #
            #   @return [Array<String>, nil]
            optional :number_information,
                     Telnyx::Internal::Type::ArrayOf[String],
                     api_name: :"Number Information"

            # @!attribute telephony_data
            #   Technical telephony and call control information
            #
            #   @return [Array<String>, nil]
            optional :telephony_data, Telnyx::Internal::Type::ArrayOf[String], api_name: :"Telephony Data"

            # @!method initialize(billing: nil, interaction_data: nil, number_information: nil, telephony_data: nil)
            #   Available CDR report fields grouped by category
            #
            #   @param billing [Array<String>] Cost and billing related information
            #
            #   @param interaction_data [Array<String>] Fields related to call interaction and basic call information
            #
            #   @param number_information [Array<String>] Geographic and routing information for phone numbers
            #
            #   @param telephony_data [Array<String>] Technical telephony and call control information
          end
        end
      end
    end
  end
end
