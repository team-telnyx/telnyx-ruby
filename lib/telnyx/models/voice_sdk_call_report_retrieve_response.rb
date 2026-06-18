# frozen_string_literal: true

module Telnyx
  module Models
    # @type [Telnyx::Internal::Type::Converter]
    VoiceSDKCallReportRetrieveResponse = Telnyx::Internal::Type::ArrayOf[-> { Telnyx::VoiceSDKCallReport }]
  end
end
