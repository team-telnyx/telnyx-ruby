# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingOrders#retrieve_loa_template
    class PortingOrderRetrieveLoaTemplateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute loa_configuration_id
      #   The identifier of the LOA configuration to use for the template. If not
      #   provided, the default LOA configuration will be used.
      #
      #   @return [String, nil]
      optional :loa_configuration_id, String

      # @!method initialize(loa_configuration_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortingOrderRetrieveLoaTemplateParams} for more details.
      #
      #   @param loa_configuration_id [String] The identifier of the LOA configuration to use for the template. If not provided
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
