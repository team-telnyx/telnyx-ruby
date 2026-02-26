# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::SupportingDocuments#create
      class SupportingDocumentCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Portouts::PortOutSupportingDocument>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Portouts::PortOutSupportingDocument] }

        # @!method initialize(data: nil)
        #   @param data [Array<Telnyx::Models::Portouts::PortOutSupportingDocument>]
      end
    end
  end
end
