# frozen_string_literal: true

module Telnyx
  module Models
    class TunnelWithToken < Telnyx::Models::Tunnel
      response_only do
        # @!attribute tunnel_token
        #   The credential that a tunnel process presents with
        #   `telnyx-edge tunnel run --token`. Returned only by create and rotate_token.
        #   Telnyx stores only a hash of it.
        #
        #   @return [String, nil]
        optional :tunnel_token, String
      end

      # @!method initialize(tunnel_token: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TunnelWithToken} for more details.
      #
      #   @param tunnel_token [String] The credential that a tunnel process presents with `telnyx-edge tunnel run --tok
    end
  end
end
