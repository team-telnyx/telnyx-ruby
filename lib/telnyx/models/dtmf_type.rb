# frozen_string_literal: true

module Telnyx
  module Models
    # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
    # digits sent to Telnyx will be accepted in all formats.
    module DtmfType
      extend Telnyx::Internal::Type::Enum

      RFC_2833 = :"RFC 2833"
      INBAND = :Inband
      SIP_INFO = :"SIP INFO"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
