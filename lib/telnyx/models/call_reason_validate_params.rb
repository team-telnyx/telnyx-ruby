# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CallReasons#validate
    class CallReasonValidateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute body
      #   **Bare JSON array** of candidate call-reason strings (NOT an object - there is
      #   no top-level `call_reasons` key on this endpoint). 1–10 strings, each ≤64
      #   characters.
      #
      #   @return [Array<String>]
      required :body, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(body:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CallReasonValidateParams} for more details.
      #
      #   @param body [Array<String>] **Bare JSON array** of candidate call-reason strings (NOT an object - there is n
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
