# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::MigrationSources#create
      class MigrationSourceCreateParams < Telnyx::Models::Storage::MigrationSourceParams
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
