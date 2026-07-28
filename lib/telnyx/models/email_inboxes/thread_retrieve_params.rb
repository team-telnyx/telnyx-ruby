# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Threads#retrieve
      class ThreadRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute inbox_id
        #
        #   @return [String]
        required :inbox_id, String

        # @!attribute thread_id
        #
        #   @return [String]
        required :thread_id, String

        # @!attribute page_after
        #   Opaque message cursor returned by the previous thread-detail page.
        #
        #   @return [String, nil]
        optional :page_after, String

        # @!attribute page_size
        #   Number of thread messages to return. Defaults to 25; maximum is 100.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(inbox_id:, thread_id:, page_after: nil, page_size: nil, request_options: {})
        #   @param inbox_id [String]
        #
        #   @param thread_id [String]
        #
        #   @param page_after [String] Opaque message cursor returned by the previous thread-detail page.
        #
        #   @param page_size [Integer] Number of thread messages to return. Defaults to 25; maximum is 100.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
