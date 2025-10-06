# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#update_template
    class VerifyProfileUpdateTemplateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::VerifyProfileMessageTemplateResponse, nil]
      optional :data, -> { Telnyx::VerifyProfileMessageTemplateResponse }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::VerifyProfileMessageTemplateResponse]
    end
  end
end
