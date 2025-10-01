# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#retrieve_templates
    class VerifyProfileRetrieveTemplatesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::VerifyProfileMessageTemplateResponse>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::VerifyProfileMessageTemplateResponse] }

      # @!method initialize(data:)
      #   A list of Verify profile message templates
      #
      #   @param data [Array<Telnyx::Models::VerifyProfileMessageTemplateResponse>]
    end
  end
end
