# frozen_string_literal: true

module Telnyx
  module Models
    # Configures method of bidirectional streaming (mp3, rtp).
    module StreamBidirectionalMode
      extend Telnyx::Internal::Type::Enum

      MP3 = :mp3
      RTP = :rtp

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
