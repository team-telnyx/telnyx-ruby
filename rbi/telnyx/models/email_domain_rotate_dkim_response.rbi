# typed: strong

module Telnyx
  module Models
    class EmailDomainRotateDkimResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::EmailDomainRotateDkimResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Result of rotating a domain's DKIM key. The new key is active and signing
      # switches to it immediately; the previous key is retired to a `retiring` state
      # (retained, not revoked) so it can be revoked after the DNS propagation grace
      # period. Selectors are fixed, so the DKIM DNS record's TXT value is replaced in
      # place at the shared `<selector>._domainkey.<domain>` host —
      # `old_selector_retained` is false and the returned dns_records carry the new
      # value the customer must publish promptly.
      sig { returns(Telnyx::Models::EmailDomainRotateDkimResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::EmailDomainRotateDkimResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::EmailDomainRotateDkimResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Result of rotating a domain's DKIM key. The new key is active and signing
        # switches to it immediately; the previous key is retired to a `retiring` state
        # (retained, not revoked) so it can be revoked after the DNS propagation grace
        # period. Selectors are fixed, so the DKIM DNS record's TXT value is replaced in
        # place at the shared `<selector>._domainkey.<domain>` host —
        # `old_selector_retained` is false and the returned dns_records carry the new
        # value the customer must publish promptly.
        data:
      )
      end

      sig do
        override.returns(
          { data: Telnyx::Models::EmailDomainRotateDkimResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailDomainRotateDkimResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The new active DKIM key.
        sig do
          returns(Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim)
        end
        attr_reader :dkim

        sig do
          params(
            dkim:
              Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::OrHash
          ).void
        end
        attr_writer :dkim

        # The DKIM DNS records the customer must publish, carrying the new key's TXT value
        # with verification reset to pending.
        sig { returns(T::Array[Telnyx::DNSRecord]) }
        attr_accessor :dns_records

        sig { returns(String) }
        attr_accessor :domain

        sig { returns(String) }
        attr_accessor :domain_id

        # False for this service: one selector is fixed per domain, so rotation replaces
        # the TXT value at the existing \_domainkey host. There is no dual-selector
        # overlap; publish the replacement TXT promptly because signing switches
        # immediately.
        sig { returns(T::Boolean) }
        attr_accessor :old_selector_retained

        # The retired previous key, or null when the domain had no active key before
        # rotation. Retained in a `retiring` state so it can be revoked after the DNS
        # propagation grace period.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey
            )
          )
        end
        attr_reader :previous_dkim_key

        sig do
          params(
            previous_dkim_key:
              T.nilable(
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey::OrHash
              )
          ).void
        end
        attr_writer :previous_dkim_key

        sig do
          returns(
            Telnyx::Models::EmailDomainRotateDkimResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        # Result of rotating a domain's DKIM key. The new key is active and signing
        # switches to it immediately; the previous key is retired to a `retiring` state
        # (retained, not revoked) so it can be revoked after the DNS propagation grace
        # period. Selectors are fixed, so the DKIM DNS record's TXT value is replaced in
        # place at the shared `<selector>._domainkey.<domain>` host —
        # `old_selector_retained` is false and the returned dns_records carry the new
        # value the customer must publish promptly.
        sig do
          params(
            dkim:
              Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::OrHash,
            dns_records: T::Array[Telnyx::DNSRecord::OrHash],
            domain: String,
            domain_id: String,
            old_selector_retained: T::Boolean,
            previous_dkim_key:
              T.nilable(
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey::OrHash
              ),
            record_type:
              Telnyx::Models::EmailDomainRotateDkimResponse::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The new active DKIM key.
          dkim:,
          # The DKIM DNS records the customer must publish, carrying the new key's TXT value
          # with verification reset to pending.
          dns_records:,
          domain:,
          domain_id:,
          # False for this service: one selector is fixed per domain, so rotation replaces
          # the TXT value at the existing \_domainkey host. There is no dual-selector
          # overlap; publish the replacement TXT promptly because signing switches
          # immediately.
          old_selector_retained:,
          # The retired previous key, or null when the domain had no active key before
          # rotation. Retained in a `retiring` state so it can be revoked after the DNS
          # propagation grace period.
          previous_dkim_key:,
          record_type:
        )
        end

        sig do
          override.returns(
            {
              dkim: Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim,
              dns_records: T::Array[Telnyx::DNSRecord],
              domain: String,
              domain_id: String,
              old_selector_retained: T::Boolean,
              previous_dkim_key:
                T.nilable(
                  Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey
                ),
              record_type:
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::RecordType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Dkim < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Algorithm::TaggedSymbol
            )
          end
          attr_accessor :algorithm

          sig do
            returns(
              Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::KeyLength::TaggedInteger
            )
          end
          attr_accessor :key_length

          sig { returns(String) }
          attr_accessor :selector

          sig do
            returns(
              Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Monotonically increasing per-domain key version.
          sig { returns(Integer) }
          attr_accessor :version

          sig { returns(T.nilable(Time)) }
          attr_accessor :activated_at

          # The new active DKIM key.
          sig do
            params(
              id: String,
              algorithm:
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Algorithm::OrSymbol,
              key_length:
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::KeyLength::OrInteger,
              selector: String,
              status:
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Status::OrSymbol,
              version: Integer,
              activated_at: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            algorithm:,
            key_length:,
            selector:,
            status:,
            # Monotonically increasing per-domain key version.
            version:,
            activated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                algorithm:
                  Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Algorithm::TaggedSymbol,
                key_length:
                  Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::KeyLength::TaggedInteger,
                selector: String,
                status:
                  Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Status::TaggedSymbol,
                version: Integer,
                activated_at: T.nilable(Time)
              }
            )
          end
          def to_hash
          end

          module Algorithm
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Algorithm
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RSA_SHA256 =
              T.let(
                :"rsa-sha256",
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Algorithm::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Algorithm::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module KeyLength
            extend Telnyx::Internal::Type::Enum

            TaggedInteger =
              T.type_alias do
                T.all(
                  Integer,
                  Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::KeyLength
                )
              end
            OrInteger = T.type_alias { Integer }

            KEY_LENGTH_2048 =
              T.let(
                2048,
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::KeyLength::TaggedInteger
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::KeyLength::TaggedInteger
                ]
              )
            end
            def self.values
            end
          end

          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::EmailDomainRotateDkimResponse::Data::Dkim::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PreviousDkimKey < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :selector

          sig do
            returns(
              Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          sig { returns(Integer) }
          attr_accessor :version

          # The retired previous key, or null when the domain had no active key before
          # rotation. Retained in a `retiring` state so it can be revoked after the DNS
          # propagation grace period.
          sig do
            params(
              id: String,
              selector: String,
              status:
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey::Status::OrSymbol,
              version: Integer
            ).returns(T.attached_class)
          end
          def self.new(id:, selector:, status:, version:)
          end

          sig do
            override.returns(
              {
                id: String,
                selector: String,
                status:
                  Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey::Status::TaggedSymbol,
                version: Integer
              }
            )
          end
          def to_hash
          end

          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RETIRING =
              T.let(
                :retiring,
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey::Status::TaggedSymbol
              )
            REVOKED =
              T.let(
                :revoked,
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::EmailDomainRotateDkimResponse::Data::PreviousDkimKey::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_DOMAIN_DKIM_ROTATION =
            T.let(
              :email_domain_dkim_rotation,
              Telnyx::Models::EmailDomainRotateDkimResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::EmailDomainRotateDkimResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
