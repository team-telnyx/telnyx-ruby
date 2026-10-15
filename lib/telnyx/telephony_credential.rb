# frozen_string_literal: true

module Telnyx
  class TelephonyCredential < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete
    extend APIOperations::NestedResource
    ACTIONS = %w[activate deactivate].freeze

    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[actions #{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    # Manually create JSON response object from JWT when calling token
    def create_token(params = {}, opts = {})
      url = "#{resource_url}/token"
      resp, opts = request(:post, url, params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    # A WebRTC login token for this credential, minted locally with no
    # request to Telnyx. Same use as `create_token`: hand it to the WebRTC
    # SDK as `login_token`.
    #
    # The signing material (`kid`, `tel_token`, `signing_secret`) is read from
    # `token_material`, present on objects that came from `create`; an object
    # from `retrieve` or `list` fetches it once (see `fetch_token_material`).
    # Pass `token_material:` to mint from values stored earlier, with no
    # request at all.
    #
    # `ttl` is the token lifetime in seconds, 1..86400, default one hour.
    def to_jwt(ttl: AccessToken::DEFAULT_TTL, token_material: nil, opts: {})
      AccessToken.new(
        credential_id: id,
        user_id: self[:user_id],
        identity: self[:sip_username],
        expires_at: self[:expires_at],
        token_material: token_material || self[:token_material] || fetch_token_material(opts),
        ttl: ttl
      ).to_jwt
    end

    # `GET /v2/telephony_credentials/:id/token_material`, fetched once and
    # kept on this object. Treat the result like the SIP password.
    def fetch_token_material(opts = {})
      @fetch_token_material ||= begin
        resp, opts = request(:get, "#{resource_url}/token_material", {}, opts)
        Util.convert_to_telnyx_object(resp.data[:data] || resp.data, opts)
      end
    end

    # Additional action to list tags
    def self.tags(params = {}, opts = {})
      opts = Util.normalize_opts(opts)
      resp, opts = request(:get, "/v2/telephony_credentials/tags", params, opts)
      ListObject.construct_from(resp.data, opts)
    end

    OBJECT_NAME = "telephony_credential".freeze
  end
end
