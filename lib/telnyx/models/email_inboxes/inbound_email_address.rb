# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      class InboundEmailAddress < Telnyx::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(email:, name: nil)
        #   @param email [String]
        #   @param name [String]
      end
    end
  end
end
