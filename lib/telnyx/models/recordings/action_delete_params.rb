# frozen_string_literal: true

module Telnyx
  module Models
    module Recordings
      # @see Telnyx::Resources::Recordings::Actions#delete
      class ActionDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute ids
        #   List of call recording IDs to delete.
        #
        #   @return [Array<String>]
        required :ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(ids:, request_options: {})
        #   @param ids [Array<String>] List of call recording IDs to delete.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
