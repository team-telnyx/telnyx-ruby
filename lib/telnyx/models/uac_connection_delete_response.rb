# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UacConnections#delete
    class UacConnectionDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   A UAC (User Agent Client) Connection registers Telnyx to your PBX — the opposite
      #   of a standard SIP trunk, where the PBX registers to Telnyx. Use UAC when your
      #   PBX doesn’t support outbound SIP registration or you need Telnyx to maintain the
      #   registration.
      #
      #   @return [Telnyx::Models::UacConnection, nil]
      optional :data, -> { Telnyx::UacConnection }

      # @!method initialize(data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UacConnectionDeleteResponse} for more details.
      #
      #   @param data [Telnyx::Models::UacConnection] A UAC (User Agent Client) Connection registers Telnyx to your PBX — the opposite
    end
  end
end
