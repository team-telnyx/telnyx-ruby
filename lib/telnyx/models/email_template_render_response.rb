# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailTemplates#render
    class EmailTemplateRenderResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   Template object with `subject`, `html_body`, and `text_body` replaced by their
      #   Liquid-rendered values. All other template fields (id, name, variables, etc.)
      #   remain unchanged.
      #
      #   @return [Telnyx::Models::EmailTemplateRenderResponse::Data]
      required :data, -> { Telnyx::Models::EmailTemplateRenderResponse::Data }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailTemplateRenderResponse} for more details.
      #
      #   @param data [Telnyx::Models::EmailTemplateRenderResponse::Data] Template object with `subject`, `html_body`, and `text_body` replaced by their L

      # @see Telnyx::Models::EmailTemplateRenderResponse#data
      class Data < Telnyx::Models::EmailTemplate
        # @!method initialize
        #   Template object with `subject`, `html_body`, and `text_body` replaced by their
        #   Liquid-rendered values. All other template fields (id, name, variables, etc.)
        #   remain unchanged.
      end
    end
  end
end
