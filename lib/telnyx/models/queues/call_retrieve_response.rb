# frozen_string_literal: true

module Telnyx
  module Models
    module Queues
      # @see Telnyx::Resources::Queues::Calls#retrieve
      class CallRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Queues::QueueCall, nil]
        optional :data, -> { Telnyx::Queues::QueueCall }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Queues::QueueCall]
      end
    end
  end
end
