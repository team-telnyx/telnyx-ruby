# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::Brand#delete
      class BrandDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
