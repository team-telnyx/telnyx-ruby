# frozen_string_literal: true

module Telnyx
  module Models
    class WhatsappLocation < Telnyx::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String, nil]
      optional :address, String

      # @!attribute latitude
      #
      #   @return [String, nil]
      optional :latitude, String

      # @!attribute longitude
      #
      #   @return [String, nil]
      optional :longitude, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(address: nil, latitude: nil, longitude: nil, name: nil)
      #   @param address [String]
      #   @param latitude [String]
      #   @param longitude [String]
      #   @param name [String]
    end
  end
end
