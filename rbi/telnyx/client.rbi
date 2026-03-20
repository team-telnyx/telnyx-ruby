# typed: strong

module Telnyx
  class Client < Telnyx::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(T.nilable(String)) }
    attr_reader :api_key

    sig { returns(T.nilable(String)) }
    attr_reader :public_key

    sig { returns(T.nilable(String)) }
    attr_reader :client_id

    sig { returns(T.nilable(String)) }
    attr_reader :client_secret

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

    # IP Address Operations
    sig { returns(Telnyx::Resources::AccessIPAddress) }
    attr_reader :access_ip_address

    # IP Range Operations
    sig { returns(Telnyx::Resources::AccessIPRanges) }
    attr_reader :access_ip_ranges

    sig { returns(Telnyx::Resources::Actions) }
    attr_reader :actions

    # Operations to work with Address records. Address records are emergency-validated
    # addresses meant to be associated with phone numbers. They are validated for
    # emergency usage purposes at creation time, although you may validate them
    # separately with a custom workflow using the ValidateAddress operation
    # separately. Address records are not usable for physical orders, such as for
    # Telnyx SIM cards, please use UserAddress for that. It is not possible to
    # entirely skip emergency service validation for Address records; if an emergency
    # provider for a phone number rejects the address then it cannot be used on a
    # phone number. To prevent records from getting out of sync, Address records are
    # immutable and cannot be altered once created. If you realize you need to alter
    # an address, a new record must be created with the differing address.
    sig { returns(Telnyx::Resources::Addresses) }
    attr_reader :addresses

    sig { returns(Telnyx::Resources::AdvancedOrders) }
    attr_reader :advanced_orders

    # Generate text with LLMs
    sig { returns(Telnyx::Resources::AI) }
    attr_reader :ai

    # Audit log operations.
    sig { returns(Telnyx::Resources::AuditEvents) }
    attr_reader :audit_events

    sig { returns(Telnyx::Resources::AuthenticationProviders) }
    attr_reader :authentication_providers

    # Number search
    sig { returns(Telnyx::Resources::AvailablePhoneNumberBlocks) }
    attr_reader :available_phone_number_blocks

    # Number search
    sig { returns(Telnyx::Resources::AvailablePhoneNumbers) }
    attr_reader :available_phone_numbers

    # Billing operations
    sig { returns(Telnyx::Resources::Balance) }
    attr_reader :balance

    # Billing groups operations
    sig { returns(Telnyx::Resources::BillingGroups) }
    attr_reader :billing_groups

    # View SIM card actions, their progress and timestamps using the SIM Card Actions
    # API
    sig { returns(Telnyx::Resources::BulkSimCardActions) }
    attr_reader :bulk_sim_card_actions

    sig { returns(Telnyx::Resources::BundlePricing) }
    attr_reader :bundle_pricing

    # Call Control applications operations
    sig { returns(Telnyx::Resources::CallControlApplications) }
    attr_reader :call_control_applications

    # Call Control debugging
    sig { returns(Telnyx::Resources::CallEvents) }
    attr_reader :call_events

    sig { returns(Telnyx::Resources::Calls) }
    attr_reader :calls

    # Voice Channels
    sig { returns(Telnyx::Resources::ChannelZones) }
    attr_reader :channel_zones

    sig { returns(Telnyx::Resources::ChargesBreakdown) }
    attr_reader :charges_breakdown

    sig { returns(Telnyx::Resources::ChargesSummary) }
    attr_reader :charges_summary

    # Number orders
    sig { returns(Telnyx::Resources::Comments) }
    attr_reader :comments

    # Conference command operations
    sig { returns(Telnyx::Resources::Conferences) }
    attr_reader :conferences

    sig { returns(Telnyx::Resources::Connections) }
    attr_reader :connections

    # Country Coverage
    sig { returns(Telnyx::Resources::CountryCoverage) }
    attr_reader :country_coverage

    # Credential connection operations
    sig { returns(Telnyx::Resources::CredentialConnections) }
    attr_reader :credential_connections

    # Call Recordings operations.
    sig { returns(Telnyx::Resources::CustomStorageCredentials) }
    attr_reader :custom_storage_credentials

    # Customer Service Record operations
    sig { returns(Telnyx::Resources::CustomerServiceRecords) }
    attr_reader :customer_service_records

    # Detail Records operations
    sig { returns(Telnyx::Resources::DetailRecords) }
    attr_reader :detail_records

    # Dialogflow Connection Operations.
    sig { returns(Telnyx::Resources::DialogflowConnections) }
    attr_reader :dialogflow_connections

    # Documents
    sig { returns(Telnyx::Resources::DocumentLinks) }
    attr_reader :document_links

    # Documents
    sig { returns(Telnyx::Resources::Documents) }
    attr_reader :documents

    # Dynamic emergency address operations
    sig { returns(Telnyx::Resources::DynamicEmergencyAddresses) }
    attr_reader :dynamic_emergency_addresses

    # Dynamic Emergency Endpoints
    sig { returns(Telnyx::Resources::DynamicEmergencyEndpoints) }
    attr_reader :dynamic_emergency_endpoints

    # External Connections operations
    sig { returns(Telnyx::Resources::ExternalConnections) }
    attr_reader :external_connections

    # Fax Applications operations
    sig { returns(Telnyx::Resources::FaxApplications) }
    attr_reader :fax_applications

    # Programmable fax command operations
    sig { returns(Telnyx::Resources::Faxes) }
    attr_reader :faxes

    # FQDN connection operations
    sig { returns(Telnyx::Resources::FqdnConnections) }
    attr_reader :fqdn_connections

    # FQDN operations
    sig { returns(Telnyx::Resources::Fqdns) }
    attr_reader :fqdns

    # Global IPs
    sig { returns(Telnyx::Resources::GlobalIPAllowedPorts) }
    attr_reader :global_ip_allowed_ports

    # Global IPs
    sig { returns(Telnyx::Resources::GlobalIPAssignmentHealth) }
    attr_reader :global_ip_assignment_health

    # Global IPs
    sig { returns(Telnyx::Resources::GlobalIPAssignments) }
    attr_reader :global_ip_assignments

    # Global IPs
    sig { returns(Telnyx::Resources::GlobalIPAssignmentsUsage) }
    attr_reader :global_ip_assignments_usage

    # Global IPs
    sig { returns(Telnyx::Resources::GlobalIPHealthCheckTypes) }
    attr_reader :global_ip_health_check_types

    # Global IPs
    sig { returns(Telnyx::Resources::GlobalIPHealthChecks) }
    attr_reader :global_ip_health_checks

    # Global IPs
    sig { returns(Telnyx::Resources::GlobalIPLatency) }
    attr_reader :global_ip_latency

    # Global IPs
    sig { returns(Telnyx::Resources::GlobalIPProtocols) }
    attr_reader :global_ip_protocols

    # Global IPs
    sig { returns(Telnyx::Resources::GlobalIPUsage) }
    attr_reader :global_ip_usage

    # Global IPs
    sig { returns(Telnyx::Resources::GlobalIPs) }
    attr_reader :global_ips

    # Voice Channels
    sig { returns(Telnyx::Resources::InboundChannels) }
    attr_reader :inbound_channels

    # Store and retrieve integration secrets
    sig { returns(Telnyx::Resources::IntegrationSecrets) }
    attr_reader :integration_secrets

    # Inventory Level
    sig { returns(Telnyx::Resources::InventoryCoverage) }
    attr_reader :inventory_coverage

    sig { returns(Telnyx::Resources::Invoices) }
    attr_reader :invoices

    # IP connection operations
    sig { returns(Telnyx::Resources::IPConnections) }
    attr_reader :ip_connections

    # IP operations
    sig { returns(Telnyx::Resources::IPs) }
    attr_reader :ips

    # Ledger billing reports
    sig { returns(Telnyx::Resources::LedgerBillingGroupReports) }
    attr_reader :ledger_billing_group_reports

    # Voice Channels
    sig { returns(Telnyx::Resources::List) }
    attr_reader :list

    # Managed Accounts operations
    sig { returns(Telnyx::Resources::ManagedAccounts) }
    attr_reader :managed_accounts

    # Media Storage operations
    sig { returns(Telnyx::Resources::Media) }
    attr_reader :media

    sig { returns(Telnyx::Resources::Messages) }
    attr_reader :messages

    sig { returns(Telnyx::Resources::Messaging) }
    attr_reader :messaging

    # Manage your messaging hosted numbers
    sig { returns(Telnyx::Resources::MessagingHostedNumberOrders) }
    attr_reader :messaging_hosted_number_orders

    sig { returns(Telnyx::Resources::MessagingHostedNumbers) }
    attr_reader :messaging_hosted_numbers

    # Configure your phone numbers
    sig { returns(Telnyx::Resources::MessagingNumbersBulkUpdates) }
    attr_reader :messaging_numbers_bulk_updates

    # Opt-Out Management
    sig { returns(Telnyx::Resources::MessagingOptouts) }
    attr_reader :messaging_optouts

    sig { returns(Telnyx::Resources::MessagingProfiles) }
    attr_reader :messaging_profiles

    sig { returns(Telnyx::Resources::MessagingTollfree) }
    attr_reader :messaging_tollfree

    # Messaging URL Domains
    sig { returns(Telnyx::Resources::MessagingURLDomains) }
    attr_reader :messaging_url_domains

    # Mobile network operators operations
    sig { returns(Telnyx::Resources::MobileNetworkOperators) }
    attr_reader :mobile_network_operators

    # Mobile push credential management
    sig { returns(Telnyx::Resources::MobilePushCredentials) }
    attr_reader :mobile_push_credentials

    sig { returns(Telnyx::Resources::NetworkCoverage) }
    attr_reader :network_coverage

    # Network operations
    sig { returns(Telnyx::Resources::Networks) }
    attr_reader :networks

    # Notification settings operations
    sig { returns(Telnyx::Resources::NotificationChannels) }
    attr_reader :notification_channels

    # Notification settings operations
    sig { returns(Telnyx::Resources::NotificationEventConditions) }
    attr_reader :notification_event_conditions

    # Notification settings operations
    sig { returns(Telnyx::Resources::NotificationEvents) }
    attr_reader :notification_events

    # Notification settings operations
    sig { returns(Telnyx::Resources::NotificationProfiles) }
    attr_reader :notification_profiles

    # Notification settings operations
    sig { returns(Telnyx::Resources::NotificationSettings) }
    attr_reader :notification_settings

    sig { returns(Telnyx::Resources::NumberBlockOrders) }
    attr_reader :number_block_orders

    # Look up phone number data
    sig { returns(Telnyx::Resources::NumberLookup) }
    attr_reader :number_lookup

    sig { returns(Telnyx::Resources::NumberOrderPhoneNumbers) }
    attr_reader :number_order_phone_numbers

    # Number orders
    sig { returns(Telnyx::Resources::NumberOrders) }
    attr_reader :number_orders

    # Number reservations
    sig { returns(Telnyx::Resources::NumberReservations) }
    attr_reader :number_reservations

    sig { returns(Telnyx::Resources::NumbersFeatures) }
    attr_reader :numbers_features

    sig { returns(Telnyx::Resources::OperatorConnect) }
    attr_reader :operator_connect

    # OTA updates operations
    sig { returns(Telnyx::Resources::OtaUpdates) }
    attr_reader :ota_updates

    # Outbound voice profiles operations
    sig { returns(Telnyx::Resources::OutboundVoiceProfiles) }
    attr_reader :outbound_voice_profiles

    # Operations for managing stored payment transactions.
    sig { returns(Telnyx::Resources::Payment) }
    attr_reader :payment

    sig { returns(Telnyx::Resources::PhoneNumberBlocks) }
    attr_reader :phone_number_blocks

    # Configure your phone numbers
    sig { returns(Telnyx::Resources::PhoneNumbers) }
    attr_reader :phone_numbers

    # Regulatory Requirements
    sig { returns(Telnyx::Resources::PhoneNumbersRegulatoryRequirements) }
    attr_reader :phone_numbers_regulatory_requirements

    # Determining portability of phone numbers
    sig { returns(Telnyx::Resources::PortabilityChecks) }
    attr_reader :portability_checks

    # Endpoints related to porting orders management.
    sig { returns(Telnyx::Resources::Porting) }
    attr_reader :porting

    # Endpoints related to porting orders management.
    sig { returns(Telnyx::Resources::PortingOrders) }
    attr_reader :porting_orders

    # Endpoints related to porting orders management.
    sig { returns(Telnyx::Resources::PortingPhoneNumbers) }
    attr_reader :porting_phone_numbers

    # Number portout operations
    sig { returns(Telnyx::Resources::Portouts) }
    attr_reader :portouts

    # Private Wireless Gateways operations
    sig { returns(Telnyx::Resources::PrivateWirelessGateways) }
    attr_reader :private_wireless_gateways

    # Public Internet Gateway operations
    sig { returns(Telnyx::Resources::PublicInternetGateways) }
    attr_reader :public_internet_gateways

    # Queue commands operations
    sig { returns(Telnyx::Resources::Queues) }
    attr_reader :queues

    sig { returns(Telnyx::Resources::RcsAgents) }
    attr_reader :rcs_agents

    # Call Recordings operations.
    sig { returns(Telnyx::Resources::RecordingTranscriptions) }
    attr_reader :recording_transcriptions

    # Call Recordings operations.
    sig { returns(Telnyx::Resources::Recordings) }
    attr_reader :recordings

    # Regions
    sig { returns(Telnyx::Resources::Regions) }
    attr_reader :regions

    # Regulatory Requirements
    sig { returns(Telnyx::Resources::RegulatoryRequirements) }
    attr_reader :regulatory_requirements

    sig { returns(Telnyx::Resources::Reports) }
    attr_reader :reports

    # Requirement Groups
    sig { returns(Telnyx::Resources::RequirementGroups) }
    attr_reader :requirement_groups

    # Types of requirements for international numbers and porting orders
    sig { returns(Telnyx::Resources::RequirementTypes) }
    attr_reader :requirement_types

    # Requirements for international numbers and porting orders
    sig { returns(Telnyx::Resources::Requirements) }
    attr_reader :requirements

    # Rooms Compositions operations.
    sig { returns(Telnyx::Resources::RoomCompositions) }
    attr_reader :room_compositions

    # Rooms Participants operations.
    sig { returns(Telnyx::Resources::RoomParticipants) }
    attr_reader :room_participants

    # Rooms Recordings operations.
    sig { returns(Telnyx::Resources::RoomRecordings) }
    attr_reader :room_recordings

    # Rooms operations.
    sig { returns(Telnyx::Resources::Rooms) }
    attr_reader :rooms

    # Observability into Telnyx platform stability and performance.
    sig { returns(Telnyx::Resources::Seti) }
    attr_reader :seti

    # Short codes
    sig { returns(Telnyx::Resources::ShortCodes) }
    attr_reader :short_codes

    # SIM Cards operations
    sig { returns(Telnyx::Resources::SimCardDataUsageNotifications) }
    attr_reader :sim_card_data_usage_notifications

    # SIM Card Groups operations
    sig { returns(Telnyx::Resources::SimCardGroups) }
    attr_reader :sim_card_groups

    # SIM Card Orders operations
    sig { returns(Telnyx::Resources::SimCardOrderPreview) }
    attr_reader :sim_card_order_preview

    # SIM Card Orders operations
    sig { returns(Telnyx::Resources::SimCardOrders) }
    attr_reader :sim_card_orders

    # SIM Cards operations
    sig { returns(Telnyx::Resources::SimCards) }
    attr_reader :sim_cards

    # SIPREC connectors configuration.
    sig { returns(Telnyx::Resources::SiprecConnectors) }
    attr_reader :siprec_connectors

    # Migrate data from an external provider into Telnyx Cloud Storage
    sig { returns(Telnyx::Resources::Storage) }
    attr_reader :storage

    sig { returns(Telnyx::Resources::SubNumberOrders) }
    attr_reader :sub_number_orders

    # Number orders
    sig { returns(Telnyx::Resources::SubNumberOrdersReport) }
    attr_reader :sub_number_orders_report

    sig { returns(Telnyx::Resources::TelephonyCredentials) }
    attr_reader :telephony_credentials

    # TeXML REST Commands
    sig { returns(Telnyx::Resources::Texml) }
    attr_reader :texml

    # TeXML Applications operations
    sig { returns(Telnyx::Resources::TexmlApplications) }
    attr_reader :texml_applications

    # Text to speech streaming command operations
    sig { returns(Telnyx::Resources::TextToSpeech) }
    attr_reader :text_to_speech

    # Usage data reporting across Telnyx products
    sig { returns(Telnyx::Resources::UsageReports) }
    attr_reader :usage_reports

    # Operations for working with UserAddress records. UserAddress records are stored
    # addresses that users can use for non-emergency-calling purposes, such as for
    # shipping addresses for orders of wireless SIMs (or other physical items). They
    # cannot be used for emergency calling and are distinct from Address records,
    # which are used on phone numbers.
    sig { returns(Telnyx::Resources::UserAddresses) }
    attr_reader :user_addresses

    # User-defined tags for Telnyx resources
    sig { returns(Telnyx::Resources::UserTags) }
    attr_reader :user_tags

    # Two factor authentication API
    sig { returns(Telnyx::Resources::Verifications) }
    attr_reader :verifications

    # Verified Numbers operations
    sig { returns(Telnyx::Resources::VerifiedNumbers) }
    attr_reader :verified_numbers

    # Two factor authentication API
    sig { returns(Telnyx::Resources::VerifyProfiles) }
    attr_reader :verify_profiles

    # Virtual Cross Connect operations
    sig { returns(Telnyx::Resources::VirtualCrossConnects) }
    attr_reader :virtual_cross_connects

    # Virtual Cross Connect operations
    sig { returns(Telnyx::Resources::VirtualCrossConnectsCoverage) }
    attr_reader :virtual_cross_connects_coverage

    # Webhooks operations
    sig { returns(Telnyx::Resources::WebhookDeliveries) }
    attr_reader :webhook_deliveries

    # WireGuard Interface operations
    sig { returns(Telnyx::Resources::WireguardInterfaces) }
    attr_reader :wireguard_interfaces

    # WireGuard Interface operations
    sig { returns(Telnyx::Resources::WireguardPeers) }
    attr_reader :wireguard_peers

    # Regions for wireless services
    sig { returns(Telnyx::Resources::Wireless) }
    attr_reader :wireless

    # Wireless Blocklists operations
    sig { returns(Telnyx::Resources::WirelessBlocklistValues) }
    attr_reader :wireless_blocklist_values

    # Wireless Blocklists operations
    sig { returns(Telnyx::Resources::WirelessBlocklists) }
    attr_reader :wireless_blocklists

    sig { returns(Telnyx::Resources::WellKnown) }
    attr_reader :well_known

    # Inexplicit number orders for bulk purchasing without specifying exact numbers
    sig { returns(Telnyx::Resources::InexplicitNumberOrders) }
    attr_reader :inexplicit_number_orders

    # Mobile phone number operations
    sig { returns(Telnyx::Resources::MobilePhoneNumbers) }
    attr_reader :mobile_phone_numbers

    # Mobile voice connection operations
    sig { returns(Telnyx::Resources::MobileVoiceConnections) }
    attr_reader :mobile_voice_connections

    sig { returns(Telnyx::Resources::Messaging10dlc) }
    attr_reader :messaging_10dlc

    sig { returns(Telnyx::Resources::Organizations) }
    attr_reader :organizations

    sig { returns(Telnyx::Resources::AlphanumericSenderIDs) }
    attr_reader :alphanumeric_sender_ids

    sig { returns(Telnyx::Resources::MessagingProfileMetrics) }
    attr_reader :messaging_profile_metrics

    # Analyze voice AI sessions, costs, and event hierarchies across Telnyx products.
    sig { returns(Telnyx::Resources::SessionAnalysis) }
    attr_reader :session_analysis

    sig { returns(Telnyx::Resources::Whatsapp) }
    attr_reader :whatsapp

    # Manage Whatsapp message templates
    sig { returns(Telnyx::Resources::WhatsappMessageTemplates) }
    attr_reader :whatsapp_message_templates

    sig { returns(Telnyx::Resources::X402) }
    attr_reader :x402

    # Capture and manage voice identities as clones for use in text-to-speech
    # synthesis.
    sig { returns(Telnyx::Resources::VoiceClones) }
    attr_reader :voice_clones

    # Create and manage AI-generated voice designs using natural language prompts.
    sig { returns(Telnyx::Resources::VoiceDesigns) }
    attr_reader :voice_designs

    # Traffic Policy Profiles operations
    sig { returns(Telnyx::Resources::TrafficPolicyProfiles) }
    attr_reader :traffic_policy_profiles

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # @api private
    sig { returns(T::Hash[String, String]) }
    private def bearer_auth
    end

    # @api private
    sig { returns(Telnyx::Internal::OAuth2ClientCredentials) }
    attr_reader :oauth_client_auth_state

    # @api private
    sig { returns(T::Hash[String, String]) }
    private def oauth_client_auth
    end

    # @api private
    sig { returns(T::Boolean) }
    def base_url_overridden?
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        client_id: T.nilable(String),
        client_secret: T.nilable(String),
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
      # Defaults to `ENV["TELNYX_CLIENT_ID"]`
      client_id: ENV["TELNYX_CLIENT_ID"],
      # Defaults to `ENV["TELNYX_CLIENT_SECRET"]`
      client_secret: ENV["TELNYX_CLIENT_SECRET"],
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
