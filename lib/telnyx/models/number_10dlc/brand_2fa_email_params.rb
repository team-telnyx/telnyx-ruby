# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      # @see Telnyx::Resources::Number10dlc::Brand#number_2fa_email
      class Brand2faEmailParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
