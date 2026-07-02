# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Kvs#create
      class KvCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute name
        #   Namespace name. May contain lowercase letters, numbers, and hyphens only.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(name:, request_options: {})
        #   @param name [String] Namespace name. May contain lowercase letters, numbers, and hyphens only.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
