# typed: strong

module Telnyx
  class Client < Telnyx::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :api_key

    sig { returns(T.nilable(String)) }
    attr_reader :public_key

    sig { returns(Telnyx::Resources::Legacy) }
    attr_reader :legacy

    sig { returns(Telnyx::Resources::OAuth) }
    attr_reader :oauth

    sig { returns(Telnyx::Resources::OAuthClients) }
    attr_reader :oauth_clients

    sig { returns(Telnyx::Resources::OAuthGrants) }
    attr_reader :oauth_grants

    sig { returns(Telnyx::Resources::Webhooks) }
    attr_reader :webhooks

    sig { returns(Telnyx::Resources::AccessIPAddress) }
    attr_reader :access_ip_address

    sig { returns(Telnyx::Resources::AccessIPRanges) }
    attr_reader :access_ip_ranges

    sig { returns(Telnyx::Resources::Actions) }
    attr_reader :actions

    sig { returns(Telnyx::Resources::Addresses) }
    attr_reader :addresses

    sig { returns(Telnyx::Resources::AdvancedOrders) }
    attr_reader :advanced_orders

    sig { returns(Telnyx::Resources::AI) }
    attr_reader :ai

    sig { returns(Telnyx::Resources::AuditEvents) }
    attr_reader :audit_events

    sig { returns(Telnyx::Resources::AuthenticationProviders) }
    attr_reader :authentication_providers

    sig { returns(Telnyx::Resources::AvailablePhoneNumberBlocks) }
    attr_reader :available_phone_number_blocks

    sig { returns(Telnyx::Resources::AvailablePhoneNumbers) }
    attr_reader :available_phone_numbers

    sig { returns(Telnyx::Resources::Balance) }
    attr_reader :balance

    sig { returns(Telnyx::Resources::BillingGroups) }
    attr_reader :billing_groups

    sig { returns(Telnyx::Resources::Brand) }
    attr_reader :brand

    sig { returns(Telnyx::Resources::BulkSimCardActions) }
    attr_reader :bulk_sim_card_actions

    sig { returns(Telnyx::Resources::BundlePricing) }
    attr_reader :bundle_pricing

    sig { returns(Telnyx::Resources::CallControlApplications) }
    attr_reader :call_control_applications

    sig { returns(Telnyx::Resources::CallEvents) }
    attr_reader :call_events

    sig { returns(Telnyx::Resources::Calls) }
    attr_reader :calls

    sig { returns(Telnyx::Resources::Campaign) }
    attr_reader :campaign

    sig { returns(Telnyx::Resources::CampaignBuilder) }
    attr_reader :campaign_builder

    sig { returns(Telnyx::Resources::ChannelZones) }
    attr_reader :channel_zones

    sig { returns(Telnyx::Resources::ChargesBreakdown) }
    attr_reader :charges_breakdown

    sig { returns(Telnyx::Resources::ChargesSummary) }
    attr_reader :charges_summary

    sig { returns(Telnyx::Resources::Comments) }
    attr_reader :comments

    sig { returns(Telnyx::Resources::Conferences) }
    attr_reader :conferences

    sig { returns(Telnyx::Resources::Connections) }
    attr_reader :connections

    sig { returns(Telnyx::Resources::CountryCoverage) }
    attr_reader :country_coverage

    sig { returns(Telnyx::Resources::CredentialConnections) }
    attr_reader :credential_connections

    sig { returns(Telnyx::Resources::CustomStorageCredentials) }
    attr_reader :custom_storage_credentials

    sig { returns(Telnyx::Resources::CustomerServiceRecords) }
    attr_reader :customer_service_records

    sig { returns(Telnyx::Resources::DetailRecords) }
    attr_reader :detail_records

    sig { returns(Telnyx::Resources::DialogflowConnections) }
    attr_reader :dialogflow_connections

    sig { returns(Telnyx::Resources::DocumentLinks) }
    attr_reader :document_links

    sig { returns(Telnyx::Resources::Documents) }
    attr_reader :documents

    sig { returns(Telnyx::Resources::DynamicEmergencyAddresses) }
    attr_reader :dynamic_emergency_addresses

    sig { returns(Telnyx::Resources::DynamicEmergencyEndpoints) }
    attr_reader :dynamic_emergency_endpoints

    sig { returns(Telnyx::Resources::Enum) }
    attr_reader :enum

    sig { returns(Telnyx::Resources::ExternalConnections) }
    attr_reader :external_connections

    sig { returns(Telnyx::Resources::FaxApplications) }
    attr_reader :fax_applications

    sig { returns(Telnyx::Resources::Faxes) }
    attr_reader :faxes

    sig { returns(Telnyx::Resources::FqdnConnections) }
    attr_reader :fqdn_connections

    sig { returns(Telnyx::Resources::Fqdns) }
    attr_reader :fqdns

    sig { returns(Telnyx::Resources::GlobalIPAllowedPorts) }
    attr_reader :global_ip_allowed_ports

    sig { returns(Telnyx::Resources::GlobalIPAssignmentHealth) }
    attr_reader :global_ip_assignment_health

    sig { returns(Telnyx::Resources::GlobalIPAssignments) }
    attr_reader :global_ip_assignments

    sig { returns(Telnyx::Resources::GlobalIPAssignmentsUsage) }
    attr_reader :global_ip_assignments_usage

    sig { returns(Telnyx::Resources::GlobalIPHealthCheckTypes) }
    attr_reader :global_ip_health_check_types

    sig { returns(Telnyx::Resources::GlobalIPHealthChecks) }
    attr_reader :global_ip_health_checks

    sig { returns(Telnyx::Resources::GlobalIPLatency) }
    attr_reader :global_ip_latency

    sig { returns(Telnyx::Resources::GlobalIPProtocols) }
    attr_reader :global_ip_protocols

    sig { returns(Telnyx::Resources::GlobalIPUsage) }
    attr_reader :global_ip_usage

    sig { returns(Telnyx::Resources::GlobalIPs) }
    attr_reader :global_ips

    sig { returns(Telnyx::Resources::InboundChannels) }
    attr_reader :inbound_channels

    sig { returns(Telnyx::Resources::IntegrationSecrets) }
    attr_reader :integration_secrets

    sig { returns(Telnyx::Resources::InventoryCoverage) }
    attr_reader :inventory_coverage

    sig { returns(Telnyx::Resources::Invoices) }
    attr_reader :invoices

    sig { returns(Telnyx::Resources::IPConnections) }
    attr_reader :ip_connections

    sig { returns(Telnyx::Resources::IPs) }
    attr_reader :ips

    sig { returns(Telnyx::Resources::LedgerBillingGroupReports) }
    attr_reader :ledger_billing_group_reports

    sig { returns(Telnyx::Resources::List) }
    attr_reader :list

    sig { returns(Telnyx::Resources::ManagedAccounts) }
    attr_reader :managed_accounts

    sig { returns(Telnyx::Resources::Media) }
    attr_reader :media

    sig { returns(Telnyx::Resources::Messages) }
    attr_reader :messages

    sig { returns(Telnyx::Resources::Messaging) }
    attr_reader :messaging

    sig { returns(Telnyx::Resources::MessagingHostedNumberOrders) }
    attr_reader :messaging_hosted_number_orders

    sig { returns(Telnyx::Resources::MessagingHostedNumbers) }
    attr_reader :messaging_hosted_numbers

    sig { returns(Telnyx::Resources::MessagingNumbersBulkUpdates) }
    attr_reader :messaging_numbers_bulk_updates

    sig { returns(Telnyx::Resources::MessagingOptouts) }
    attr_reader :messaging_optouts

    sig { returns(Telnyx::Resources::MessagingProfiles) }
    attr_reader :messaging_profiles

    sig { returns(Telnyx::Resources::MessagingTollfree) }
    attr_reader :messaging_tollfree

    sig { returns(Telnyx::Resources::MessagingURLDomains) }
    attr_reader :messaging_url_domains

    sig { returns(Telnyx::Resources::Messsages) }
    attr_reader :messsages

    sig { returns(Telnyx::Resources::MobileNetworkOperators) }
    attr_reader :mobile_network_operators

    sig { returns(Telnyx::Resources::MobilePushCredentials) }
    attr_reader :mobile_push_credentials

    sig { returns(Telnyx::Resources::NetworkCoverage) }
    attr_reader :network_coverage

    sig { returns(Telnyx::Resources::Networks) }
    attr_reader :networks

    sig { returns(Telnyx::Resources::NotificationChannels) }
    attr_reader :notification_channels

    sig { returns(Telnyx::Resources::NotificationEventConditions) }
    attr_reader :notification_event_conditions

    sig { returns(Telnyx::Resources::NotificationEvents) }
    attr_reader :notification_events

    sig { returns(Telnyx::Resources::NotificationProfiles) }
    attr_reader :notification_profiles

    sig { returns(Telnyx::Resources::NotificationSettings) }
    attr_reader :notification_settings

    sig { returns(Telnyx::Resources::NumberBlockOrders) }
    attr_reader :number_block_orders

    sig { returns(Telnyx::Resources::NumberLookup) }
    attr_reader :number_lookup

    sig { returns(Telnyx::Resources::NumberOrderPhoneNumbers) }
    attr_reader :number_order_phone_numbers

    sig { returns(Telnyx::Resources::NumberOrders) }
    attr_reader :number_orders

    sig { returns(Telnyx::Resources::NumberReservations) }
    attr_reader :number_reservations

    sig { returns(Telnyx::Resources::NumbersFeatures) }
    attr_reader :numbers_features

    sig { returns(Telnyx::Resources::OperatorConnect) }
    attr_reader :operator_connect

    sig { returns(Telnyx::Resources::OtaUpdates) }
    attr_reader :ota_updates

    sig { returns(Telnyx::Resources::OutboundVoiceProfiles) }
    attr_reader :outbound_voice_profiles

    sig { returns(Telnyx::Resources::Payment) }
    attr_reader :payment

    sig { returns(Telnyx::Resources::PhoneNumberAssignmentByProfile) }
    attr_reader :phone_number_assignment_by_profile

    sig { returns(Telnyx::Resources::PhoneNumberBlocks) }
    attr_reader :phone_number_blocks

    sig { returns(Telnyx::Resources::PhoneNumberCampaigns) }
    attr_reader :phone_number_campaigns

    sig { returns(Telnyx::Resources::PhoneNumbers) }
    attr_reader :phone_numbers

    sig { returns(Telnyx::Resources::PhoneNumbersRegulatoryRequirements) }
    attr_reader :phone_numbers_regulatory_requirements

    sig { returns(Telnyx::Resources::PortabilityChecks) }
    attr_reader :portability_checks

    sig { returns(Telnyx::Resources::Porting) }
    attr_reader :porting

    sig { returns(Telnyx::Resources::PortingOrders) }
    attr_reader :porting_orders

    sig { returns(Telnyx::Resources::PortingPhoneNumbers) }
    attr_reader :porting_phone_numbers

    sig { returns(Telnyx::Resources::Portouts) }
    attr_reader :portouts

    sig { returns(Telnyx::Resources::PrivateWirelessGateways) }
    attr_reader :private_wireless_gateways

    sig { returns(Telnyx::Resources::PublicInternetGateways) }
    attr_reader :public_internet_gateways

    sig { returns(Telnyx::Resources::Queues) }
    attr_reader :queues

    sig { returns(Telnyx::Resources::RcsAgents) }
    attr_reader :rcs_agents

    sig { returns(Telnyx::Resources::RecordingTranscriptions) }
    attr_reader :recording_transcriptions

    sig { returns(Telnyx::Resources::Recordings) }
    attr_reader :recordings

    sig { returns(Telnyx::Resources::Regions) }
    attr_reader :regions

    sig { returns(Telnyx::Resources::RegulatoryRequirements) }
    attr_reader :regulatory_requirements

    sig { returns(Telnyx::Resources::Reports) }
    attr_reader :reports

    sig { returns(Telnyx::Resources::RequirementGroups) }
    attr_reader :requirement_groups

    sig { returns(Telnyx::Resources::RequirementTypes) }
    attr_reader :requirement_types

    sig { returns(Telnyx::Resources::Requirements) }
    attr_reader :requirements

    sig { returns(Telnyx::Resources::RoomCompositions) }
    attr_reader :room_compositions

    sig { returns(Telnyx::Resources::RoomParticipants) }
    attr_reader :room_participants

    sig { returns(Telnyx::Resources::RoomRecordings) }
    attr_reader :room_recordings

    sig { returns(Telnyx::Resources::Rooms) }
    attr_reader :rooms

    sig { returns(Telnyx::Resources::Seti) }
    attr_reader :seti

    sig { returns(Telnyx::Resources::ShortCodes) }
    attr_reader :short_codes

    sig { returns(Telnyx::Resources::SimCardDataUsageNotifications) }
    attr_reader :sim_card_data_usage_notifications

    sig { returns(Telnyx::Resources::SimCardGroups) }
    attr_reader :sim_card_groups

    sig { returns(Telnyx::Resources::SimCardOrderPreview) }
    attr_reader :sim_card_order_preview

    sig { returns(Telnyx::Resources::SimCardOrders) }
    attr_reader :sim_card_orders

    sig { returns(Telnyx::Resources::SimCards) }
    attr_reader :sim_cards

    sig { returns(Telnyx::Resources::SiprecConnectors) }
    attr_reader :siprec_connectors

    sig { returns(Telnyx::Resources::Storage) }
    attr_reader :storage

    sig { returns(Telnyx::Resources::SubNumberOrders) }
    attr_reader :sub_number_orders

    sig { returns(Telnyx::Resources::SubNumberOrdersReport) }
    attr_reader :sub_number_orders_report

    sig { returns(Telnyx::Resources::TelephonyCredentials) }
    attr_reader :telephony_credentials

    sig { returns(Telnyx::Resources::Texml) }
    attr_reader :texml

    sig { returns(Telnyx::Resources::TexmlApplications) }
    attr_reader :texml_applications

    sig { returns(Telnyx::Resources::TextToSpeech) }
    attr_reader :text_to_speech

    sig { returns(Telnyx::Resources::UsageReports) }
    attr_reader :usage_reports

    sig { returns(Telnyx::Resources::UserAddresses) }
    attr_reader :user_addresses

    sig { returns(Telnyx::Resources::UserTags) }
    attr_reader :user_tags

    sig { returns(Telnyx::Resources::Verifications) }
    attr_reader :verifications

    sig { returns(Telnyx::Resources::VerifiedNumbers) }
    attr_reader :verified_numbers

    sig { returns(Telnyx::Resources::VerifyProfiles) }
    attr_reader :verify_profiles

    sig { returns(Telnyx::Resources::VirtualCrossConnects) }
    attr_reader :virtual_cross_connects

    sig { returns(Telnyx::Resources::VirtualCrossConnectsCoverage) }
    attr_reader :virtual_cross_connects_coverage

    sig { returns(Telnyx::Resources::WebhookDeliveries) }
    attr_reader :webhook_deliveries

    sig { returns(Telnyx::Resources::WireguardInterfaces) }
    attr_reader :wireguard_interfaces

    sig { returns(Telnyx::Resources::WireguardPeers) }
    attr_reader :wireguard_peers

    sig { returns(Telnyx::Resources::Wireless) }
    attr_reader :wireless

    sig { returns(Telnyx::Resources::WirelessBlocklistValues) }
    attr_reader :wireless_blocklist_values

    sig { returns(Telnyx::Resources::WirelessBlocklists) }
    attr_reader :wireless_blocklists

    sig { returns(Telnyx::Resources::PartnerCampaigns) }
    attr_reader :partner_campaigns

    sig { returns(Telnyx::Resources::WellKnown) }
    attr_reader :well_known

    sig { returns(Telnyx::Resources::InexplicitNumberOrders) }
    attr_reader :inexplicit_number_orders

    sig { returns(Telnyx::Resources::MobilePhoneNumbers) }
    attr_reader :mobile_phone_numbers

    sig { returns(Telnyx::Resources::MobileVoiceConnections) }
    attr_reader :mobile_voice_connections

    sig { returns(Telnyx::Resources::Public) }
    attr_reader :public

    sig { returns(Telnyx::Resources::Number10dlc) }
    attr_reader :number_10dlc

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # @api private
    sig { returns(T::Boolean) }
    def base_url_overridden?
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        public_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["TELNYX_API_KEY"]`
      api_key: ENV["TELNYX_API_KEY"],
      # Defaults to `ENV["TELNYX_PUBLIC_KEY"]`
      public_key: ENV["TELNYX_PUBLIC_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["TELNYX_BASE_URL"]`
      base_url: ENV["TELNYX_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Telnyx::Client::DEFAULT_MAX_RETRIES,
      timeout: Telnyx::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Telnyx::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Telnyx::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
