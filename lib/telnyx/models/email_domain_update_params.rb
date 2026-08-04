# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailDomains#update
    class EmailDomainUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute dmarc_policy
      #   DMARC policy for a sending domain. Drives the recommended \_dmarc.<domain> TXT
      #   record. DMARC is advisory and never blocks sending. When omitted or null, the
      #   domain uses the advisory default (v=DMARC1; p=none;
      #   rua=mailto:dmarc@telnyx.com).
      #
      #   @return [Telnyx::Models::EmailDmarcPolicy, nil]
      optional :dmarc_policy, -> { Telnyx::EmailDmarcPolicy }, nil?: true

      # @!attribute inbound_enabled
      #   Enable or disable inbound routing for this domain
      #
      #   @return [Boolean, nil]
      optional :inbound_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute tracking
      #
      #   @return [Telnyx::Models::DomainsTrackingSettings, nil]
      optional :tracking, -> { Telnyx::DomainsTrackingSettings }

      # @!method initialize(id:, dmarc_policy: nil, inbound_enabled: nil, tracking: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailDomainUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param dmarc_policy [Telnyx::Models::EmailDmarcPolicy, nil] DMARC policy for a sending domain. Drives the recommended \_dmarc.<domain> TXT
      #   re
      #
      #   @param inbound_enabled [Boolean] Enable or disable inbound routing for this domain
      #
      #   @param tracking [Telnyx::Models::DomainsTrackingSettings]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
