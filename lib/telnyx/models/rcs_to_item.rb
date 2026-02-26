# frozen_string_literal: true

module Telnyx
  module Models
    class RcsToItem < Telnyx::Internal::Type::BaseModel
      # @!attribute carrier
      #
      #   @return [String, nil]
      optional :carrier, String

      # @!attribute line_type
      #
      #   @return [String, nil]
      optional :line_type, String

      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!attribute status
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(carrier: nil, line_type: nil, phone_number: nil, status: nil)
      #   @param carrier [String]
      #   @param line_type [String]
      #   @param phone_number [String]
      #   @param status [String]
    end
  end
end
