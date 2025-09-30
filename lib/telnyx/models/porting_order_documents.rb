# frozen_string_literal: true

module Telnyx
  module Models
    class PortingOrderDocuments < Telnyx::Internal::Type::BaseModel
      # @!attribute invoice
      #   Returned ID of the submitted Invoice via the Documents endpoint
      #
      #   @return [String, nil]
      optional :invoice, String

      # @!attribute loa
      #   Returned ID of the submitted LOA via the Documents endpoint
      #
      #   @return [String, nil]
      optional :loa, String

      # @!method initialize(invoice: nil, loa: nil)
      #   Can be specified directly or via the `requirement_group_id` parameter.
      #
      #   @param invoice [String] Returned ID of the submitted Invoice via the Documents endpoint
      #
      #   @param loa [String] Returned ID of the submitted LOA via the Documents endpoint
    end
  end
end
