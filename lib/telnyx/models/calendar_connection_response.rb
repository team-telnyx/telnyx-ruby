# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CalendarConnections#retrieve
    class CalendarConnectionResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CalendarConnection]
      required :data, -> { Telnyx::CalendarConnection }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::CalendarConnection]
    end
  end
end
