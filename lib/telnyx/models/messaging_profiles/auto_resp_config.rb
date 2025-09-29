# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingProfiles
      class AutoRespConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute country_code
        #
        #   @return [String]
        required :country_code, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute keywords
        #
        #   @return [Array<String>]
        required :keywords, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute op
        #
        #   @return [Symbol, Telnyx::Models::MessagingProfiles::AutoRespConfig::Op]
        required :op, enum: -> { Telnyx::MessagingProfiles::AutoRespConfig::Op }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute resp_text
        #
        #   @return [String, nil]
        optional :resp_text, String

        # @!method initialize(id:, country_code:, created_at:, keywords:, op:, updated_at:, resp_text: nil)
        #   @param id [String]
        #   @param country_code [String]
        #   @param created_at [Time]
        #   @param keywords [Array<String>]
        #   @param op [Symbol, Telnyx::Models::MessagingProfiles::AutoRespConfig::Op]
        #   @param updated_at [Time]
        #   @param resp_text [String]

        # @see Telnyx::Models::MessagingProfiles::AutoRespConfig#op
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
