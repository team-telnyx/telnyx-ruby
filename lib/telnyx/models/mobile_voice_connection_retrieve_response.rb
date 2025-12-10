# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobileVoiceConnections#retrieve
    class MobileVoiceConnectionRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MobileVoiceConnection, nil]
      optional :data, -> { Telnyx::MobileVoiceConnection }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MobileVoiceConnection]
    end
  end
end
