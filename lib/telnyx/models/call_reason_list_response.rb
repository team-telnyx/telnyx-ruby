# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CallReasons#list
    class CallReasonListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute reason
      #
      #   @return [String, nil]
      optional :reason, String

      response_only do
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String
      end

      # @!method initialize(id: nil, description: nil, reason: nil)
      #   Pre-vetted call-reason library entry.
      #
      #   @param id [String]
      #   @param description [String]
      #   @param reason [String]
    end
  end
end
