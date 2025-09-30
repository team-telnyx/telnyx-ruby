# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Migrations
        # @see Telnyx::Resources::Storage::Migrations::Actions#stop
        class ActionStopParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
