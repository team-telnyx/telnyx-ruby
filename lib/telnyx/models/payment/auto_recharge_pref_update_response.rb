# frozen_string_literal: true

module Telnyx
  module Models
    module Payment
      # @see Telnyx::Resources::Payment::AutoRechargePrefs#update
      class AutoRechargePrefUpdateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Payment::AutoRechargePref, nil]
        optional :data, -> { Telnyx::Payment::AutoRechargePref }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Payment::AutoRechargePref]
      end
    end
  end
end
