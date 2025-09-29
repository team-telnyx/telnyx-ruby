# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Jobs#update_emergency_settings_batch
      class JobUpdateEmergencySettingsBatchResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PhoneNumbers::PhoneNumbersJob, nil]
        optional :data, -> { Telnyx::PhoneNumbers::PhoneNumbersJob }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PhoneNumbers::PhoneNumbersJob]
      end
    end
  end
end
