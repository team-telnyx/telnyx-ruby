# typed: strong

module Telnyx
  module Models
    class OAuthGrantsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::OAuthGrantsResponse, Telnyx::Internal::AnyHash)
        end

      # Redirect URI with authorization code or error
      sig { returns(String) }
      attr_accessor :redirect_uri

      sig { params(redirect_uri: String).returns(T.attached_class) }
      def self.new(
        # Redirect URI with authorization code or error
        redirect_uri:
      )
      end

      sig { override.returns({ redirect_uri: String }) }
      def to_hash
      end
    end
  end
end
