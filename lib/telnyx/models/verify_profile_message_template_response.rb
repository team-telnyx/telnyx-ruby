# frozen_string_literal: true

module Telnyx
  module Models
    class VerifyProfileMessageTemplateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute text
      #
      #   @return [String, nil]
      optional :text, String

      # @!method initialize(id: nil, text: nil)
      #   @param id [String]
      #   @param text [String]
    end
  end
end
