# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Kvs
        # @see Telnyx::Resources::Storage::Kvs::Keys#delete
        class KeyDeleteParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute key
          #
          #   @return [String]
          required :key, String

          # @!method initialize(id:, key:, request_options: {})
          #   @param id [String]
          #   @param key [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
