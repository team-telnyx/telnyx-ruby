# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::ExternalVerification#create
        class ExternalVerificationWrapped < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Enterprises::Reputation::ReputationExternalVerification]
          required :data, -> { Telnyx::Enterprises::Reputation::ReputationExternalVerification }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::Enterprises::Reputation::ReputationExternalVerification]
        end
      end
    end
  end
end
