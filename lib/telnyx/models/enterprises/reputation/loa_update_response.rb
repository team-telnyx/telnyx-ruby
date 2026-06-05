# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Loa#update
        class LoaUpdateResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Enterprises::EnterpriseReputationPublic]
          required :data, -> { Telnyx::Enterprises::EnterpriseReputationPublic }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::Enterprises::EnterpriseReputationPublic]
        end
      end
    end
  end
end
