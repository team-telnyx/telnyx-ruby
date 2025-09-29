# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#create_template
    class VerifyProfileCreateTemplateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::VerifyProfileCreateTemplateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::VerifyProfileCreateTemplateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::VerifyProfileCreateTemplateResponse::Data]

      # @see Telnyx::Models::VerifyProfileCreateTemplateResponse#data
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
