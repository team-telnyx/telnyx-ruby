# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Texml#initiate_ai_call
    class TexmlInitiateAICallResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute call_sid
      #
      #   @return [String, nil]
      optional :call_sid, String

      # @!attribute from
      #
      #   @return [String, nil]
      optional :from, String

      # @!attribute status
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute to
      #
      #   @return [String, nil]
      optional :to, String

      # @!method initialize(call_sid: nil, from: nil, status: nil, to: nil)
      #   @param call_sid [String]
      #   @param from [String]
      #   @param status [String]
      #   @param to [String]
    end
  end
end
