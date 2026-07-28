# typed: strong

module Telnyx
  module Models
    class EmailDomain < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::EmailDomain, Telnyx::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Telnyx::EmailDomain::Dkim) }
      attr_reader :dkim

      sig { params(dkim: Telnyx::EmailDomain::Dkim::OrHash).void }
      attr_writer :dkim

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

      sig { returns(T::Array[Telnyx::DNSRecord]) }
      attr_accessor :dns_records

      sig { returns(String) }
      attr_accessor :domain

      sig { returns(Telnyx::EmailDomain::Inbound) }
      attr_reader :inbound

      sig { params(inbound: Telnyx::EmailDomain::Inbound::OrHash).void }
      attr_writer :inbound

      sig { returns(Telnyx::EmailDomain::RecordType::TaggedSymbol) }
      attr_accessor :record_type

      sig { returns(Telnyx::EmailDomainStatus::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Telnyx::DomainsTrackingSettings) }
      attr_reader :tracking

      sig { params(tracking: Telnyx::DomainsTrackingSettings::OrHash).void }
      attr_writer :tracking

      # Domain type. `custom` domains are account-owned (BYOD). `shared` domains are
      # Telnyx-managed, visible to and usable by ALL accounts for sending, but
      # read-only: only the owning (system) account may modify, verify, or delete them;
      # other accounts receive 403 (code 10008).
      sig { returns(Telnyx::EmailDomainType::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T::Boolean) }
      attr_accessor :usable_for_inbound

      sig { returns(T::Boolean) }
      attr_accessor :usable_for_sending

      sig { returns(Telnyx::EmailDomainVerification) }
      attr_reader :verification

      sig { params(verification: Telnyx::EmailDomainVerification::OrHash).void }
      attr_writer :verification

      # Sender reputation for this domain (present on all domain responses).
      sig { returns(T.nilable(Telnyx::EmailDomain::Reputation)) }
      attr_reader :reputation

      sig { params(reputation: Telnyx::EmailDomain::Reputation::OrHash).void }
      attr_writer :reputation

      sig { returns(T.nilable(Time)) }
      attr_accessor :verified_at

      sig do
        params(
          id: String,
          created_at: Time,
          dkim: Telnyx::EmailDomain::Dkim::OrHash,
          dmarc_policy: T.nilable(Telnyx::EmailDmarcPolicy::OrHash),
          dns_records: T::Array[Telnyx::DNSRecord::OrHash],
          domain: String,
          inbound: Telnyx::EmailDomain::Inbound::OrHash,
          record_type: Telnyx::EmailDomain::RecordType::OrSymbol,
          status: Telnyx::EmailDomainStatus::OrSymbol,
          tracking: Telnyx::DomainsTrackingSettings::OrHash,
          type: Telnyx::EmailDomainType::OrSymbol,
          updated_at: Time,
          usable_for_inbound: T::Boolean,
          usable_for_sending: T::Boolean,
          verification: Telnyx::EmailDomainVerification::OrHash,
          reputation: Telnyx::EmailDomain::Reputation::OrHash,
          verified_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        dkim:,
        # DMARC policy for a sending domain. Drives the recommended \_dmarc.<domain> TXT
        # record. DMARC is advisory and never blocks sending. When omitted or null, the
        # domain uses the advisory default (v=DMARC1; p=none;
        # rua=mailto:dmarc@telnyx.com).
        dmarc_policy:,
        dns_records:,
        domain:,
        inbound:,
        record_type:,
        status:,
        tracking:,
        # Domain type. `custom` domains are account-owned (BYOD). `shared` domains are
        # Telnyx-managed, visible to and usable by ALL accounts for sending, but
        # read-only: only the owning (system) account may modify, verify, or delete them;
        # other accounts receive 403 (code 10008).
        type:,
        updated_at:,
        usable_for_inbound:,
        usable_for_sending:,
        verification:,
        # Sender reputation for this domain (present on all domain responses).
        reputation: nil,
        verified_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            dkim: Telnyx::EmailDomain::Dkim,
            dmarc_policy: T.nilable(Telnyx::EmailDmarcPolicy),
            dns_records: T::Array[Telnyx::DNSRecord],
            domain: String,
            inbound: Telnyx::EmailDomain::Inbound,
            record_type: Telnyx::EmailDomain::RecordType::TaggedSymbol,
            status: Telnyx::EmailDomainStatus::TaggedSymbol,
            tracking: Telnyx::DomainsTrackingSettings,
            type: Telnyx::EmailDomainType::TaggedSymbol,
            updated_at: Time,
            usable_for_inbound: T::Boolean,
            usable_for_sending: T::Boolean,
            verification: Telnyx::EmailDomainVerification,
            reputation: Telnyx::EmailDomain::Reputation,
            verified_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      class Dkim < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::EmailDomain::Dkim, Telnyx::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :active

        sig do
          returns(T.nilable(Telnyx::EmailDomain::Dkim::Algorithm::TaggedSymbol))
        end
        attr_accessor :algorithm

        sig do
          returns(
            T.nilable(Telnyx::EmailDomain::Dkim::KeyLength::TaggedInteger)
          )
        end
        attr_accessor :key_length

        sig { returns(T.nilable(Time)) }
        attr_accessor :rotated_at

        sig { returns(T.nilable(String)) }
        attr_accessor :selector

        sig do
          params(
            active: T::Boolean,
            algorithm:
              T.nilable(Telnyx::EmailDomain::Dkim::Algorithm::OrSymbol),
            key_length:
              T.nilable(Telnyx::EmailDomain::Dkim::KeyLength::OrInteger),
            rotated_at: T.nilable(Time),
            selector: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(active:, algorithm:, key_length:, rotated_at:, selector:)
        end

        sig do
          override.returns(
            {
              active: T::Boolean,
              algorithm:
                T.nilable(Telnyx::EmailDomain::Dkim::Algorithm::TaggedSymbol),
              key_length:
                T.nilable(Telnyx::EmailDomain::Dkim::KeyLength::TaggedInteger),
              rotated_at: T.nilable(Time),
              selector: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module Algorithm
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::EmailDomain::Dkim::Algorithm) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RSA_SHA256 =
            T.let(
              :"rsa-sha256",
              Telnyx::EmailDomain::Dkim::Algorithm::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::EmailDomain::Dkim::Algorithm::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module KeyLength
          extend Telnyx::Internal::Type::Enum

          TaggedInteger =
            T.type_alias do
              T.all(Integer, Telnyx::EmailDomain::Dkim::KeyLength)
            end
          OrInteger = T.type_alias { Integer }

          KEY_LENGTH_2048 =
            T.let(2048, Telnyx::EmailDomain::Dkim::KeyLength::TaggedInteger)

          sig do
            override.returns(
              T::Array[Telnyx::EmailDomain::Dkim::KeyLength::TaggedInteger]
            )
          end
          def self.values
          end
        end
      end

      class Inbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::EmailDomain::Inbound, Telnyx::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :catch_all

        sig { returns(T::Boolean) }
        attr_accessor :enabled

        sig { returns(T::Boolean) }
        attr_accessor :mx_required

        sig do
          params(
            catch_all: T::Boolean,
            enabled: T::Boolean,
            mx_required: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(catch_all:, enabled:, mx_required:)
        end

        sig do
          override.returns(
            {
              catch_all: T::Boolean,
              enabled: T::Boolean,
              mx_required: T::Boolean
            }
          )
        end
        def to_hash
        end
      end

      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailDomain::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_DOMAIN =
          T.let(:email_domain, Telnyx::EmailDomain::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EmailDomain::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Reputation < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::EmailDomain::Reputation, Telnyx::Internal::AnyHash)
          end

        # Reputation band, e.g. good/warn/poor.
        sig { returns(T.nilable(String)) }
        attr_reader :band

        sig { params(band: String).void }
        attr_writer :band

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :breakdown

        sig { params(breakdown: T::Hash[Symbol, T.anything]).void }
        attr_writer :breakdown

        sig { returns(T.nilable(Time)) }
        attr_accessor :computed_at

        # Sender reputation for this domain (present on all domain responses).
        sig do
          params(
            band: String,
            breakdown: T::Hash[Symbol, T.anything],
            computed_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # Reputation band, e.g. good/warn/poor.
          band: nil,
          breakdown: nil,
          computed_at: nil
        )
        end

        sig do
          override.returns(
            {
              band: String,
              breakdown: T::Hash[Symbol, T.anything],
              computed_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
