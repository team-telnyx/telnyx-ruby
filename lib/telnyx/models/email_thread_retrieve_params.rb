# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailThreads#retrieve
    class EmailThreadRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute thread_id
      #
      #   @return [String]
      required :thread_id, String

      # @!attribute inbox_id
      #   Inbox UUID that, together with `thread_id`, identifies the thread.
      #
      #   @return [String]
      required :inbox_id, String

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

      # @!method initialize(thread_id:, inbox_id:, page_after: nil, page_size: nil, request_options: {})
      #   @param thread_id [String]
      #
      #   @param inbox_id [String] Inbox UUID that, together with `thread_id`, identifies the thread.
      #
      #   @param page_after [String] Opaque message cursor returned by the previous thread-detail page.
      #
      #   @param page_size [Integer] Number of thread messages to return. Defaults to 25; maximum is 100.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
