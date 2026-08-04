# frozen_string_literal: true

module Telnyx
  module Models
    module EmailMessages
      # @see Telnyx::Resources::EmailMessages::Recipients#retrieve
      class RecipientRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute email_id
        #
        #   @return [String]
        required :email_id, String

        # @!attribute recipient_id
        #
        #   @return [String]
        required :recipient_id, String

        # @!method initialize(email_id:, recipient_id:, request_options: {})
        #   @param email_id [String]
        #   @param recipient_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
