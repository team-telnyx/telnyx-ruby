# frozen_string_literal: true

module Telnyx
  module Models
    module CredentialConnections
      # @see Telnyx::Resources::CredentialConnections::Actions#check_registration_status
      class ActionCheckRegistrationStatusParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
