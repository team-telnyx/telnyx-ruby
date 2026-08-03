# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailTemplates#render
    class EmailTemplateRenderParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute template_variables
      #   Variables for Liquid template rendering. Non-object values are silently treated
      #   as an empty object.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :template_variables, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!method initialize(id:, template_variables: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailTemplateRenderParams} for more details.
      #
      #   @param id [String]
      #
      #   @param template_variables [Hash{Symbol=>Object}] Variables for Liquid template rendering. Non-object values are silently treated
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
