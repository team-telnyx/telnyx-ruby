# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingHostedNumberOrders
      # @see Telnyx::Resources::MessagingHostedNumberOrders::Actions#upload_file
      class ActionUploadFileResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::MessagingHostedNumberOrder, nil]
        optional :data, -> { Telnyx::MessagingHostedNumberOrder }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::MessagingHostedNumberOrder]
      end
    end
  end
end
