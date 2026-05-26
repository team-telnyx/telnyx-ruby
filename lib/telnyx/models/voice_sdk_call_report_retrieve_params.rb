# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceSDKCallReports#retrieve
    class VoiceSDKCallReportRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute call_id
      #
      #   @return [String]
      required :call_id, String

      # @!method initialize(call_id:, request_options: {})
      #   @param call_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
