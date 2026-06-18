# typed: strong

module Telnyx
  module Models
    VoiceSDKCallReportRetrieveResponse =
      T.let(
        Telnyx::Internal::Type::ArrayOf[Telnyx::VoiceSDKCallReport],
        Telnyx::Internal::Type::Converter
      )
  end
end
