# frozen_string_literal: true

module Telnyx
  module APIOperations
    # Intercepts request params passed to api operation methods and wraps them in a single param.
    # Usage:
    # class << self
    #   prepend Telnyx::ParamWrapper
    #   wrap :list, 'filter'
    # end
    module ParamWrapper
      protected

      def wrap(method_name, wrapper)
        define_singleton_method(method_name) do |filters = {}, opts = {}|
          return super(filters, opts) if filters.keys == [wrapper]

          filters = { wrapper => filters }
          super filters, opts
        end
      end
    end
  end
end
