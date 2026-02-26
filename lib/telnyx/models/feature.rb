# frozen_string_literal: true

module Telnyx
  module Models
    class Feature < Telnyx::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(name: nil)
      #   @param name [String]
    end
  end
end
