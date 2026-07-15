# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Cloudfs
        # @see Telnyx::Resources::Storage::Cloudfs::Actions#rotate_meta_token
        class ActionRotateMetaTokenParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute idempotency_key
          #
          #   @return [String]
          required :idempotency_key, String

          # @!method initialize(id:, idempotency_key:, request_options: {})
          #   @param id [String]
          #   @param idempotency_key [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
