# frozen_string_literal: true

module Telnyx
  module Models
    class UpdateEmailTemplateRequest < Telnyx::Internal::Type::BaseModel
      # @!attribute html_body
      #   Liquid template HTML body.
      #
      #   @return [String, nil]
      optional :html_body, String, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute subject
      #   Liquid template subject.
      #
      #   @return [String, nil]
      optional :subject, String, nil?: true

      # @!attribute text_body
      #   Liquid template text body.
      #
      #   @return [String, nil]
      optional :text_body, String, nil?: true

      # @!attribute variables
      #
      #   @return [Array<String>, nil]
      optional :variables, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(html_body: nil, name: nil, subject: nil, text_body: nil, variables: nil)
      #   @param html_body [String, nil] Liquid template HTML body.
      #
      #   @param name [String]
      #
      #   @param subject [String, nil] Liquid template subject.
      #
      #   @param text_body [String, nil] Liquid template text body.
      #
      #   @param variables [Array<String>]
    end
  end
end
