# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      class Location < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute additional_info
        #
        #   @return [String, nil]
        optional :additional_info, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute is_default
        #   Represents whether the location is the default or not.
        #
        #   @return [Boolean, nil]
        optional :is_default, Telnyx::Internal::Type::Boolean

        # @!method initialize(id: nil, additional_info: nil, description: nil, is_default: nil)
        #   @param id [String] Uniquely identifies the resource.
        #
        #   @param additional_info [String]
        #
        #   @param description [String]
        #
        #   @param is_default [Boolean] Represents whether the location is the default or not.
      end
    end
  end
end
