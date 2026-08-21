# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Remediation#create
        class RemediationRequestWrapped < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #   Full detail of a remediation request, returned on submit and GET by id.
          #
          #   @return [Telnyx::Models::Enterprises::Reputation::RemediationRequest]
          required :data, -> { Telnyx::Enterprises::Reputation::RemediationRequest }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::Enterprises::Reputation::RemediationRequest] Full detail of a remediation request, returned on submit and GET by id.
        end
      end
    end
  end
end
