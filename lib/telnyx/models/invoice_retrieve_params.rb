# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Invoices#retrieve
    class InvoiceRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute action
      #   Invoice action
      #
      #   @return [Symbol, Telnyx::Models::InvoiceRetrieveParams::Action, nil]
      optional :action, enum: -> { Telnyx::InvoiceRetrieveParams::Action }

      # @!method initialize(action: nil, request_options: {})
      #   @param action [Symbol, Telnyx::Models::InvoiceRetrieveParams::Action] Invoice action
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Invoice action
      module Action
        extend Telnyx::Internal::Type::Enum

        JSON = :json
        LINK = :link

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
