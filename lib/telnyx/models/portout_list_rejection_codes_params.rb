# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Portouts#list_rejection_codes
    class PortoutListRejectionCodesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[code],
      #   filter[code][in]
      #
      #   @return [Telnyx::Models::PortoutListRejectionCodesParams::Filter, nil]
      optional :filter, -> { Telnyx::PortoutListRejectionCodesParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortoutListRejectionCodesParams} for more details.
      #
      #   @param filter [Telnyx::Models::PortoutListRejectionCodesParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[code], filt
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute code
        #   Filter rejections of a specific code
        #
        #   @return [Integer, Array<Integer>, nil]
        optional :code, union: -> { Telnyx::PortoutListRejectionCodesParams::Filter::Code }

        # @!method initialize(code: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[code],
        #   filter[code][in]
        #
        #   @param code [Integer, Array<Integer>] Filter rejections of a specific code

        # Filter rejections of a specific code
        #
        # @see Telnyx::Models::PortoutListRejectionCodesParams::Filter#code
        module Code
          extend Telnyx::Internal::Type::Union

          # Filter rejections of a specific code
          variant Integer

          # Filter rejections in a list of codes
          variant -> { Telnyx::Models::PortoutListRejectionCodesParams::Filter::Code::IntegerArray }

          # @!method self.variants
          #   @return [Array(Integer, Array<Integer>)]

          # @type [Telnyx::Internal::Type::Converter]
          IntegerArray = Telnyx::Internal::Type::ArrayOf[Integer]
        end
      end
    end
  end
end
