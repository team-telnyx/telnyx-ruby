# typed: strong

module Telnyx
  module Models
    class EmailDomainUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailDomainUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # DMARC policy for a sending domain. Drives the recommended \_dmarc.<domain> TXT
      # record. DMARC is advisory and never blocks sending. When omitted or null, the
      # domain uses the advisory default (v=DMARC1; p=none;
      # rua=mailto:dmarc@telnyx.com).
      sig { returns(T.nilable(Telnyx::EmailDmarcPolicy)) }
      attr_reader :dmarc_policy

      sig do
        params(dmarc_policy: T.nilable(Telnyx::EmailDmarcPolicy::OrHash)).void
      end
      attr_writer :dmarc_policy

      # Enable or disable inbound routing for this domain
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :inbound_enabled

      sig { params(inbound_enabled: T::Boolean).void }
      attr_writer :inbound_enabled

      sig { returns(T.nilable(Telnyx::DomainsTrackingSettings)) }
      attr_reader :tracking

      sig { params(tracking: Telnyx::DomainsTrackingSettings::OrHash).void }
      attr_writer :tracking

      sig do
        params(
          id: String,
          dmarc_policy: T.nilable(Telnyx::EmailDmarcPolicy::OrHash),
          inbound_enabled: T::Boolean,
          tracking: Telnyx::DomainsTrackingSettings::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # DMARC policy for a sending domain. Drives the recommended \_dmarc.<domain> TXT
        # record. DMARC is advisory and never blocks sending. When omitted or null, the
        # domain uses the advisory default (v=DMARC1; p=none;
        # rua=mailto:dmarc@telnyx.com).
        dmarc_policy: nil,
        # Enable or disable inbound routing for this domain
        inbound_enabled: nil,
        tracking: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            dmarc_policy: T.nilable(Telnyx::EmailDmarcPolicy),
            inbound_enabled: T::Boolean,
            tracking: Telnyx::DomainsTrackingSettings,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
