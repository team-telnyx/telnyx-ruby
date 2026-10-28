# frozen_string_literal: true

module Telnyx
  module Models
    module BrowserSessions
      # @see Telnyx::Resources::BrowserSessions::Actions#retrieve
      class ActionRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::BrowserSessions::ActionResponse, nil]
        optional :data, -> { Telnyx::BrowserSessions::ActionResponse }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::BrowserSessions::ActionResponse]
      end
    end
  end
end
