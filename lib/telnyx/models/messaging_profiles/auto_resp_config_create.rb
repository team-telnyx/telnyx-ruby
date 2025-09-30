# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingProfiles
      class AutoRespConfigCreate < Telnyx::Internal::Type::BaseModel
        # @!attribute country_code
        #
        #   @return [String]
        required :country_code, String

        # @!attribute keywords
        #
        #   @return [Array<String>]
        required :keywords, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute op
        #
        #   @return [Symbol, Telnyx::Models::MessagingProfiles::AutoRespConfigCreate::Op]
        required :op, enum: -> { Telnyx::MessagingProfiles::AutoRespConfigCreate::Op }

        # @!attribute resp_text
        #
        #   @return [String, nil]
        optional :resp_text, String

        # @!method initialize(country_code:, keywords:, op:, resp_text: nil)
        #   @param country_code [String]
        #   @param keywords [Array<String>]
        #   @param op [Symbol, Telnyx::Models::MessagingProfiles::AutoRespConfigCreate::Op]
        #   @param resp_text [String]

        # @see Telnyx::Models::MessagingProfiles::AutoRespConfigCreate#op
        module Op
          extend Telnyx::Internal::Type::Enum

          START = :start
          STOP = :stop
          INFO = :info

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
