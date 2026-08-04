# frozen_string_literal: true

module Telnyx
  module Models
    class EmailDmarcPolicy < Telnyx::Internal::Type::BaseModel
      # @!attribute p_
      #   Policy applied to messages that fail alignment.
      #
      #   @return [Symbol, Telnyx::Models::EmailDmarcPolicy::P, nil]
      optional :p_, enum: -> { Telnyx::EmailDmarcPolicy::P }, api_name: :p

      # @!attribute pct
      #   Percentage of messages the policy applies to. Omitted from the record when 100.
      #
      #   @return [Integer, nil]
      optional :pct, Integer

      # @!attribute rua
      #   URI for aggregate reports. Defaults to the Telnyx address when absent; null
      #   omits it.
      #
      #   @return [String, nil]
      optional :rua, String, nil?: true

      # @!attribute sp
      #   Policy for subdomains. Omitted from the record when null.
      #
      #   @return [Symbol, Telnyx::Models::EmailDmarcPolicy::Sp, nil]
      optional :sp, enum: -> { Telnyx::EmailDmarcPolicy::Sp }, nil?: true

      # @!method initialize(p_: nil, pct: nil, rua: nil, sp: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailDmarcPolicy} for more details.
      #
      #   DMARC policy for a sending domain. Drives the recommended \_dmarc.<domain> TXT
      #   record. DMARC is advisory and never blocks sending. When omitted or null, the
      #   domain uses the advisory default (v=DMARC1; p=none;
      #   rua=mailto:dmarc@telnyx.com).
      #
      #   @param p_ [Symbol, Telnyx::Models::EmailDmarcPolicy::P] Policy applied to messages that fail alignment.
      #
      #   @param pct [Integer] Percentage of messages the policy applies to. Omitted from the record when 100.
      #
      #   @param rua [String, nil] URI for aggregate reports. Defaults to the Telnyx address when absent; null omit
      #
      #   @param sp [Symbol, Telnyx::Models::EmailDmarcPolicy::Sp, nil] Policy for subdomains. Omitted from the record when null.

      # Policy applied to messages that fail alignment.
      #
      # @see Telnyx::Models::EmailDmarcPolicy#p_
      module P
        extend Telnyx::Internal::Type::Enum

        NONE = :none
        QUARANTINE = :quarantine
        REJECT = :reject

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Policy for subdomains. Omitted from the record when null.
      #
      # @see Telnyx::Models::EmailDmarcPolicy#sp
      module Sp
        extend Telnyx::Internal::Type::Enum

        NONE = :none
        QUARANTINE = :quarantine
        REJECT = :reject

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
