# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailTemplates#list
    class EmailTemplate < Telnyx::Models::EmailTemplateCommon
      # @!attribute subject
      #
      #   @return [String, nil]
      required :subject, String, nil?: true

      # @!method initialize(subject:)
      #   @param subject [String, nil]
    end
  end
end
