# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailTemplates#create
    class EmailTemplateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::EmailTemplate]
      required :data, -> { Telnyx::EmailTemplate }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::EmailTemplate]
    end
  end
end
