# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Documents#update
    class DocumentUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::DocServiceDocument, nil]
      optional :data, -> { Telnyx::DocServiceDocument }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::DocServiceDocument]
    end
  end
end
