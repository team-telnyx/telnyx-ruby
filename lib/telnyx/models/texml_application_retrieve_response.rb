# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TexmlApplications#retrieve
    class TexmlApplicationRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::TexmlApplication, nil]
      optional :data, -> { Telnyx::TexmlApplication }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::TexmlApplication]
    end
  end
end
