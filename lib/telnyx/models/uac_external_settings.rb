# frozen_string_literal: true

module Telnyx
  module Models
    class UacExternalSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute auth_username
      #   The authentication username used in SIP digest authentication. If not set, the
      #   Username value will be used.
      #
      #   @return [String, nil]
      optional :auth_username, String, nil?: true

      # @!attribute expiration_sec
      #   The registration interval, in seconds, indicating how often the system refreshes
      #   the SIP registration with the external SIP peer.
      #
      #   @return [Integer, nil]
      optional :expiration_sec, Integer, nil?: true

      # @!attribute from_user
      #   The user portion of the SIP From header used in outbound requests. This controls
      #   the caller identity presented to the external SIP peer.
      #
      #   @return [String, nil]
      optional :from_user, String, nil?: true

      # @!attribute outbound_proxy
      #   An optional SIP proxy used to route outbound requests before reaching the
      #   external SIP peer.
      #
      #   @return [String, nil]
      optional :outbound_proxy, String, nil?: true

      # @!attribute password
      #   The SIP password used for digest authentication with the external SIP peer.
      #
      #   @return [String, nil]
      optional :password, String

      # @!attribute proxy
      #   The SIP proxy address of the external SIP peer used for registrations and
      #   outbound call routing.
      #
      #   @return [String, nil]
      optional :proxy, String

      # @!attribute transport
      #   The transport protocol used for SIP signaling when communicating with the
      #   external SIP peer. One of UDP, TLS, or TCP.
      #
      #   @return [Symbol, Telnyx::Models::UacExternalSettings::Transport, nil]
      optional :transport, enum: -> { Telnyx::UacExternalSettings::Transport }, nil?: true

      # @!attribute username
      #   The SIP username used to authenticate with the external SIP peer for
      #   registrations and outbound calls. Must start with a letter or number and contain
      #   only letters, numbers, hyphens, and underscores.
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(auth_username: nil, expiration_sec: nil, from_user: nil, outbound_proxy: nil, password: nil, proxy: nil, transport: nil, username: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UacExternalSettings} for more details.
      #
      #   External SIP peer settings used by Telnyx when registering to your PBX and
      #   routing outbound calls.
      #
      #   @param auth_username [String, nil] The authentication username used in SIP digest authentication. If not set, the U
      #
      #   @param expiration_sec [Integer, nil] The registration interval, in seconds, indicating how often the system refreshes
      #
      #   @param from_user [String, nil] The user portion of the SIP From header used in outbound requests. This controls
      #
      #   @param outbound_proxy [String, nil] An optional SIP proxy used to route outbound requests before reaching the extern
      #
      #   @param password [String] The SIP password used for digest authentication with the external SIP peer.
      #
      #   @param proxy [String] The SIP proxy address of the external SIP peer used for registrations and outbou
      #
      #   @param transport [Symbol, Telnyx::Models::UacExternalSettings::Transport, nil] The transport protocol used for SIP signaling when communicating with the extern
      #
      #   @param username [String] The SIP username used to authenticate with the external SIP peer for registratio

      # The transport protocol used for SIP signaling when communicating with the
      # external SIP peer. One of UDP, TLS, or TCP.
      #
      # @see Telnyx::Models::UacExternalSettings#transport
      module Transport
        extend Telnyx::Internal::Type::Enum

        UDP = :UDP
        TLS = :TLS
        TCP = :TCP

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
