# frozen_string_literal: true

module Telnyx
  class APIResource < TelnyxObject
    include Telnyx::APIOperations::Request

    # A flag that can be set a behavior that will cause this resource to be
    # encoded and sent up along with an update of its parent resource. This is
    # usually not desirable because resources are updated individually on their
    # own endpoints, but there are certain cases where this is allowed.
    attr_accessor :save_with_parent

    class << self
      def inherited(subclass)
        super
        @descendants ||= []
        @descendants << subclass
      end

      attr_reader :descendants
    end

    def self.class_name
      name.split("::")[-1]
    end

    def self.resource_url(inner_id = nil)
      if self == APIResource
        raise NotImplementedError, "APIResource is an abstract class. You should perform actions on its subclasses"
      end
      # Namespaces are separated in object names with periods (.) and in URLs
      # with forward slashes (/), so replace the former with the latter.
      return "/v2/#{resource_path(inner_id)}" if respond_to?("resource_path")
      return "/v2/#{self::RESOURCE_PATH}" if const_defined?("RESOURCE_PATH")

      object_name = self::OBJECT_NAME.downcase
      keywords = %w[generate summarize global_ip_usage global_ip_latency global_ip_assignment_usage global_ip_assignment_health sub_request campaign]
      url_segment = object_name.tr(".", "/")
      keywords.any? { |keyword| url_segment.include?(keyword) } ? "/v2/#{url_segment}" : "/v2/#{url_segment}s"
    end

    def self.identified_resource_url(id)
      return "/v2/#{resource_path(id)}" if respond_to?("resource_path")

      "#{resource_url}/#{CGI.escape(id)}"
    end

    # A metaprogramming call that specifies that a field of a resource can be
    # its own type of API resource (say a nested card under an account for
    # example), and if that resource is set, it should be transmitted to the
    # API on a create or update. Doing so is not the default behavior because
    # API resources should normally be persisted on their own RESTful
    # endpoints.
    def self.save_nested_resource(name)
      define_method(:"#{name}=") do |value|
        super(value)

        # The parent setter will perform certain useful operations like
        # converting to an APIResource if appropriate. Refresh our argument
        # value to whatever it mutated to.
        value = send(name)

        # Note that the value may be subresource, but could also be a scalar
        # (like a tokenized card's ID for example), so we check the type before
        # setting #save_with_parent here.
        value.save_with_parent = true if value.is_a?(APIResource)

        value
      end
    end

    def resource_url
      unless (id = self["id"])
        raise InvalidRequestError, "Could not determine which URL to request: #{self.class} instance has invalid ID: #{id.inspect}"
      end
      return self.class.resource_url(id).to_s if self.class.respond_to?("resource_path") # Use resource_path defined paths

      "#{self.class.resource_url}/#{CGI.escape(id)}"
    end

    def refresh
      resp, opts = request(:get, resource_url, @retrieve_params, @opts)
      initialize_from(resp.data[:data], opts)
    end

    def self.retrieve(id, opts = {})
      opts = Util.normalize_opts(opts)
      instance = new(id, **opts)
      instance.refresh
      instance
    end
  end
end
