# frozen_string_literal: true

module Telnyx
  module Models
    # Specifies the codec to be used for the streamed audio. When set to 'default' or
    # when transcoding is not possible, the codec from the call will be used.
    module StreamCodec
      extend Telnyx::Internal::Type::Enum

      PCMU = :PCMU
      PCMA = :PCMA
      G722 = :G722
      OPUS = :OPUS
      AMR_WB = :"AMR-WB"
      L16 = :L16
      DEFAULT = :default

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
