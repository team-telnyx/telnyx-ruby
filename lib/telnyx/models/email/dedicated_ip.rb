# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      class DedicatedIP < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute billing
        #   Monthly recurring charge (MRC) state for the IP's current allocation.
        #
        #   @return [Telnyx::Models::Email::DedicatedIP::Billing, nil]
        optional :billing, -> { Telnyx::Email::DedicatedIP::Billing }

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute dns_confirmed_at
        #   When the PTR hostname was forward-confirmed (PTR → hostname → A record → this
        #   IP). The IP carries mail only while this is set.
        #
        #   @return [Time, nil]
        optional :dns_confirmed_at, Time, nil?: true

        # @!attribute ip_address
        #   The allocated IPv4/IPv6 address.
        #
        #   @return [String, nil]
        optional :ip_address, String

        # @!attribute ip_version
        #
        #   @return [Symbol, Telnyx::Models::Email::DedicatedIP::IPVersion, nil]
        optional :ip_version, enum: -> { Telnyx::Email::DedicatedIP::IPVersion }

        # @!attribute pool_id
        #
        #   @return [String, nil]
        optional :pool_id, String, nil?: true

        # @!attribute provisioning
        #   Read-only status of the Telnyx-managed PTR record. No customer action is
        #   required to complete it.
        #
        #   @return [Telnyx::Models::Email::DedicatedIP::Provisioning, nil]
        optional :provisioning, -> { Telnyx::Email::DedicatedIP::Provisioning }

        # @!attribute provisioning_status
        #   Same value as `provisioning.dns_status`.
        #
        #   @return [Symbol, Telnyx::Models::Email::DedicatedIP::ProvisioningStatus, nil]
        optional :provisioning_status, enum: -> { Telnyx::Email::DedicatedIP::ProvisioningStatus }

        # @!attribute ptr_hostname
        #   Telnyx-managed reverse DNS (PTR) hostname of the IP, in the form
        #   `mta-<a-b-c-d>.msgtelnyx.com`. Also used as the EHLO hostname when sending from
        #   the IP. Managed by Telnyx and cannot be changed through the API.
        #
        #   @return [String, nil]
        optional :ptr_hostname, String, nil?: true

        # @!attribute quarantine_until
        #   Set on release to 30 days after `released_at`. The address is not returned to
        #   stock before this time.
        #
        #   @return [Time, nil]
        optional :quarantine_until, Time, nil?: true

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::Email::DedicatedIP::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::Email::DedicatedIP::RecordType }

        # @!attribute region
        #   Region label of the allocated IP (for example, `ewr-nj1`).
        #
        #   @return [String, nil]
        optional :region, String

        # @!attribute released_at
        #   When the IP was released. Null until release.
        #
        #   @return [Time, nil]
        optional :released_at, Time, nil?: true

        # @!attribute status
        #   Lifecycle status. `provisioning`: purchased and billed, carries no mail until
        #   `start_warmup`. `warming_up`: warm-up ramp in progress. `active`: ramp complete.
        #   `suspended`: suspended by Telnyx; carries no mail and is still billed.
        #   `released`: returned to Telnyx; carries no mail.
        #
        #   @return [Symbol, Telnyx::Models::Email::DedicatedIP::Status, nil]
        optional :status, enum: -> { Telnyx::Email::DedicatedIP::Status }

        # @!attribute suspension_reason
        #   Reason Telnyx recorded when suspending the IP. Null unless `status` is
        #   `suspended`.
        #
        #   @return [String, nil]
        optional :suspension_reason, String, nil?: true

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute warmup
        #   Warmup ramp state for a dedicated IP.
        #
        #   @return [Telnyx::Models::Email::DedicatedIP::Warmup, nil]
        optional :warmup, -> { Telnyx::Email::DedicatedIP::Warmup }

        # @!method initialize(id: nil, billing: nil, created_at: nil, dns_confirmed_at: nil, ip_address: nil, ip_version: nil, pool_id: nil, provisioning: nil, provisioning_status: nil, ptr_hostname: nil, quarantine_until: nil, record_type: nil, region: nil, released_at: nil, status: nil, suspension_reason: nil, updated_at: nil, warmup: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Email::DedicatedIP} for more details.
        #
        #   A dedicated sending IP address owned by the account.
        #
        #   @param id [String]
        #
        #   @param billing [Telnyx::Models::Email::DedicatedIP::Billing] Monthly recurring charge (MRC) state for the IP's current allocation.
        #
        #   @param created_at [Time]
        #
        #   @param dns_confirmed_at [Time, nil] When the PTR hostname was forward-confirmed (PTR → hostname → A record → this IP
        #
        #   @param ip_address [String] The allocated IPv4/IPv6 address.
        #
        #   @param ip_version [Symbol, Telnyx::Models::Email::DedicatedIP::IPVersion]
        #
        #   @param pool_id [String, nil]
        #
        #   @param provisioning [Telnyx::Models::Email::DedicatedIP::Provisioning] Read-only status of the Telnyx-managed PTR record. No customer action is require
        #
        #   @param provisioning_status [Symbol, Telnyx::Models::Email::DedicatedIP::ProvisioningStatus] Same value as `provisioning.dns_status`.
        #
        #   @param ptr_hostname [String, nil] Telnyx-managed reverse DNS (PTR) hostname of the IP, in the form `mta-<a-b-c-d>.
        #
        #   @param quarantine_until [Time, nil] Set on release to 30 days after `released_at`. The address is not returned to st
        #
        #   @param record_type [Symbol, Telnyx::Models::Email::DedicatedIP::RecordType]
        #
        #   @param region [String] Region label of the allocated IP (for example, `ewr-nj1`).
        #
        #   @param released_at [Time, nil] When the IP was released. Null until release.
        #
        #   @param status [Symbol, Telnyx::Models::Email::DedicatedIP::Status] Lifecycle status. `provisioning`: purchased and billed, carries no mail until `s
        #
        #   @param suspension_reason [String, nil] Reason Telnyx recorded when suspending the IP. Null unless `status` is `suspende
        #
        #   @param updated_at [Time]
        #
        #   @param warmup [Telnyx::Models::Email::DedicatedIP::Warmup] Warmup ramp state for a dedicated IP.

        # @see Telnyx::Models::Email::DedicatedIP#billing
        class Billing < Telnyx::Internal::Type::BaseModel
          # @!attribute charged
          #   True when `status` is `active`, `stopping`, or `stop_failed`. An IP carries mail
          #   only after its charge has been created.
          #
          #   @return [Boolean, nil]
          optional :charged, Telnyx::Internal::Type::Boolean

          # @!attribute status
          #   `not_started`: no charge recorded for the current allocation. `pending`: the
          #   charge is queued. `in_progress`: the charge is being created. `active`: the MRC
          #   is active. `stopping`: release requested; the MRC stop is being processed.
          #   `stopped`: the MRC has stopped. `stop_failed`: the MRC stop failed and the
          #   charge remains. `failed`: the charge could not be created.
          #
          #   @return [Symbol, Telnyx::Models::Email::DedicatedIP::Billing::Status, nil]
          optional :status, enum: -> { Telnyx::Email::DedicatedIP::Billing::Status }

          # @!method initialize(charged: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Email::DedicatedIP::Billing} for more details.
          #
          #   Monthly recurring charge (MRC) state for the IP's current allocation.
          #
          #   @param charged [Boolean] True when `status` is `active`, `stopping`, or `stop_failed`. An IP carries mail
          #
          #   @param status [Symbol, Telnyx::Models::Email::DedicatedIP::Billing::Status] `not_started`: no charge recorded for the current allocation. `pending`: the cha

          # `not_started`: no charge recorded for the current allocation. `pending`: the
          # charge is queued. `in_progress`: the charge is being created. `active`: the MRC
          # is active. `stopping`: release requested; the MRC stop is being processed.
          # `stopped`: the MRC has stopped. `stop_failed`: the MRC stop failed and the
          # charge remains. `failed`: the charge could not be created.
          #
          # @see Telnyx::Models::Email::DedicatedIP::Billing#status
          module Status
            extend Telnyx::Internal::Type::Enum

            NOT_STARTED = :not_started
            PENDING = :pending
            IN_PROGRESS = :in_progress
            ACTIVE = :active
            STOPPING = :stopping
            STOPPED = :stopped
            STOP_FAILED = :stop_failed
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::Email::DedicatedIP#ip_version
        module IPVersion
          extend Telnyx::Internal::Type::Enum

          IPV4 = :ipv4
          IPV6 = :ipv6

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Email::DedicatedIP#provisioning
        class Provisioning < Telnyx::Internal::Type::BaseModel
          # @!attribute checklist
          #   Informational progress flags for the Telnyx-managed PTR. They do not gate
          #   `start_warmup`; use `dns_status` to check whether the IP can carry mail.
          #
          #   @return [Telnyx::Models::Email::DedicatedIP::Provisioning::Checklist, nil]
          optional :checklist, -> { Telnyx::Email::DedicatedIP::Provisioning::Checklist }

          # @!attribute dns_status
          #   `dns_confirmed`: the PTR is forward-confirmed and `dns_confirmed_at` is set.
          #   `pending_ptr`: the PTR record is not yet in place. `pending_dns`: the PTR record
          #   is waiting for forward confirmation. `dns_lost`: a previously confirmed PTR no
          #   longer confirms, or the PTR request was abandoned before it ever confirmed
          #   (`ptr_request_state` is `abandoned`); the IP carries no mail until DNS is
          #   confirmed. `not_applicable`: the IP is released or has no PTR record on file.
          #
          #   @return [Symbol, Telnyx::Models::Email::DedicatedIP::Provisioning::DNSStatus, nil]
          optional :dns_status, enum: -> { Telnyx::Email::DedicatedIP::Provisioning::DNSStatus }

          # @!attribute ptr_request_pr_url
          #   Reference to the Telnyx PTR change request, when one exists. Informational.
          #
          #   @return [String, nil]
          optional :ptr_request_pr_url, String, nil?: true

          # @!attribute ptr_request_state
          #   State of the Telnyx PTR change: `pending`, `pr_open`, `merged`, `confirmed`,
          #   `failed`, or `abandoned`. Informational.
          #
          #   @return [Symbol, Telnyx::Models::Email::DedicatedIP::Provisioning::PtrRequestState, nil]
          optional :ptr_request_state,
                   enum: -> { Telnyx::Email::DedicatedIP::Provisioning::PtrRequestState },
                   nil?: true

          # @!method initialize(checklist: nil, dns_status: nil, ptr_request_pr_url: nil, ptr_request_state: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Email::DedicatedIP::Provisioning} for more details.
          #
          #   Read-only status of the Telnyx-managed PTR record. No customer action is
          #   required to complete it.
          #
          #   @param checklist [Telnyx::Models::Email::DedicatedIP::Provisioning::Checklist] Informational progress flags for the Telnyx-managed PTR. They do not gate `start
          #
          #   @param dns_status [Symbol, Telnyx::Models::Email::DedicatedIP::Provisioning::DNSStatus] `dns_confirmed`: the PTR is forward-confirmed and `dns_confirmed_at` is set. `pe
          #
          #   @param ptr_request_pr_url [String, nil] Reference to the Telnyx PTR change request, when one exists. Informational.
          #
          #   @param ptr_request_state [Symbol, Telnyx::Models::Email::DedicatedIP::Provisioning::PtrRequestState, nil] State of the Telnyx PTR change: `pending`, `pr_open`, `merged`, `confirmed`, `fa

          # @see Telnyx::Models::Email::DedicatedIP::Provisioning#checklist
          class Checklist < Telnyx::Internal::Type::BaseModel
            # @!attribute forward_confirmed
            #
            #   @return [Boolean, nil]
            optional :forward_confirmed, Telnyx::Internal::Type::Boolean

            # @!attribute ptr_authored
            #
            #   @return [Boolean, nil]
            optional :ptr_authored, Telnyx::Internal::Type::Boolean

            # @!attribute ptr_merged
            #
            #   @return [Boolean, nil]
            optional :ptr_merged, Telnyx::Internal::Type::Boolean

            # @!attribute ptr_requested
            #
            #   @return [Boolean, nil]
            optional :ptr_requested, Telnyx::Internal::Type::Boolean

            # @!method initialize(forward_confirmed: nil, ptr_authored: nil, ptr_merged: nil, ptr_requested: nil)
            #   Informational progress flags for the Telnyx-managed PTR. They do not gate
            #   `start_warmup`; use `dns_status` to check whether the IP can carry mail.
            #
            #   @param forward_confirmed [Boolean]
            #   @param ptr_authored [Boolean]
            #   @param ptr_merged [Boolean]
            #   @param ptr_requested [Boolean]
          end

          # `dns_confirmed`: the PTR is forward-confirmed and `dns_confirmed_at` is set.
          # `pending_ptr`: the PTR record is not yet in place. `pending_dns`: the PTR record
          # is waiting for forward confirmation. `dns_lost`: a previously confirmed PTR no
          # longer confirms, or the PTR request was abandoned before it ever confirmed
          # (`ptr_request_state` is `abandoned`); the IP carries no mail until DNS is
          # confirmed. `not_applicable`: the IP is released or has no PTR record on file.
          #
          # @see Telnyx::Models::Email::DedicatedIP::Provisioning#dns_status
          module DNSStatus
            extend Telnyx::Internal::Type::Enum

            NOT_APPLICABLE = :not_applicable
            PENDING_PTR = :pending_ptr
            PENDING_DNS = :pending_dns
            DNS_CONFIRMED = :dns_confirmed
            DNS_LOST = :dns_lost

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # State of the Telnyx PTR change: `pending`, `pr_open`, `merged`, `confirmed`,
          # `failed`, or `abandoned`. Informational.
          #
          # @see Telnyx::Models::Email::DedicatedIP::Provisioning#ptr_request_state
          module PtrRequestState
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            PR_OPEN = :pr_open
            MERGED = :merged
            CONFIRMED = :confirmed
            FAILED = :failed
            ABANDONED = :abandoned

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Same value as `provisioning.dns_status`.
        #
        # @see Telnyx::Models::Email::DedicatedIP#provisioning_status
        module ProvisioningStatus
          extend Telnyx::Internal::Type::Enum

          NOT_APPLICABLE = :not_applicable
          PENDING_PTR = :pending_ptr
          PENDING_DNS = :pending_dns
          DNS_CONFIRMED = :dns_confirmed
          DNS_LOST = :dns_lost

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Email::DedicatedIP#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          DEDICATED_IP = :dedicated_ip

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Lifecycle status. `provisioning`: purchased and billed, carries no mail until
        # `start_warmup`. `warming_up`: warm-up ramp in progress. `active`: ramp complete.
        # `suspended`: suspended by Telnyx; carries no mail and is still billed.
        # `released`: returned to Telnyx; carries no mail.
        #
        # @see Telnyx::Models::Email::DedicatedIP#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PROVISIONING = :provisioning
          WARMING_UP = :warming_up
          ACTIVE = :active
          SUSPENDED = :suspended
          RELEASED = :released

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Email::DedicatedIP#warmup
        class Warmup < Telnyx::Internal::Type::BaseModel
          # @!attribute daily_cap
          #   Daily cap of the current ramp stage. Null until the scheduler arms the first
          #   stage, and cleared when the ramp completes, automatically or through
          #   `complete_warmup`. On an `active` IP this value is informational and can keep an
          #   earlier stage cap after a suspension is lifted; it does not limit sending.
          #
          #   @return [Integer, nil]
          optional :daily_cap, Integer, nil?: true

          # @!attribute paused
          #   True while the ramp is paused.
          #
          #   @return [Boolean, nil]
          optional :paused, Telnyx::Internal::Type::Boolean

          # @!attribute paused_at
          #   When the ramp was paused. Null when not paused.
          #
          #   @return [Time, nil]
          optional :paused_at, Time, nil?: true

          # @!attribute progress
          #   Ramp progress (0-100): the share of the 28 send-day schedule completed. Only UTC
          #   days on which the IP sent mail count. Set to 100 when the ramp completes,
          #   automatically or through `complete_warmup`. On an `active` IP this value is
          #   informational and can keep an earlier value after a suspension is lifted.
          #
          #   @return [Integer, nil]
          optional :progress, Integer

          # @!attribute started_at
          #   When `start_warmup` was called. Null before warm-up starts and after release.
          #
          #   @return [Time, nil]
          optional :started_at, Time, nil?: true

          # @!attribute today
          #   Today's warmup allowance report card (current UTC day). Null outside the warmup
          #   window (before start_warmup, after release/suspension). `active` IPs report the
          #   ramp-complete allowance, except as described for `cap`.
          #
          #   @return [Telnyx::Models::Email::DedicatedIP::Warmup::Today, nil]
          optional :today, -> { Telnyx::Email::DedicatedIP::Warmup::Today }, nil?: true

          # @!method initialize(daily_cap: nil, paused: nil, paused_at: nil, progress: nil, started_at: nil, today: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Email::DedicatedIP::Warmup} for more details.
          #
          #   Warmup ramp state for a dedicated IP.
          #
          #   @param daily_cap [Integer, nil] Daily cap of the current ramp stage. Null until the scheduler arms the first sta
          #
          #   @param paused [Boolean] True while the ramp is paused.
          #
          #   @param paused_at [Time, nil] When the ramp was paused. Null when not paused.
          #
          #   @param progress [Integer] Ramp progress (0-100): the share of the 28 send-day schedule completed. Only UTC
          #
          #   @param started_at [Time, nil] When `start_warmup` was called. Null before warm-up starts and after release.
          #
          #   @param today [Telnyx::Models::Email::DedicatedIP::Warmup::Today, nil] Today's warmup allowance report card (current UTC day). Null outside the warmup

          # @see Telnyx::Models::Email::DedicatedIP::Warmup#today
          class Today < Telnyx::Internal::Type::BaseModel
            # @!attribute cap
            #   The day's allowance cap. Null when the ramp has not opened yet (day 0: the
            #   scheduler has not armed a stage cap) — distinct from a spent day, which reports
            #   the cap with remaining 0. `active` IPs report `100000000`, the ramp-complete
            #   cap; `complete_warmup` applies it to the current day immediately. A day's
            #   allowance created before the IP became `active` can keep its stored `cap` and
            #   `remaining` until the next first-attempt send refreshes them.
            #
            #   @return [Integer, nil]
            optional :cap, Integer, nil?: true

            # @!attribute day
            #   The UTC day this snapshot describes (warmup caps reset at UTC midnight).
            #
            #   @return [Date, nil]
            optional :day, Date

            # @!attribute granted
            #   First-attempt sends released from warmup hold so far today. Delivery retries
            #   never lease allowance and are not counted.
            #
            #   @return [Integer, nil]
            optional :granted, Integer

            # @!attribute remaining
            #   Headroom left today. A queued send held by the daily cap is explained by
            #   remaining == 0; null mirrors cap (ramp not open yet). On an `active` IP whose
            #   `cap` is below `100000000`, remaining == 0 is a stored allowance and does not
            #   block the next eligible first-attempt send.
            #
            #   @return [Integer, nil]
            optional :remaining, Integer, nil?: true

            # @!method initialize(cap: nil, day: nil, granted: nil, remaining: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Email::DedicatedIP::Warmup::Today} for more details.
            #
            #   Today's warmup allowance report card (current UTC day). Null outside the warmup
            #   window (before start_warmup, after release/suspension). `active` IPs report the
            #   ramp-complete allowance, except as described for `cap`.
            #
            #   @param cap [Integer, nil] The day's allowance cap. Null when the ramp has not opened yet (day 0: the sched
            #
            #   @param day [Date] The UTC day this snapshot describes (warmup caps reset at UTC midnight).
            #
            #   @param granted [Integer] First-attempt sends released from warmup hold so far today. Delivery retries nev
            #
            #   @param remaining [Integer, nil] Headroom left today. A queued send held by the daily cap is explained by remaini
          end
        end
      end
    end
  end
end
