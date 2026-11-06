# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CalendarConnections#list
    class CalendarConnectionListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::CalendarConnection>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CalendarConnection] }

      # @!method initialize(data:)
      #   @param data [Array<Telnyx::Models::CalendarConnection>]
    end
  end
end
