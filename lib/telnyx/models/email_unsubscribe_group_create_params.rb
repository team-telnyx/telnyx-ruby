# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailUnsubscribeGroups#create
    class EmailUnsubscribeGroupCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(name:, description: nil, request_options: {})
      #   @param name [String]
      #   @param description [String, nil]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
