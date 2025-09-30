# frozen_string_literal: true

module Telnyx
  module Models
    # Indicates codec for bidirectional streaming RTP payloads. Used only with
    # stream_bidirectional_mode=rtp. Case sensitive.
    module StreamBidirectionalCodec
      extend Telnyx::Internal::Type::Enum

      PCMU = :PCMU
      PCMA = :PCMA
      G722 = :G722
      OPUS = :OPUS
      AMR_WB = :"AMR-WB"
      L16 = :L16

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
