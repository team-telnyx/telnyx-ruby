# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailUnsubscribeGroups#create
    class UnsubscribeGroupResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::UnsubscribeGroup]
      required :data, -> { Telnyx::UnsubscribeGroup }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::UnsubscribeGroup]
    end
  end
end
