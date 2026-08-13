# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Sqldbs#create
      class SqldbCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute name
        #   Database name. Lowercase letters, numbers, and hyphens only; must start and end
        #   with a letter or number.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(name:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Storage::SqldbCreateParams} for more details.
        #
        #   @param name [String] Database name. Lowercase letters, numbers, and hyphens only; must start and end
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
