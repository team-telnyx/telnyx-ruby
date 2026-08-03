# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailDomains#list
    class EmailDomain < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute dkim
      #
      #   @return [Telnyx::Models::EmailDomain::Dkim]
      required :dkim, -> { Telnyx::EmailDomain::Dkim }

      # @!attribute dmarc_policy
      #   DMARC policy for a sending domain. Drives the recommended \_dmarc.<domain> TXT
      #   record. DMARC is advisory and never blocks sending. When omitted or null, the
      #   domain uses the advisory default (v=DMARC1; p=none;
      #   rua=mailto:dmarc@telnyx.com).
      #
      #   @return [Telnyx::Models::EmailDmarcPolicy, nil]
      required :dmarc_policy, -> { Telnyx::EmailDmarcPolicy }, nil?: true

      # @!attribute dns_records
      #
      #   @return [Array<Telnyx::Models::DNSRecord>]
      required :dns_records, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::DNSRecord] }

      # @!attribute domain
      #
      #   @return [String]
      required :domain, String

      # @!attribute inbound
      #
      #   @return [Telnyx::Models::EmailDomain::Inbound]
      required :inbound, -> { Telnyx::EmailDomain::Inbound }

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::EmailDomain::RecordType]
      required :record_type, enum: -> { Telnyx::EmailDomain::RecordType }

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::EmailDomainStatus]
      required :status, enum: -> { Telnyx::EmailDomainStatus }

      # @!attribute tracking
      #
      #   @return [Telnyx::Models::DomainsTrackingSettings]
      required :tracking, -> { Telnyx::DomainsTrackingSettings }

      # @!attribute type
      #   Domain type. `custom` domains are account-owned (BYOD). `shared` domains are
      #   Telnyx-managed, visible to and usable by ALL accounts for sending, but
      #   read-only: only the owning (system) account may modify, verify, or delete them;
      #   other accounts receive 403 (code 10008).
      #
      #   @return [Symbol, Telnyx::Models::EmailDomainType]
      required :type, enum: -> { Telnyx::EmailDomainType }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute usable_for_inbound
      #
      #   @return [Boolean]
      required :usable_for_inbound, Telnyx::Internal::Type::Boolean

      # @!attribute usable_for_sending
      #
      #   @return [Boolean]
      required :usable_for_sending, Telnyx::Internal::Type::Boolean

      # @!attribute verification
      #
      #   @return [Telnyx::Models::EmailDomainVerification]
      required :verification, -> { Telnyx::EmailDomainVerification }

      # @!attribute reputation
      #   Sender reputation for this domain (present on all domain responses).
      #
      #   @return [Telnyx::Models::EmailDomain::Reputation, nil]
      optional :reputation, -> { Telnyx::EmailDomain::Reputation }

      # @!attribute verified_at
      #
      #   @return [Time, nil]
      optional :verified_at, Time, nil?: true

      # @!method initialize(id:, created_at:, dkim:, dmarc_policy:, dns_records:, domain:, inbound:, record_type:, status:, tracking:, type:, updated_at:, usable_for_inbound:, usable_for_sending:, verification:, reputation: nil, verified_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailDomain} for more details.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param dkim [Telnyx::Models::EmailDomain::Dkim]
      #
      #   @param dmarc_policy [Telnyx::Models::EmailDmarcPolicy, nil] DMARC policy for a sending domain. Drives the recommended \_dmarc.<domain> TXT
      #   re
      #
      #   @param dns_records [Array<Telnyx::Models::DNSRecord>]
      #
      #   @param domain [String]
      #
      #   @param inbound [Telnyx::Models::EmailDomain::Inbound]
      #
      #   @param record_type [Symbol, Telnyx::Models::EmailDomain::RecordType]
      #
      #   @param status [Symbol, Telnyx::Models::EmailDomainStatus]
      #
      #   @param tracking [Telnyx::Models::DomainsTrackingSettings]
      #
      #   @param type [Symbol, Telnyx::Models::EmailDomainType] Domain type. `custom` domains are account-owned (BYOD). `shared` domains are Tel
      #
      #   @param updated_at [Time]
      #
      #   @param usable_for_inbound [Boolean]
      #
      #   @param usable_for_sending [Boolean]
      #
      #   @param verification [Telnyx::Models::EmailDomainVerification]
      #
      #   @param reputation [Telnyx::Models::EmailDomain::Reputation] Sender reputation for this domain (present on all domain responses).
      #
      #   @param verified_at [Time, nil]

      # @see Telnyx::Models::EmailDomain#dkim
      class Dkim < Telnyx::Internal::Type::BaseModel
        # @!attribute active
        #
        #   @return [Boolean]
        required :active, Telnyx::Internal::Type::Boolean

        # @!attribute algorithm
        #
        #   @return [Symbol, Telnyx::Models::EmailDomain::Dkim::Algorithm, nil]
        required :algorithm, enum: -> { Telnyx::EmailDomain::Dkim::Algorithm }, nil?: true

        # @!attribute key_length
        #
        #   @return [Integer, Telnyx::Models::EmailDomain::Dkim::KeyLength, nil]
        required :key_length, enum: -> { Telnyx::EmailDomain::Dkim::KeyLength }, nil?: true

        # @!attribute rotated_at
        #
        #   @return [Time, nil]
        required :rotated_at, Time, nil?: true

        # @!attribute selector
        #
        #   @return [String, nil]
        required :selector, String, nil?: true

        # @!method initialize(active:, algorithm:, key_length:, rotated_at:, selector:)
        #   @param active [Boolean]
        #   @param algorithm [Symbol, Telnyx::Models::EmailDomain::Dkim::Algorithm, nil]
        #   @param key_length [Integer, Telnyx::Models::EmailDomain::Dkim::KeyLength, nil]
        #   @param rotated_at [Time, nil]
        #   @param selector [String, nil]

        # @see Telnyx::Models::EmailDomain::Dkim#algorithm
        module Algorithm
          extend Telnyx::Internal::Type::Enum

          RSA_SHA256 = :"rsa-sha256"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::EmailDomain::Dkim#key_length
        module KeyLength
          extend Telnyx::Internal::Type::Enum

          KEY_LENGTH_2048 = 2048

          # @!method self.values
          #   @return [Array<Integer>]
        end
      end

      # @see Telnyx::Models::EmailDomain#inbound
      class Inbound < Telnyx::Internal::Type::BaseModel
        # @!attribute catch_all
        #
        #   @return [Boolean]
        required :catch_all, Telnyx::Internal::Type::Boolean

        # @!attribute enabled
        #
        #   @return [Boolean]
        required :enabled, Telnyx::Internal::Type::Boolean

        # @!attribute mx_required
        #
        #   @return [Boolean]
        required :mx_required, Telnyx::Internal::Type::Boolean

        # @!method initialize(catch_all:, enabled:, mx_required:)
        #   @param catch_all [Boolean]
        #   @param enabled [Boolean]
        #   @param mx_required [Boolean]
      end

      # @see Telnyx::Models::EmailDomain#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EMAIL_DOMAIN = :email_domain

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::EmailDomain#reputation
      class Reputation < Telnyx::Internal::Type::BaseModel
        # @!attribute band
        #   Reputation band, e.g. good/warn/poor.
        #
        #   @return [String, nil]
        optional :band, String

        # @!attribute breakdown
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :breakdown, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute computed_at
        #
        #   @return [Time, nil]
        optional :computed_at, Time, nil?: true

        # @!method initialize(band: nil, breakdown: nil, computed_at: nil)
        #   Sender reputation for this domain (present on all domain responses).
        #
        #   @param band [String] Reputation band, e.g. good/warn/poor.
        #
        #   @param breakdown [Hash{Symbol=>Object}]
        #
        #   @param computed_at [Time, nil]
      end
    end
  end
end
