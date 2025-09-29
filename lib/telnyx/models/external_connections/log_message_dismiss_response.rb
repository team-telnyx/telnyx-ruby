# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::LogMessages#dismiss
      class LogMessageDismissResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute success
        #   Describes wether or not the operation was successful
        #
        #   @return [Boolean, nil]
        optional :success, Telnyx::Internal::Type::Boolean

        # @!method initialize(success: nil)
        #   @param success [Boolean] Describes wether or not the operation was successful
      end
    end
  end
end
