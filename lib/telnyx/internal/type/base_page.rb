# frozen_string_literal: true

module Telnyx
  module Internal
    module Type
      # @api private
      #
      # @generic Elem
      #
      # This module provides a base implementation for paginated responses in the SDK.
      module BasePage
        # rubocop:disable Lint/UnusedMethodArgument

        # @api public
        #
        # @return [Boolean]
        def next_page? = (raise NotImplementedError)

        # @api public
        #
        # @raise [Telnyx::Errors::APIError]
        # @return [self]
        def next_page = (raise NotImplementedError)

        # @api public
        #
        # @param blk [Proc]
        #
        # @yieldparam [generic<Elem>]
        # @return [void]
        def auto_paging_each(&blk) = (raise NotImplementedError)

        # @return [Enumerable<generic<Elem>>]
        def to_enum = super(:auto_paging_each)

        alias_method :enum_for, :to_enum

        # @api private
        #
        # @param client [Telnyx::Internal::Transport::BaseClient]
        # @param req [Hash{Symbol=>Object}]
        # @param headers [Hash{String=>String}]
        # @param page_data [Object]
        def initialize(client:, req:, headers:, page_data:)
          @client = client
          @req = req
          @model = req.fetch(:model)
          super()
        end

        # rubocop:enable Lint/UnusedMethodArgument
      end
    end
  end
end
