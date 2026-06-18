# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::AdditionalDocuments#create
      class AdditionalDocumentCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::PortingOrders::PortingAdditionalDocument>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::PortingAdditionalDocument] }

        # @!method initialize(data: nil)
        #   @param data [Array<Telnyx::Models::PortingOrders::PortingAdditionalDocument>]
      end
    end
  end
end
