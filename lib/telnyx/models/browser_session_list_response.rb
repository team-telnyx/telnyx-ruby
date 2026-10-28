# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BrowserSessions#list
    class BrowserSessionListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::Session>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Session] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::Session>]
    end
  end
end
