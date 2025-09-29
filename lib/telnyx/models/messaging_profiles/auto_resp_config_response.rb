# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingProfiles
      # @see Telnyx::Resources::MessagingProfiles::AutorespConfigs#create
      class AutoRespConfigResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::MessagingProfiles::AutoRespConfig]
        required :data, -> { Telnyx::MessagingProfiles::AutoRespConfig }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::MessagingProfiles::AutoRespConfig]
      end
    end
  end
end
