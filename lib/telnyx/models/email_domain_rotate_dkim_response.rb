# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailDomains#rotate_dkim
    class EmailDomainRotateDkimResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   Result of rotating a domain's DKIM key. The new key is active and signing
      #   switches to it immediately; the previous key is retired to a `retiring` state
      #   (retained, not revoked) so it can be revoked after the DNS propagation grace
      #   period. Selectors are fixed, so the DKIM DNS record's TXT value is replaced in
      #   place at the shared `<selector>._domainkey.<domain>` host —
      #   `old_selector_retained` is false and the returned dns_records carry the new
      #   value the customer must publish promptly.
      #
      #   @return [Telnyx::Models::EmailDomainRotateDkimResponse::Data]
      required :data, -> { Telnyx::Models::EmailDomainRotateDkimResponse::Data }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailDomainRotateDkimResponse} for more details.
      #
      #   @param data [Telnyx::Models::EmailDomainRotateDkimResponse::Data] Result of rotating a domain's DKIM key. The new key is active and signing switch

      # @see Telnyx::Models::EmailDomainRotateDkimResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute dkim
        #   The new active DKIM key.
        #
        #   @return [Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim]
        required :dkim, -> { Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim }

        # @!attribute dns_records
        #   The DKIM DNS records the customer must publish, carrying the new key's TXT value
        #   with verification reset to pending.
        #
        #   @return [Array<Telnyx::Models::DNSRecord>]
        required :dns_records, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::DNSRecord] }

        # @!attribute domain
        #
        #   @return [String]
        required :domain, String

        # @!attribute domain_id
        #
        #   @return [String]
        required :domain_id, String

        # @!attribute old_selector_retained
        #   False for this service: one selector is fixed per domain, so rotation replaces
        #   the TXT value at the existing \_domainkey host. There is no dual-selector
        #   overlap; publish the replacement TXT promptly because signing switches
        #   immediately.
        #
        #   @return [Boolean]
        required :old_selector_retained, Telnyx::Internal::Type::Boolean

        # @!attribute previous_dkim_key
        #   The retired previous key, or null when the domain had no active key before
        #   rotation. Retained in a `retiring` state so it can be revoked after the DNS
        #   propagation grace period.
        #
        #   @return [Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey, nil]
        required :previous_dkim_key,
                 -> { Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey },
                 nil?: true

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::EmailDomainRotateDkimResponse::Data::RecordType]
        required :record_type, enum: -> { Telnyx::Models::EmailDomainRotateDkimResponse::Data::RecordType }

        # @!method initialize(dkim:, dns_records:, domain:, domain_id:, old_selector_retained:, previous_dkim_key:, record_type:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailDomainRotateDkimResponse::Data} for more details.
        #
        #   Result of rotating a domain's DKIM key. The new key is active and signing
        #   switches to it immediately; the previous key is retired to a `retiring` state
        #   (retained, not revoked) so it can be revoked after the DNS propagation grace
        #   period. Selectors are fixed, so the DKIM DNS record's TXT value is replaced in
        #   place at the shared `<selector>._domainkey.<domain>` host —
        #   `old_selector_retained` is false and the returned dns_records carry the new
        #   value the customer must publish promptly.
        #
        #   @param dkim [Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim] The new active DKIM key.
        #
        #   @param dns_records [Array<Telnyx::Models::DNSRecord>] The DKIM DNS records the customer must publish, carrying the new key's TXT value
        #
        #   @param domain [String]
        #
        #   @param domain_id [String]
        #
        #   @param old_selector_retained [Boolean] False for this service: one selector is fixed per domain, so rotation replaces t
        #
        #   @param previous_dkim_key [Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey, nil] The retired previous key, or null when the domain had no active key before rotat
        #
        #   @param record_type [Symbol, Telnyx::Models::EmailDomainRotateDkimResponse::Data::RecordType]

        # @see Telnyx::Models::EmailDomainRotateDkimResponse::Data#dkim
        class Dkim < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute algorithm
          #
          #   @return [Symbol, Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Algorithm]
          required :algorithm, enum: -> { Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Algorithm }

          # @!attribute key_length
          #
          #   @return [Integer, Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::KeyLength]
          required :key_length, enum: -> { Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::KeyLength }

          # @!attribute selector
          #
          #   @return [String]
          required :selector, String

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Status]
          required :status, enum: -> { Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Status }

          # @!attribute version
          #   Monotonically increasing per-domain key version.
          #
          #   @return [Integer]
          required :version, Integer

          # @!attribute activated_at
          #
          #   @return [Time, nil]
          optional :activated_at, Time, nil?: true

          # @!method initialize(id:, algorithm:, key_length:, selector:, status:, version:, activated_at: nil)
          #   The new active DKIM key.
          #
          #   @param id [String]
          #
          #   @param algorithm [Symbol, Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Algorithm]
          #
          #   @param key_length [Integer, Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::KeyLength]
          #
          #   @param selector [String]
          #
          #   @param status [Symbol, Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Status]
          #
          #   @param version [Integer] Monotonically increasing per-domain key version.
          #
          #   @param activated_at [Time, nil]

          # @see Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim#algorithm
          module Algorithm
            extend Telnyx::Internal::Type::Enum

            RSA_SHA256 = :"rsa-sha256"

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim#key_length
          module KeyLength
            extend Telnyx::Internal::Type::Enum

            KEY_LENGTH_2048 = 2048

            # @!method self.values
            #   @return [Array<Integer>]
          end

          # @see Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim#status
          module Status
            extend Telnyx::Internal::Type::Enum

            ACTIVE = :active

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::EmailDomainRotateDkimResponse::Data#previous_dkim_key
        class PreviousDkimKey < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute selector
          #
          #   @return [String]
          required :selector, String

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey::Status]
          required :status,
                   enum: -> { Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey::Status }

          # @!attribute version
          #
          #   @return [Integer]
          required :version, Integer

          # @!method initialize(id:, selector:, status:, version:)
          #   The retired previous key, or null when the domain had no active key before
          #   rotation. Retained in a `retiring` state so it can be revoked after the DNS
          #   propagation grace period.
          #
          #   @param id [String]
          #   @param selector [String]
          #   @param status [Symbol, Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey::Status]
          #   @param version [Integer]

          # @see Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey#status
          module Status
            extend Telnyx::Internal::Type::Enum

            RETIRING = :retiring
            REVOKED = :revoked

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::EmailDomainRotateDkimResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EMAIL_DOMAIN_DKIM_ROTATION = :email_domain_dkim_rotation

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
