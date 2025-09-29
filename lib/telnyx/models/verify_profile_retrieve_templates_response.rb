# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#retrieve_templates
    class VerifyProfileRetrieveTemplatesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::VerifyProfileRetrieveTemplatesResponse::Data>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::VerifyProfileRetrieveTemplatesResponse::Data] }

      # @!method initialize(data:)
      #   A list of Verify profile message templates
      #
      #   @param data [Array<Telnyx::Models::VerifyProfileRetrieveTemplatesResponse::Data>]

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
