# frozen_string_literal: true

module Telnyx
  module APIOperations
    # Adds methods to help manipulate a subresource from its parent resource so
    # that it's possible to do so from a static context (i.e. without a
    # pre-existing collection of subresources on the parent).
    #
    # For example, a transfer gains the static methods for reversals so that the
    # methods `.create_reversal`, `.retrieve_reversal`, `.update_reversal`,
    # etc. all become available.
    # rubocop:disable  Metrics/AbcSize
    # rubocop:disable  Metrics/MethodLength
    module NestedResource
      def nested_resource_class_methods(resource, path: nil, operations: nil, instance_methods: {})
        path ||= "#{resource}s"
        path = Array(path).map { |el| CGI.escape(el) }.join("/")
        raise ArgumentError, "operations array required" if operations.nil?

        resource_url_method = :"#{resource}s_url"
        define_singleton_method(resource_url_method) do |id, nested_id = nil|
          raise ArgumentError, "id is required" if id.nil?
          url = "#{resource_url}/#{CGI.escape(id)}/#{path}"
          url += "/#{CGI.escape(nested_id)}" unless nested_id.nil?
          url
        end

        # proxy class method to custom instance method
        define_instance_method = lambda do |target_name, operation|
          return unless instance_methods.keys.include? operation

          case operation
          when :create, :list
            define_method(instance_methods[operation] || target_name) do |*opts|
              self.class.send(target_name, id, *opts)
            end
          when :retrieve
            define_method(instance_methods[operation] || target_name) do |nested_id|
              self.class.send(target_name, id, nested_id)
            end
          when :update, :delete
            define_method(instance_methods[operation] || target_name) do |nested_id, *opts|
              self.class.send(target_name, id, nested_id, *opts)
            end
          end
        end

        operations.each do |operation|
          case operation
          when :create
            define_singleton_method(:"create_#{resource}") do |id, params = {}, opts = {}|
              url = send(resource_url_method, id)
              resp, opts = request(:post, url, params, opts)
              Util.convert_to_telnyx_object(resp.data, opts)
            end
            define_instance_method.call(:"create_#{resource}", operation)
          when :retrieve
            define_singleton_method(:"retrieve_#{resource}") do |id, nested_id, opts = {}|
              url = send(resource_url_method, id, nested_id)
              resp, opts = request(:get, url, {}, opts)
              Util.convert_to_telnyx_object(resp.data, opts)
            end
            define_instance_method.call(:"retrieve_#{resource}", operation)
          when :update
            define_singleton_method(:"update_#{resource}") do |id, nested_id, params = {}, opts = {}|
              url = send(resource_url_method, id, nested_id)
              resp, opts = request(:patch, url, params, opts)
              Util.convert_to_telnyx_object(resp.data, opts)
            end
            define_instance_method.call(:"update_#{resource}", operation)
          when :delete
            define_singleton_method(:"delete_#{resource}") do |id, nested_id, params = {}, opts = {}|
              url = send(resource_url_method, id, nested_id)
              resp, opts = request(:delete, url, params, opts)
              Util.convert_to_telnyx_object(resp.data, opts)
            end
            define_instance_method.call(:"delete_#{resource}", operation)
          when :list
            define_singleton_method(:"list_#{resource}s") do |id, params = {}, opts = {}|
              url = send(resource_url_method, id)
              resp, opts = request(:get, url, params, opts)
              Util.convert_to_telnyx_object(resp.data, opts)
            end
            define_instance_method.call(:"list_#{resource}s", operation)
          else
            raise ArgumentError, "Unknown operation: #{operation.inspect}"
          end
        end
      end
    end
  end
end
