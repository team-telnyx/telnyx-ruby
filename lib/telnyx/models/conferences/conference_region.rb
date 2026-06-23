# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # Region where the conference data is located. Defaults to the region defined in
      # user's data locality settings (Europe or US).
      module ConferenceRegion
        extend Telnyx::Internal::Type::Enum

        AUSTRALIA = :Australia
        EUROPE = :Europe
        MIDDLE_EAST = :"Middle East"
        US = :US

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    ConferenceRegion = Conferences::ConferenceRegion
  end
end
