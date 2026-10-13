# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailTemplates#render
    class EmailTemplateRenderResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   Template object with `subject`, `html_body`, and `text_body` replaced by their
      #   Liquid-rendered values. Rendered content is not limited by the stored
      #   template-field lengths. All other template fields remain unchanged.
      #
      #   @return [Telnyx::Models::EmailTemplateRenderResponse::Data]
      required :data, -> { Telnyx::Models::EmailTemplateRenderResponse::Data }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailTemplateRenderResponse} for more details.
      #
      #   @param data [Telnyx::Models::EmailTemplateRenderResponse::Data] Template object with `subject`, `html_body`, and `text_body` replaced by their L

      # @see Telnyx::Models::EmailTemplateRenderResponse#data
      class Data < Telnyx::Models::EmailTemplateCommon
        # @!attribute subject
        #
        #   @return [String, nil]
        required :subject, String, nil?: true

        # @!method initialize(subject:)
        #   Template object with `subject`, `html_body`, and `text_body` replaced by their
        #   Liquid-rendered values. Rendered content is not limited by the stored
        #   template-field lengths. All other template fields remain unchanged.
        #
        #   @param subject [String, nil]
      end
    end
  end
end
