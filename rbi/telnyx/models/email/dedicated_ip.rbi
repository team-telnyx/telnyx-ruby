# typed: strong

module Telnyx
  module Models
    module Email
      class DedicatedIP < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Email::DedicatedIP, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Monthly recurring charge (MRC) state for the IP's current allocation.
        sig { returns(T.nilable(Telnyx::Email::DedicatedIP::Billing)) }
        attr_reader :billing

        sig do
          params(billing: Telnyx::Email::DedicatedIP::Billing::OrHash).void
        end
        attr_writer :billing

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # When the PTR hostname was forward-confirmed (PTR → hostname → A record → this
        # IP). The IP carries mail only while this is set.
        sig { returns(T.nilable(Time)) }
        attr_accessor :dns_confirmed_at

        # The allocated IPv4/IPv6 address.
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { params(ip_address: String).void }
        attr_writer :ip_address

        sig do
          returns(
            T.nilable(Telnyx::Email::DedicatedIP::IPVersion::TaggedSymbol)
          )
        end
        attr_reader :ip_version

        sig do
          params(
            ip_version: Telnyx::Email::DedicatedIP::IPVersion::OrSymbol
          ).void
        end
        attr_writer :ip_version

        sig { returns(T.nilable(String)) }
        attr_accessor :pool_id

        # Read-only status of the Telnyx-managed PTR record. No customer action is
        # required to complete it.
        sig { returns(T.nilable(Telnyx::Email::DedicatedIP::Provisioning)) }
        attr_reader :provisioning

        sig do
          params(
            provisioning: Telnyx::Email::DedicatedIP::Provisioning::OrHash
          ).void
        end
        attr_writer :provisioning

        # Same value as `provisioning.dns_status`.
        sig do
          returns(
            T.nilable(
              Telnyx::Email::DedicatedIP::ProvisioningStatus::TaggedSymbol
            )
          )
        end
        attr_reader :provisioning_status

        sig do
          params(
            provisioning_status:
              Telnyx::Email::DedicatedIP::ProvisioningStatus::OrSymbol
          ).void
        end
        attr_writer :provisioning_status

        # Telnyx-managed reverse DNS (PTR) hostname of the IP, in the form
        # `mta-<a-b-c-d>.msgtelnyx.com`. Also used as the EHLO hostname when sending from
        # the IP. Managed by Telnyx and cannot be changed through the API.
        sig { returns(T.nilable(String)) }
        attr_accessor :ptr_hostname

        # Set on release to 30 days after `released_at`. The address is not returned to
        # stock before this time.
        sig { returns(T.nilable(Time)) }
        attr_accessor :quarantine_until

        sig do
          returns(
            T.nilable(Telnyx::Email::DedicatedIP::RecordType::TaggedSymbol)
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type: Telnyx::Email::DedicatedIP::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        # Region label of the allocated IP (for example, `ewr-nj1`).
        sig { returns(T.nilable(String)) }
        attr_reader :region

        sig { params(region: String).void }
        attr_writer :region

        # When the IP was released. Null until release.
        sig { returns(T.nilable(Time)) }
        attr_accessor :released_at

        # Lifecycle status. `provisioning`: purchased and billed, carries no mail until
        # `start_warmup`. `warming_up`: warm-up ramp in progress. `active`: ramp complete.
        # `suspended`: suspended by Telnyx; carries no mail and is still billed.
        # `released`: returned to Telnyx; carries no mail.
        sig do
          returns(T.nilable(Telnyx::Email::DedicatedIP::Status::TaggedSymbol))
        end
        attr_reader :status

        sig do
          params(status: Telnyx::Email::DedicatedIP::Status::OrSymbol).void
        end
        attr_writer :status

        # Reason Telnyx recorded when suspending the IP. Null unless `status` is
        # `suspended`.
        sig { returns(T.nilable(String)) }
        attr_accessor :suspension_reason

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Warmup ramp state for a dedicated IP.
        sig { returns(T.nilable(Telnyx::Email::DedicatedIP::Warmup)) }
        attr_reader :warmup

        sig { params(warmup: Telnyx::Email::DedicatedIP::Warmup::OrHash).void }
        attr_writer :warmup

        # A dedicated sending IP address owned by the account.
        sig do
          params(
            id: String,
            billing: Telnyx::Email::DedicatedIP::Billing::OrHash,
            created_at: Time,
            dns_confirmed_at: T.nilable(Time),
            ip_address: String,
            ip_version: Telnyx::Email::DedicatedIP::IPVersion::OrSymbol,
            pool_id: T.nilable(String),
            provisioning: Telnyx::Email::DedicatedIP::Provisioning::OrHash,
            provisioning_status:
              Telnyx::Email::DedicatedIP::ProvisioningStatus::OrSymbol,
            ptr_hostname: T.nilable(String),
            quarantine_until: T.nilable(Time),
            record_type: Telnyx::Email::DedicatedIP::RecordType::OrSymbol,
            region: String,
            released_at: T.nilable(Time),
            status: Telnyx::Email::DedicatedIP::Status::OrSymbol,
            suspension_reason: T.nilable(String),
            updated_at: Time,
            warmup: Telnyx::Email::DedicatedIP::Warmup::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          # Monthly recurring charge (MRC) state for the IP's current allocation.
          billing: nil,
          created_at: nil,
          # When the PTR hostname was forward-confirmed (PTR → hostname → A record → this
          # IP). The IP carries mail only while this is set.
          dns_confirmed_at: nil,
          # The allocated IPv4/IPv6 address.
          ip_address: nil,
          ip_version: nil,
          pool_id: nil,
          # Read-only status of the Telnyx-managed PTR record. No customer action is
          # required to complete it.
          provisioning: nil,
          # Same value as `provisioning.dns_status`.
          provisioning_status: nil,
          # Telnyx-managed reverse DNS (PTR) hostname of the IP, in the form
          # `mta-<a-b-c-d>.msgtelnyx.com`. Also used as the EHLO hostname when sending from
          # the IP. Managed by Telnyx and cannot be changed through the API.
          ptr_hostname: nil,
          # Set on release to 30 days after `released_at`. The address is not returned to
          # stock before this time.
          quarantine_until: nil,
          record_type: nil,
          # Region label of the allocated IP (for example, `ewr-nj1`).
          region: nil,
          # When the IP was released. Null until release.
          released_at: nil,
          # Lifecycle status. `provisioning`: purchased and billed, carries no mail until
          # `start_warmup`. `warming_up`: warm-up ramp in progress. `active`: ramp complete.
          # `suspended`: suspended by Telnyx; carries no mail and is still billed.
          # `released`: returned to Telnyx; carries no mail.
          status: nil,
          # Reason Telnyx recorded when suspending the IP. Null unless `status` is
          # `suspended`.
          suspension_reason: nil,
          updated_at: nil,
          # Warmup ramp state for a dedicated IP.
          warmup: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billing: Telnyx::Email::DedicatedIP::Billing,
              created_at: Time,
              dns_confirmed_at: T.nilable(Time),
              ip_address: String,
              ip_version: Telnyx::Email::DedicatedIP::IPVersion::TaggedSymbol,
              pool_id: T.nilable(String),
              provisioning: Telnyx::Email::DedicatedIP::Provisioning,
              provisioning_status:
                Telnyx::Email::DedicatedIP::ProvisioningStatus::TaggedSymbol,
              ptr_hostname: T.nilable(String),
              quarantine_until: T.nilable(Time),
              record_type: Telnyx::Email::DedicatedIP::RecordType::TaggedSymbol,
              region: String,
              released_at: T.nilable(Time),
              status: Telnyx::Email::DedicatedIP::Status::TaggedSymbol,
              suspension_reason: T.nilable(String),
              updated_at: Time,
              warmup: Telnyx::Email::DedicatedIP::Warmup
            }
          )
        end
        def to_hash
        end

        class Billing < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Email::DedicatedIP::Billing,
                Telnyx::Internal::AnyHash
              )
            end

          # True when `status` is `active`, `stopping`, or `stop_failed`. An IP carries mail
          # only after its charge has been created.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :charged

          sig { params(charged: T::Boolean).void }
          attr_writer :charged

          # `not_started`: no charge recorded for the current allocation. `pending`: the
          # charge is queued. `in_progress`: the charge is being created. `active`: the MRC
          # is active. `stopping`: release requested; the MRC stop is being processed.
          # `stopped`: the MRC has stopped. `stop_failed`: the MRC stop failed and the
          # charge remains. `failed`: the charge could not be created.
          sig do
            returns(
              T.nilable(
                Telnyx::Email::DedicatedIP::Billing::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status: Telnyx::Email::DedicatedIP::Billing::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Monthly recurring charge (MRC) state for the IP's current allocation.
          sig do
            params(
              charged: T::Boolean,
              status: Telnyx::Email::DedicatedIP::Billing::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # True when `status` is `active`, `stopping`, or `stop_failed`. An IP carries mail
            # only after its charge has been created.
            charged: nil,
            # `not_started`: no charge recorded for the current allocation. `pending`: the
            # charge is queued. `in_progress`: the charge is being created. `active`: the MRC
            # is active. `stopping`: release requested; the MRC stop is being processed.
            # `stopped`: the MRC has stopped. `stop_failed`: the MRC stop failed and the
            # charge remains. `failed`: the charge could not be created.
            status: nil
          )
          end

          sig do
            override.returns(
              {
                charged: T::Boolean,
                status:
                  Telnyx::Email::DedicatedIP::Billing::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # `not_started`: no charge recorded for the current allocation. `pending`: the
          # charge is queued. `in_progress`: the charge is being created. `active`: the MRC
          # is active. `stopping`: release requested; the MRC stop is being processed.
          # `stopped`: the MRC has stopped. `stop_failed`: the MRC stop failed and the
          # charge remains. `failed`: the charge could not be created.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::Email::DedicatedIP::Billing::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NOT_STARTED =
              T.let(
                :not_started,
                Telnyx::Email::DedicatedIP::Billing::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Telnyx::Email::DedicatedIP::Billing::Status::TaggedSymbol
              )
            IN_PROGRESS =
              T.let(
                :in_progress,
                Telnyx::Email::DedicatedIP::Billing::Status::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                Telnyx::Email::DedicatedIP::Billing::Status::TaggedSymbol
              )
            STOPPING =
              T.let(
                :stopping,
                Telnyx::Email::DedicatedIP::Billing::Status::TaggedSymbol
              )
            STOPPED =
              T.let(
                :stopped,
                Telnyx::Email::DedicatedIP::Billing::Status::TaggedSymbol
              )
            STOP_FAILED =
              T.let(
                :stop_failed,
                Telnyx::Email::DedicatedIP::Billing::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::Email::DedicatedIP::Billing::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Email::DedicatedIP::Billing::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module IPVersion
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Email::DedicatedIP::IPVersion)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IPV4 =
            T.let(:ipv4, Telnyx::Email::DedicatedIP::IPVersion::TaggedSymbol)
          IPV6 =
            T.let(:ipv6, Telnyx::Email::DedicatedIP::IPVersion::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Email::DedicatedIP::IPVersion::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class Provisioning < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Email::DedicatedIP::Provisioning,
                Telnyx::Internal::AnyHash
              )
            end

          # Informational progress flags for the Telnyx-managed PTR. They do not gate
          # `start_warmup`; use `dns_status` to check whether the IP can carry mail.
          sig do
            returns(
              T.nilable(Telnyx::Email::DedicatedIP::Provisioning::Checklist)
            )
          end
          attr_reader :checklist

          sig do
            params(
              checklist:
                Telnyx::Email::DedicatedIP::Provisioning::Checklist::OrHash
            ).void
          end
          attr_writer :checklist

          # `dns_confirmed`: the PTR is forward-confirmed and `dns_confirmed_at` is set.
          # `pending_ptr`: the PTR record is not yet in place. `pending_dns`: the PTR record
          # is waiting for forward confirmation. `dns_lost`: a previously confirmed PTR no
          # longer confirms, or the PTR request was abandoned before it ever confirmed
          # (`ptr_request_state` is `abandoned`); the IP carries no mail until DNS is
          # confirmed. `not_applicable`: the IP is released or has no PTR record on file.
          sig do
            returns(
              T.nilable(
                Telnyx::Email::DedicatedIP::Provisioning::DNSStatus::TaggedSymbol
              )
            )
          end
          attr_reader :dns_status

          sig do
            params(
              dns_status:
                Telnyx::Email::DedicatedIP::Provisioning::DNSStatus::OrSymbol
            ).void
          end
          attr_writer :dns_status

          # Reference to the Telnyx PTR change request, when one exists. Informational.
          sig { returns(T.nilable(String)) }
          attr_accessor :ptr_request_pr_url

          # State of the Telnyx PTR change: `pending`, `pr_open`, `merged`, `confirmed`,
          # `failed`, or `abandoned`. Informational.
          sig do
            returns(
              T.nilable(
                Telnyx::Email::DedicatedIP::Provisioning::PtrRequestState::TaggedSymbol
              )
            )
          end
          attr_accessor :ptr_request_state

          # Read-only status of the Telnyx-managed PTR record. No customer action is
          # required to complete it.
          sig do
            params(
              checklist:
                Telnyx::Email::DedicatedIP::Provisioning::Checklist::OrHash,
              dns_status:
                Telnyx::Email::DedicatedIP::Provisioning::DNSStatus::OrSymbol,
              ptr_request_pr_url: T.nilable(String),
              ptr_request_state:
                T.nilable(
                  Telnyx::Email::DedicatedIP::Provisioning::PtrRequestState::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Informational progress flags for the Telnyx-managed PTR. They do not gate
            # `start_warmup`; use `dns_status` to check whether the IP can carry mail.
            checklist: nil,
            # `dns_confirmed`: the PTR is forward-confirmed and `dns_confirmed_at` is set.
            # `pending_ptr`: the PTR record is not yet in place. `pending_dns`: the PTR record
            # is waiting for forward confirmation. `dns_lost`: a previously confirmed PTR no
            # longer confirms, or the PTR request was abandoned before it ever confirmed
            # (`ptr_request_state` is `abandoned`); the IP carries no mail until DNS is
            # confirmed. `not_applicable`: the IP is released or has no PTR record on file.
            dns_status: nil,
            # Reference to the Telnyx PTR change request, when one exists. Informational.
            ptr_request_pr_url: nil,
            # State of the Telnyx PTR change: `pending`, `pr_open`, `merged`, `confirmed`,
            # `failed`, or `abandoned`. Informational.
            ptr_request_state: nil
          )
          end

          sig do
            override.returns(
              {
                checklist: Telnyx::Email::DedicatedIP::Provisioning::Checklist,
                dns_status:
                  Telnyx::Email::DedicatedIP::Provisioning::DNSStatus::TaggedSymbol,
                ptr_request_pr_url: T.nilable(String),
                ptr_request_state:
                  T.nilable(
                    Telnyx::Email::DedicatedIP::Provisioning::PtrRequestState::TaggedSymbol
                  )
              }
            )
          end
          def to_hash
          end

          class Checklist < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Email::DedicatedIP::Provisioning::Checklist,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :forward_confirmed

            sig { params(forward_confirmed: T::Boolean).void }
            attr_writer :forward_confirmed

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :ptr_authored

            sig { params(ptr_authored: T::Boolean).void }
            attr_writer :ptr_authored

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :ptr_merged

            sig { params(ptr_merged: T::Boolean).void }
            attr_writer :ptr_merged

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :ptr_requested

            sig { params(ptr_requested: T::Boolean).void }
            attr_writer :ptr_requested

            # Informational progress flags for the Telnyx-managed PTR. They do not gate
            # `start_warmup`; use `dns_status` to check whether the IP can carry mail.
            sig do
              params(
                forward_confirmed: T::Boolean,
                ptr_authored: T::Boolean,
                ptr_merged: T::Boolean,
                ptr_requested: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              forward_confirmed: nil,
              ptr_authored: nil,
              ptr_merged: nil,
              ptr_requested: nil
            )
            end

            sig do
              override.returns(
                {
                  forward_confirmed: T::Boolean,
                  ptr_authored: T::Boolean,
                  ptr_merged: T::Boolean,
                  ptr_requested: T::Boolean
                }
              )
            end
            def to_hash
            end
          end

          # `dns_confirmed`: the PTR is forward-confirmed and `dns_confirmed_at` is set.
          # `pending_ptr`: the PTR record is not yet in place. `pending_dns`: the PTR record
          # is waiting for forward confirmation. `dns_lost`: a previously confirmed PTR no
          # longer confirms, or the PTR request was abandoned before it ever confirmed
          # (`ptr_request_state` is `abandoned`); the IP carries no mail until DNS is
          # confirmed. `not_applicable`: the IP is released or has no PTR record on file.
          module DNSStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Email::DedicatedIP::Provisioning::DNSStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NOT_APPLICABLE =
              T.let(
                :not_applicable,
                Telnyx::Email::DedicatedIP::Provisioning::DNSStatus::TaggedSymbol
              )
            PENDING_PTR =
              T.let(
                :pending_ptr,
                Telnyx::Email::DedicatedIP::Provisioning::DNSStatus::TaggedSymbol
              )
            PENDING_DNS =
              T.let(
                :pending_dns,
                Telnyx::Email::DedicatedIP::Provisioning::DNSStatus::TaggedSymbol
              )
            DNS_CONFIRMED =
              T.let(
                :dns_confirmed,
                Telnyx::Email::DedicatedIP::Provisioning::DNSStatus::TaggedSymbol
              )
            DNS_LOST =
              T.let(
                :dns_lost,
                Telnyx::Email::DedicatedIP::Provisioning::DNSStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Email::DedicatedIP::Provisioning::DNSStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # State of the Telnyx PTR change: `pending`, `pr_open`, `merged`, `confirmed`,
          # `failed`, or `abandoned`. Informational.
          module PtrRequestState
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Email::DedicatedIP::Provisioning::PtrRequestState
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::Email::DedicatedIP::Provisioning::PtrRequestState::TaggedSymbol
              )
            PR_OPEN =
              T.let(
                :pr_open,
                Telnyx::Email::DedicatedIP::Provisioning::PtrRequestState::TaggedSymbol
              )
            MERGED =
              T.let(
                :merged,
                Telnyx::Email::DedicatedIP::Provisioning::PtrRequestState::TaggedSymbol
              )
            CONFIRMED =
              T.let(
                :confirmed,
                Telnyx::Email::DedicatedIP::Provisioning::PtrRequestState::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::Email::DedicatedIP::Provisioning::PtrRequestState::TaggedSymbol
              )
            ABANDONED =
              T.let(
                :abandoned,
                Telnyx::Email::DedicatedIP::Provisioning::PtrRequestState::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Email::DedicatedIP::Provisioning::PtrRequestState::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Same value as `provisioning.dns_status`.
        module ProvisioningStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Email::DedicatedIP::ProvisioningStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_APPLICABLE =
            T.let(
              :not_applicable,
              Telnyx::Email::DedicatedIP::ProvisioningStatus::TaggedSymbol
            )
          PENDING_PTR =
            T.let(
              :pending_ptr,
              Telnyx::Email::DedicatedIP::ProvisioningStatus::TaggedSymbol
            )
          PENDING_DNS =
            T.let(
              :pending_dns,
              Telnyx::Email::DedicatedIP::ProvisioningStatus::TaggedSymbol
            )
          DNS_CONFIRMED =
            T.let(
              :dns_confirmed,
              Telnyx::Email::DedicatedIP::ProvisioningStatus::TaggedSymbol
            )
          DNS_LOST =
            T.let(
              :dns_lost,
              Telnyx::Email::DedicatedIP::ProvisioningStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Email::DedicatedIP::ProvisioningStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Email::DedicatedIP::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEDICATED_IP =
            T.let(
              :dedicated_ip,
              Telnyx::Email::DedicatedIP::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Email::DedicatedIP::RecordType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Lifecycle status. `provisioning`: purchased and billed, carries no mail until
        # `start_warmup`. `warming_up`: warm-up ramp in progress. `active`: ramp complete.
        # `suspended`: suspended by Telnyx; carries no mail and is still billed.
        # `released`: returned to Telnyx; carries no mail.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::Email::DedicatedIP::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROVISIONING =
            T.let(
              :provisioning,
              Telnyx::Email::DedicatedIP::Status::TaggedSymbol
            )
          WARMING_UP =
            T.let(:warming_up, Telnyx::Email::DedicatedIP::Status::TaggedSymbol)
          ACTIVE =
            T.let(:active, Telnyx::Email::DedicatedIP::Status::TaggedSymbol)
          SUSPENDED =
            T.let(:suspended, Telnyx::Email::DedicatedIP::Status::TaggedSymbol)
          RELEASED =
            T.let(:released, Telnyx::Email::DedicatedIP::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Email::DedicatedIP::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class Warmup < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Email::DedicatedIP::Warmup,
                Telnyx::Internal::AnyHash
              )
            end

          # Daily cap of the current ramp stage. Null until the scheduler arms the first
          # stage, and cleared when the ramp completes, automatically or through
          # `complete_warmup`. On an `active` IP this value is informational and can keep an
          # earlier stage cap after a suspension is lifted; it does not limit sending.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :daily_cap

          # True while the ramp is paused.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :paused

          sig { params(paused: T::Boolean).void }
          attr_writer :paused

          # When the ramp was paused. Null when not paused.
          sig { returns(T.nilable(Time)) }
          attr_accessor :paused_at

          # Ramp progress (0-100): the share of the 28 send-day schedule completed. Only UTC
          # days on which the IP sent mail count. Set to 100 when the ramp completes,
          # automatically or through `complete_warmup`. On an `active` IP this value is
          # informational and can keep an earlier value after a suspension is lifted.
          sig { returns(T.nilable(Integer)) }
          attr_reader :progress

          sig { params(progress: Integer).void }
          attr_writer :progress

          # When `start_warmup` was called. Null before warm-up starts and after release.
          sig { returns(T.nilable(Time)) }
          attr_accessor :started_at

          # Today's warmup allowance report card (current UTC day). Null outside the warmup
          # window (before start_warmup, after release/suspension). `active` IPs report the
          # ramp-complete allowance, except as described for `cap`.
          sig { returns(T.nilable(Telnyx::Email::DedicatedIP::Warmup::Today)) }
          attr_reader :today

          sig do
            params(
              today:
                T.nilable(Telnyx::Email::DedicatedIP::Warmup::Today::OrHash)
            ).void
          end
          attr_writer :today

          # Warmup ramp state for a dedicated IP.
          sig do
            params(
              daily_cap: T.nilable(Integer),
              paused: T::Boolean,
              paused_at: T.nilable(Time),
              progress: Integer,
              started_at: T.nilable(Time),
              today:
                T.nilable(Telnyx::Email::DedicatedIP::Warmup::Today::OrHash)
            ).returns(T.attached_class)
          end
          def self.new(
            # Daily cap of the current ramp stage. Null until the scheduler arms the first
            # stage, and cleared when the ramp completes, automatically or through
            # `complete_warmup`. On an `active` IP this value is informational and can keep an
            # earlier stage cap after a suspension is lifted; it does not limit sending.
            daily_cap: nil,
            # True while the ramp is paused.
            paused: nil,
            # When the ramp was paused. Null when not paused.
            paused_at: nil,
            # Ramp progress (0-100): the share of the 28 send-day schedule completed. Only UTC
            # days on which the IP sent mail count. Set to 100 when the ramp completes,
            # automatically or through `complete_warmup`. On an `active` IP this value is
            # informational and can keep an earlier value after a suspension is lifted.
            progress: nil,
            # When `start_warmup` was called. Null before warm-up starts and after release.
            started_at: nil,
            # Today's warmup allowance report card (current UTC day). Null outside the warmup
            # window (before start_warmup, after release/suspension). `active` IPs report the
            # ramp-complete allowance, except as described for `cap`.
            today: nil
          )
          end

          sig do
            override.returns(
              {
                daily_cap: T.nilable(Integer),
                paused: T::Boolean,
                paused_at: T.nilable(Time),
                progress: Integer,
                started_at: T.nilable(Time),
                today: T.nilable(Telnyx::Email::DedicatedIP::Warmup::Today)
              }
            )
          end
          def to_hash
          end

          class Today < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Email::DedicatedIP::Warmup::Today,
                  Telnyx::Internal::AnyHash
                )
              end

            # The day's allowance cap. Null when the ramp has not opened yet (day 0: the
            # scheduler has not armed a stage cap) — distinct from a spent day, which reports
            # the cap with remaining 0. `active` IPs report `100000000`, the ramp-complete
            # cap; `complete_warmup` applies it to the current day immediately. A day's
            # allowance created before the IP became `active` can keep its stored `cap` and
            # `remaining` until the next first-attempt send refreshes them.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :cap

            # The UTC day this snapshot describes (warmup caps reset at UTC midnight).
            sig { returns(T.nilable(Date)) }
            attr_reader :day

            sig { params(day: Date).void }
            attr_writer :day

            # First-attempt sends released from warmup hold so far today. Delivery retries
            # never lease allowance and are not counted.
            sig { returns(T.nilable(Integer)) }
            attr_reader :granted

            sig { params(granted: Integer).void }
            attr_writer :granted

            # Headroom left today. A queued send held by the daily cap is explained by
            # remaining == 0; null mirrors cap (ramp not open yet). On an `active` IP whose
            # `cap` is below `100000000`, remaining == 0 is a stored allowance and does not
            # block the next eligible first-attempt send.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :remaining

            # Today's warmup allowance report card (current UTC day). Null outside the warmup
            # window (before start_warmup, after release/suspension). `active` IPs report the
            # ramp-complete allowance, except as described for `cap`.
            sig do
              params(
                cap: T.nilable(Integer),
                day: Date,
                granted: Integer,
                remaining: T.nilable(Integer)
              ).returns(T.attached_class)
            end
            def self.new(
              # The day's allowance cap. Null when the ramp has not opened yet (day 0: the
              # scheduler has not armed a stage cap) — distinct from a spent day, which reports
              # the cap with remaining 0. `active` IPs report `100000000`, the ramp-complete
              # cap; `complete_warmup` applies it to the current day immediately. A day's
              # allowance created before the IP became `active` can keep its stored `cap` and
              # `remaining` until the next first-attempt send refreshes them.
              cap: nil,
              # The UTC day this snapshot describes (warmup caps reset at UTC midnight).
              day: nil,
              # First-attempt sends released from warmup hold so far today. Delivery retries
              # never lease allowance and are not counted.
              granted: nil,
              # Headroom left today. A queued send held by the daily cap is explained by
              # remaining == 0; null mirrors cap (ramp not open yet). On an `active` IP whose
              # `cap` is below `100000000`, remaining == 0 is a stored allowance and does not
              # block the next eligible first-attempt send.
              remaining: nil
            )
            end

            sig do
              override.returns(
                {
                  cap: T.nilable(Integer),
                  day: Date,
                  granted: Integer,
                  remaining: T.nilable(Integer)
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
