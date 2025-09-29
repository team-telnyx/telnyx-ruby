# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Texml#secrets
    class TexmlSecretsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute name
      #   Name used as a reference for the secret, if the name already exists within the
      #   account its value will be replaced
      #
      #   @return [String]
      required :name, String

      # @!attribute value
      #   Secret value which will be used when rendering the TeXML template
      #
      #   @return [String]
      required :value, String

      # @!method initialize(name:, value:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TexmlSecretsParams} for more details.
      #
      #   @param name [String] Name used as a reference for the secret, if the name already exists within the a
      #
      #   @param value [String] Secret value which will be used when rendering the TeXML template
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
