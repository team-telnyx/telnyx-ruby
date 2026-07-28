# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailUnsubscribeGroups#update
    class EmailUnsubscribeGroupUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(id:, description: nil, name: nil, request_options: {})
      #   @param id [String]
      #   @param description [String, nil]
      #   @param name [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
