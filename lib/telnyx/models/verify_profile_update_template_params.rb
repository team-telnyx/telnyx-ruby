# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#update_template
    class VerifyProfileUpdateTemplateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute template_id
      #
      #   @return [String]
      required :template_id, String

      # @!attribute text
      #   The text content of the message template.
      #
      #   @return [String]
      required :text, String

      # @!method initialize(template_id:, text:, request_options: {})
      #   @param template_id [String]
      #
      #   @param text [String] The text content of the message template.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
