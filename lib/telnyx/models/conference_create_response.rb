# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Conferences#create
    class ConferenceCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::Conference, nil]
      optional :data, -> { Telnyx::Conference }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::Conference]
    end
  end
end
