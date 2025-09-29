# frozen_string_literal: true

module Telnyx
  module Models
    module OperatorConnect
      # @see Telnyx::Resources::OperatorConnect::Actions#refresh
      class ActionRefreshResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute message
        #   A message describing the result of the operation
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute success
        #   Describes wether or not the operation was successful
        #
        #   @return [Boolean, nil]
        optional :success, Telnyx::Internal::Type::Boolean

        # @!method initialize(message: nil, success: nil)
        #   @param message [String] A message describing the result of the operation
        #
        #   @param success [Boolean] Describes wether or not the operation was successful
      end
    end
  end
end
