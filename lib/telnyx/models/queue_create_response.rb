# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Queues#create
    class QueueCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::Queue, nil]
      optional :data, -> { Telnyx::Queue }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::Queue]
    end
  end
end
