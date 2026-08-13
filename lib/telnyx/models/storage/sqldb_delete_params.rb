# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Sqldbs#delete
      class SqldbDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute force
        #   Delete the database even when functions still bind it. Their bindings stop
        #   resolving.
        #
        #   @return [Boolean, nil]
        optional :force, Telnyx::Internal::Type::Boolean

        # @!method initialize(id:, force: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Storage::SqldbDeleteParams} for more details.
        #
        #   @param id [String]
        #
        #   @param force [Boolean] Delete the database even when functions still bind it. Their bindings stop resol
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
