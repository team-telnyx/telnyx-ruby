# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#update_template
    class VerifyProfileUpdateTemplateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::VerifyProfileUpdateTemplateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::VerifyProfileUpdateTemplateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::VerifyProfileUpdateTemplateResponse::Data]

      # @see Telnyx::Models::VerifyProfileUpdateTemplateResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
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
end
