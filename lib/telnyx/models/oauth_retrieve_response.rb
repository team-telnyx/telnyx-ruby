# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuth#retrieve
    class OAuthRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::OAuthRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::OAuthRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::OAuthRetrieveResponse::Data]

      # @see Telnyx::Models::OAuthRetrieveResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute client_id
        #   Client ID
        #
        #   @return [String, nil]
        optional :client_id, String

        # @!attribute logo_uri
        #   URL of the client logo
        #
        #   @return [String, nil]
        optional :logo_uri, String, nil?: true

        # @!attribute name
        #   Client name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute policy_uri
        #   URL of the client's privacy policy
        #
        #   @return [String, nil]
        optional :policy_uri, String, nil?: true

        # @!attribute redirect_uri
        #   The redirect URI for this authorization
        #
        #   @return [String, nil]
        optional :redirect_uri, String

        # @!attribute requested_scopes
        #
        #   @return [Array<Telnyx::Models::OAuthRetrieveResponse::Data::RequestedScope>, nil]
        optional :requested_scopes,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::OAuthRetrieveResponse::Data::RequestedScope] }

        # @!attribute tos_uri
        #   URL of the client's terms of service
        #
        #   @return [String, nil]
        optional :tos_uri, String, nil?: true

        # @!attribute verified
        #   Whether the client is verified
        #
        #   @return [Boolean, nil]
        optional :verified, Telnyx::Internal::Type::Boolean

        # @!method initialize(client_id: nil, logo_uri: nil, name: nil, policy_uri: nil, redirect_uri: nil, requested_scopes: nil, tos_uri: nil, verified: nil)
        #   @param client_id [String] Client ID
        #
        #   @param logo_uri [String, nil] URL of the client logo
        #
        #   @param name [String] Client name
        #
        #   @param policy_uri [String, nil] URL of the client's privacy policy
        #
        #   @param redirect_uri [String] The redirect URI for this authorization
        #
        #   @param requested_scopes [Array<Telnyx::Models::OAuthRetrieveResponse::Data::RequestedScope>]
        #
        #   @param tos_uri [String, nil] URL of the client's terms of service
        #
        #   @param verified [Boolean] Whether the client is verified

        class RequestedScope < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Scope ID
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute description
          #   Scope description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute name
          #   Scope name
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(id: nil, description: nil, name: nil)
          #   @param id [String] Scope ID
          #
          #   @param description [String] Scope description
          #
          #   @param name [String] Scope name
        end
      end
    end
  end
end
