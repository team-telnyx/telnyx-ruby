# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#create_template
    class VerifyProfileCreateTemplateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute text
      #   The text content of the message template.
      #
      #   @return [String]
      required :text, String

      # @!method initialize(text:, request_options: {})
      #   @param text [String] The text content of the message template.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
