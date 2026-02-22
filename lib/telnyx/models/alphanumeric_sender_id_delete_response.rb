# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AlphanumericSenderIDs#delete
    class AlphanumericSenderIDDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::AlphanumericSenderID, nil]
      optional :data, -> { Telnyx::AlphanumericSenderID }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::AlphanumericSenderID]
    end
  end
end
