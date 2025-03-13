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
          # If the only key is the wrapper key (e.g., 'filter'), pass it through as is
          if filters.keys == [wrapper.to_sym] || filters.keys == [wrapper.to_s]
            super(filters, opts)
          else
            # Otherwise, wrap the parameters in the wrapper key
            super({ wrapper => filters }, opts)
          end
        end
      end
    end
  end
end
