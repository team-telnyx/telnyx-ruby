# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BrowserSessions#create
    class BrowserSessionCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::Session, nil]
      optional :data, -> { Telnyx::Session }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::Session]
    end
  end
end
