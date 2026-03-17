# frozen_string_literal: true

module Telnyx
  class Client < Telnyx::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String, nil]
    attr_reader :api_key

    # @return [String, nil]
    attr_reader :public_key

    # @return [String, nil]
    attr_reader :client_id

    # @return [String, nil]
    attr_reader :client_secret

    # @return [Telnyx::Resources::Legacy]
    attr_reader :legacy

    # @return [Telnyx::Resources::OAuth]
    attr_reader :oauth

    # @return [Telnyx::Resources::OAuthClients]
    attr_reader :oauth_clients

    # @return [Telnyx::Resources::OAuthGrants]
    attr_reader :oauth_grants

    # @return [Telnyx::Resources::Webhooks]
    attr_reader :webhooks

    # IP Address Operations
    # @return [Telnyx::Resources::AccessIPAddress]
    attr_reader :access_ip_address

    # IP Range Operations
    # @return [Telnyx::Resources::AccessIPRanges]
    attr_reader :access_ip_ranges

    # @return [Telnyx::Resources::Actions]
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
    # @return [Telnyx::Resources::Addresses]
    attr_reader :addresses

    # @return [Telnyx::Resources::AdvancedOrders]
    attr_reader :advanced_orders

    # Generate text with LLMs
    # @return [Telnyx::Resources::AI]
    attr_reader :ai

    # Audit log operations.
    # @return [Telnyx::Resources::AuditEvents]
    attr_reader :audit_events

    # @return [Telnyx::Resources::AuthenticationProviders]
    attr_reader :authentication_providers

    # Number search
    # @return [Telnyx::Resources::AvailablePhoneNumberBlocks]
    attr_reader :available_phone_number_blocks

    # Number search
    # @return [Telnyx::Resources::AvailablePhoneNumbers]
    attr_reader :available_phone_numbers

    # Billing operations
    # @return [Telnyx::Resources::Balance]
    attr_reader :balance

    # Billing groups operations
    # @return [Telnyx::Resources::BillingGroups]
    attr_reader :billing_groups

    # View SIM card actions, their progress and timestamps using the SIM Card Actions
    # API
    # @return [Telnyx::Resources::BulkSimCardActions]
    attr_reader :bulk_sim_card_actions

    # @return [Telnyx::Resources::BundlePricing]
    attr_reader :bundle_pricing

    # Call Control applications operations
    # @return [Telnyx::Resources::CallControlApplications]
    attr_reader :call_control_applications

    # Call Control debugging
    # @return [Telnyx::Resources::CallEvents]
    attr_reader :call_events

    # @return [Telnyx::Resources::Calls]
    attr_reader :calls

    # Voice Channels
    # @return [Telnyx::Resources::ChannelZones]
    attr_reader :channel_zones

    # @return [Telnyx::Resources::ChargesBreakdown]
    attr_reader :charges_breakdown

    # @return [Telnyx::Resources::ChargesSummary]
    attr_reader :charges_summary

    # Number orders
    # @return [Telnyx::Resources::Comments]
    attr_reader :comments

    # Conference command operations
    # @return [Telnyx::Resources::Conferences]
    attr_reader :conferences

    # @return [Telnyx::Resources::Connections]
    attr_reader :connections

    # Country Coverage
    # @return [Telnyx::Resources::CountryCoverage]
    attr_reader :country_coverage

    # Credential connection operations
    # @return [Telnyx::Resources::CredentialConnections]
    attr_reader :credential_connections

    # Call Recordings operations.
    # @return [Telnyx::Resources::CustomStorageCredentials]
    attr_reader :custom_storage_credentials

    # Customer Service Record operations
    # @return [Telnyx::Resources::CustomerServiceRecords]
    attr_reader :customer_service_records

    # Detail Records operations
    # @return [Telnyx::Resources::DetailRecords]
    attr_reader :detail_records

    # Dialogflow Connection Operations.
    # @return [Telnyx::Resources::DialogflowConnections]
    attr_reader :dialogflow_connections

    # Documents
    # @return [Telnyx::Resources::DocumentLinks]
    attr_reader :document_links

    # Documents
    # @return [Telnyx::Resources::Documents]
    attr_reader :documents

    # Dynamic emergency address operations
    # @return [Telnyx::Resources::DynamicEmergencyAddresses]
    attr_reader :dynamic_emergency_addresses

    # Dynamic Emergency Endpoints
    # @return [Telnyx::Resources::DynamicEmergencyEndpoints]
    attr_reader :dynamic_emergency_endpoints

    # External Connections operations
    # @return [Telnyx::Resources::ExternalConnections]
    attr_reader :external_connections

    # Fax Applications operations
    # @return [Telnyx::Resources::FaxApplications]
    attr_reader :fax_applications

    # Programmable fax command operations
    # @return [Telnyx::Resources::Faxes]
    attr_reader :faxes

    # FQDN connection operations
    # @return [Telnyx::Resources::FqdnConnections]
    attr_reader :fqdn_connections

    # FQDN operations
    # @return [Telnyx::Resources::Fqdns]
    attr_reader :fqdns

    # Global IPs
    # @return [Telnyx::Resources::GlobalIPAllowedPorts]
    attr_reader :global_ip_allowed_ports

    # Global IPs
    # @return [Telnyx::Resources::GlobalIPAssignmentHealth]
    attr_reader :global_ip_assignment_health

    # Global IPs
    # @return [Telnyx::Resources::GlobalIPAssignments]
    attr_reader :global_ip_assignments

    # Global IPs
    # @return [Telnyx::Resources::GlobalIPAssignmentsUsage]
    attr_reader :global_ip_assignments_usage

    # Global IPs
    # @return [Telnyx::Resources::GlobalIPHealthCheckTypes]
    attr_reader :global_ip_health_check_types

    # Global IPs
    # @return [Telnyx::Resources::GlobalIPHealthChecks]
    attr_reader :global_ip_health_checks

    # Global IPs
    # @return [Telnyx::Resources::GlobalIPLatency]
    attr_reader :global_ip_latency

    # Global IPs
    # @return [Telnyx::Resources::GlobalIPProtocols]
    attr_reader :global_ip_protocols

    # Global IPs
    # @return [Telnyx::Resources::GlobalIPUsage]
    attr_reader :global_ip_usage

    # Global IPs
    # @return [Telnyx::Resources::GlobalIPs]
    attr_reader :global_ips

    # Voice Channels
    # @return [Telnyx::Resources::InboundChannels]
    attr_reader :inbound_channels

    # Store and retrieve integration secrets
    # @return [Telnyx::Resources::IntegrationSecrets]
    attr_reader :integration_secrets

    # Inventory Level
    # @return [Telnyx::Resources::InventoryCoverage]
    attr_reader :inventory_coverage

    # @return [Telnyx::Resources::Invoices]
    attr_reader :invoices

    # IP connection operations
    # @return [Telnyx::Resources::IPConnections]
    attr_reader :ip_connections

    # IP operations
    # @return [Telnyx::Resources::IPs]
    attr_reader :ips

    # Ledger billing reports
    # @return [Telnyx::Resources::LedgerBillingGroupReports]
    attr_reader :ledger_billing_group_reports

    # Voice Channels
    # @return [Telnyx::Resources::List]
    attr_reader :list

    # Managed Accounts operations
    # @return [Telnyx::Resources::ManagedAccounts]
    attr_reader :managed_accounts

    # Media Storage operations
    # @return [Telnyx::Resources::Media]
    attr_reader :media

    # @return [Telnyx::Resources::Messages]
    attr_reader :messages

    # @return [Telnyx::Resources::Messaging]
    attr_reader :messaging

    # Manage your messaging hosted numbers
    # @return [Telnyx::Resources::MessagingHostedNumberOrders]
    attr_reader :messaging_hosted_number_orders

    # @return [Telnyx::Resources::MessagingHostedNumbers]
    attr_reader :messaging_hosted_numbers

    # Configure your phone numbers
    # @return [Telnyx::Resources::MessagingNumbersBulkUpdates]
    attr_reader :messaging_numbers_bulk_updates

    # Opt-Out Management
    # @return [Telnyx::Resources::MessagingOptouts]
    attr_reader :messaging_optouts

    # @return [Telnyx::Resources::MessagingProfiles]
    attr_reader :messaging_profiles

    # @return [Telnyx::Resources::MessagingTollfree]
    attr_reader :messaging_tollfree

    # Messaging URL Domains
    # @return [Telnyx::Resources::MessagingURLDomains]
    attr_reader :messaging_url_domains

    # Mobile network operators operations
    # @return [Telnyx::Resources::MobileNetworkOperators]
    attr_reader :mobile_network_operators

    # Mobile push credential management
    # @return [Telnyx::Resources::MobilePushCredentials]
    attr_reader :mobile_push_credentials

    # @return [Telnyx::Resources::NetworkCoverage]
    attr_reader :network_coverage

    # Network operations
    # @return [Telnyx::Resources::Networks]
    attr_reader :networks

    # Notification settings operations
    # @return [Telnyx::Resources::NotificationChannels]
    attr_reader :notification_channels

    # Notification settings operations
    # @return [Telnyx::Resources::NotificationEventConditions]
    attr_reader :notification_event_conditions

    # Notification settings operations
    # @return [Telnyx::Resources::NotificationEvents]
    attr_reader :notification_events

    # Notification settings operations
    # @return [Telnyx::Resources::NotificationProfiles]
    attr_reader :notification_profiles

    # Notification settings operations
    # @return [Telnyx::Resources::NotificationSettings]
    attr_reader :notification_settings

    # @return [Telnyx::Resources::NumberBlockOrders]
    attr_reader :number_block_orders

    # Look up phone number data
    # @return [Telnyx::Resources::NumberLookup]
    attr_reader :number_lookup

    # @return [Telnyx::Resources::NumberOrderPhoneNumbers]
    attr_reader :number_order_phone_numbers

    # Number orders
    # @return [Telnyx::Resources::NumberOrders]
    attr_reader :number_orders

    # Number reservations
    # @return [Telnyx::Resources::NumberReservations]
    attr_reader :number_reservations

    # @return [Telnyx::Resources::NumbersFeatures]
    attr_reader :numbers_features

    # @return [Telnyx::Resources::OperatorConnect]
    attr_reader :operator_connect

    # OTA updates operations
    # @return [Telnyx::Resources::OtaUpdates]
    attr_reader :ota_updates

    # Outbound voice profiles operations
    # @return [Telnyx::Resources::OutboundVoiceProfiles]
    attr_reader :outbound_voice_profiles

    # Operations for managing stored payment transactions.
    # @return [Telnyx::Resources::Payment]
    attr_reader :payment

    # @return [Telnyx::Resources::PhoneNumberBlocks]
    attr_reader :phone_number_blocks

    # Configure your phone numbers
    # @return [Telnyx::Resources::PhoneNumbers]
    attr_reader :phone_numbers

    # Regulatory Requirements
    # @return [Telnyx::Resources::PhoneNumbersRegulatoryRequirements]
    attr_reader :phone_numbers_regulatory_requirements

    # Determining portability of phone numbers
    # @return [Telnyx::Resources::PortabilityChecks]
    attr_reader :portability_checks

    # Endpoints related to porting orders management.
    # @return [Telnyx::Resources::Porting]
    attr_reader :porting

    # Endpoints related to porting orders management.
    # @return [Telnyx::Resources::PortingOrders]
    attr_reader :porting_orders

    # Endpoints related to porting orders management.
    # @return [Telnyx::Resources::PortingPhoneNumbers]
    attr_reader :porting_phone_numbers

    # Number portout operations
    # @return [Telnyx::Resources::Portouts]
    attr_reader :portouts

    # Private Wireless Gateways operations
    # @return [Telnyx::Resources::PrivateWirelessGateways]
    attr_reader :private_wireless_gateways

    # Public Internet Gateway operations
    # @return [Telnyx::Resources::PublicInternetGateways]
    attr_reader :public_internet_gateways

    # Queue commands operations
    # @return [Telnyx::Resources::Queues]
    attr_reader :queues

    # @return [Telnyx::Resources::RcsAgents]
    attr_reader :rcs_agents

    # Call Recordings operations.
    # @return [Telnyx::Resources::RecordingTranscriptions]
    attr_reader :recording_transcriptions

    # Call Recordings operations.
    # @return [Telnyx::Resources::Recordings]
    attr_reader :recordings

    # Regions
    # @return [Telnyx::Resources::Regions]
    attr_reader :regions

    # Regulatory Requirements
    # @return [Telnyx::Resources::RegulatoryRequirements]
    attr_reader :regulatory_requirements

    # @return [Telnyx::Resources::Reports]
    attr_reader :reports

    # Requirement Groups
    # @return [Telnyx::Resources::RequirementGroups]
    attr_reader :requirement_groups

    # Types of requirements for international numbers and porting orders
    # @return [Telnyx::Resources::RequirementTypes]
    attr_reader :requirement_types

    # Requirements for international numbers and porting orders
    # @return [Telnyx::Resources::Requirements]
    attr_reader :requirements

    # Rooms Compositions operations.
    # @return [Telnyx::Resources::RoomCompositions]
    attr_reader :room_compositions

    # Rooms Participants operations.
    # @return [Telnyx::Resources::RoomParticipants]
    attr_reader :room_participants

    # Rooms Recordings operations.
    # @return [Telnyx::Resources::RoomRecordings]
    attr_reader :room_recordings

    # Rooms operations.
    # @return [Telnyx::Resources::Rooms]
    attr_reader :rooms

    # Observability into Telnyx platform stability and performance.
    # @return [Telnyx::Resources::Seti]
    attr_reader :seti

    # Short codes
    # @return [Telnyx::Resources::ShortCodes]
    attr_reader :short_codes

    # SIM Cards operations
    # @return [Telnyx::Resources::SimCardDataUsageNotifications]
    attr_reader :sim_card_data_usage_notifications

    # SIM Card Groups operations
    # @return [Telnyx::Resources::SimCardGroups]
    attr_reader :sim_card_groups

    # SIM Card Orders operations
    # @return [Telnyx::Resources::SimCardOrderPreview]
    attr_reader :sim_card_order_preview

    # SIM Card Orders operations
    # @return [Telnyx::Resources::SimCardOrders]
    attr_reader :sim_card_orders

    # SIM Cards operations
    # @return [Telnyx::Resources::SimCards]
    attr_reader :sim_cards

    # SIPREC connectors configuration.
    # @return [Telnyx::Resources::SiprecConnectors]
    attr_reader :siprec_connectors

    # Migrate data from an external provider into Telnyx Cloud Storage
    # @return [Telnyx::Resources::Storage]
    attr_reader :storage

    # @return [Telnyx::Resources::SubNumberOrders]
    attr_reader :sub_number_orders

    # Number orders
    # @return [Telnyx::Resources::SubNumberOrdersReport]
    attr_reader :sub_number_orders_report

    # @return [Telnyx::Resources::TelephonyCredentials]
    attr_reader :telephony_credentials

    # TeXML REST Commands
    # @return [Telnyx::Resources::Texml]
    attr_reader :texml

    # TeXML Applications operations
    # @return [Telnyx::Resources::TexmlApplications]
    attr_reader :texml_applications

    # Text to speech streaming command operations
    # @return [Telnyx::Resources::TextToSpeech]
    attr_reader :text_to_speech

    # Usage data reporting across Telnyx products
    # @return [Telnyx::Resources::UsageReports]
    attr_reader :usage_reports

    # Operations for working with UserAddress records. UserAddress records are stored
    # addresses that users can use for non-emergency-calling purposes, such as for
    # shipping addresses for orders of wireless SIMs (or other physical items). They
    # cannot be used for emergency calling and are distinct from Address records,
    # which are used on phone numbers.
    # @return [Telnyx::Resources::UserAddresses]
    attr_reader :user_addresses

    # User-defined tags for Telnyx resources
    # @return [Telnyx::Resources::UserTags]
    attr_reader :user_tags

    # Two factor authentication API
    # @return [Telnyx::Resources::Verifications]
    attr_reader :verifications

    # Verified Numbers operations
    # @return [Telnyx::Resources::VerifiedNumbers]
    attr_reader :verified_numbers

    # Two factor authentication API
    # @return [Telnyx::Resources::VerifyProfiles]
    attr_reader :verify_profiles

    # Virtual Cross Connect operations
    # @return [Telnyx::Resources::VirtualCrossConnects]
    attr_reader :virtual_cross_connects

    # Virtual Cross Connect operations
    # @return [Telnyx::Resources::VirtualCrossConnectsCoverage]
    attr_reader :virtual_cross_connects_coverage

    # Webhooks operations
    # @return [Telnyx::Resources::WebhookDeliveries]
    attr_reader :webhook_deliveries

    # WireGuard Interface operations
    # @return [Telnyx::Resources::WireguardInterfaces]
    attr_reader :wireguard_interfaces

    # WireGuard Interface operations
    # @return [Telnyx::Resources::WireguardPeers]
    attr_reader :wireguard_peers

    # Regions for wireless services
    # @return [Telnyx::Resources::Wireless]
    attr_reader :wireless

    # Wireless Blocklists operations
    # @return [Telnyx::Resources::WirelessBlocklistValues]
    attr_reader :wireless_blocklist_values

    # Wireless Blocklists operations
    # @return [Telnyx::Resources::WirelessBlocklists]
    attr_reader :wireless_blocklists

    # @return [Telnyx::Resources::WellKnown]
    attr_reader :well_known

    # Inexplicit number orders for bulk purchasing without specifying exact numbers
    # @return [Telnyx::Resources::InexplicitNumberOrders]
    attr_reader :inexplicit_number_orders

    # Mobile phone number operations
    # @return [Telnyx::Resources::MobilePhoneNumbers]
    attr_reader :mobile_phone_numbers

    # Mobile voice connection operations
    # @return [Telnyx::Resources::MobileVoiceConnections]
    attr_reader :mobile_voice_connections

    # @return [Telnyx::Resources::Messaging10dlc]
    attr_reader :messaging_10dlc

    # @return [Telnyx::Resources::Organizations]
    attr_reader :organizations

    # @return [Telnyx::Resources::AlphanumericSenderIDs]
    attr_reader :alphanumeric_sender_ids

    # @return [Telnyx::Resources::MessagingProfileMetrics]
    attr_reader :messaging_profile_metrics

    # Analyze voice AI sessions, costs, and event hierarchies across Telnyx products.
    # @return [Telnyx::Resources::SessionAnalysis]
    attr_reader :session_analysis

    # @return [Telnyx::Resources::Whatsapp]
    attr_reader :whatsapp

    # Manage Whatsapp message templates
    # @return [Telnyx::Resources::WhatsappMessageTemplates]
    attr_reader :whatsapp_message_templates

    # Capture and manage voice identities as clones for use in text-to-speech
    # synthesis.
    # @return [Telnyx::Resources::VoiceClones]
    attr_reader :voice_clones

    # Create and manage AI-generated voice designs using natural language prompts.
    # @return [Telnyx::Resources::VoiceDesigns]
    attr_reader :voice_designs

    # @return [Telnyx::Resources::X402]
    attr_reader :x402

    # Speech to text command operations
    # @return [Telnyx::Resources::SpeechToText]
    attr_reader :speech_to_text

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      {**bearer_auth, **oauth_client_auth}
    end

    # @api private
    #
    # @return [Hash{String=>String}]
    private def bearer_auth
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # @api private
    # @return [Telnyx::Internal::OAuth2ClientCredentials]
    attr_reader :oauth_client_auth_state

    # @api private
    #
    # @return [Hash{String=>String}]
    private def oauth_client_auth
      return @oauth_client_auth_state.auth_headers if @oauth_client_auth_state

      return {} unless @client_id && @client_secret

      path = Telnyx::Internal::Util.interpolate_path("https://api.telnyx.com/v2/oauth/token")
      token_url = Telnyx::Internal::Util.join_parsed_uri(@base_url_components, {path: path})

      @oauth_client_auth_state = Telnyx::Internal::OAuth2ClientCredentials.new(
        token_url: token_url.to_s,
        client_id: @client_id,
        client_secret: @client_secret,
        timeout: @timeout,
        client: self
      )
      @oauth_client_auth_state.auth_headers
    end

    # @api private
    #
    # @return [Boolean]
    def base_url_overridden? = @base_url_overridden

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Defaults to `ENV["TELNYX_API_KEY"]`
    #
    # @param client_id [String, nil] Defaults to `ENV["TELNYX_CLIENT_ID"]`
    #
    # @param client_secret [String, nil] Defaults to `ENV["TELNYX_CLIENT_SECRET"]`
    #
    # @param public_key [String, nil] Defaults to `ENV["TELNYX_PUBLIC_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["TELNYX_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["TELNYX_API_KEY"],
      client_id: ENV["TELNYX_CLIENT_ID"],
      client_secret: ENV["TELNYX_CLIENT_SECRET"],
      public_key: ENV["TELNYX_PUBLIC_KEY"],
      base_url: ENV["TELNYX_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      @base_url_overridden = !base_url.nil?

      base_url ||= "https://api.telnyx.com/v2"

      @api_key = api_key&.to_s
      @client_id = client_id&.to_s
      @client_secret = client_secret&.to_s
      @public_key = public_key&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @legacy = Telnyx::Resources::Legacy.new(client: self)
      @oauth = Telnyx::Resources::OAuth.new(client: self)
      @oauth_clients = Telnyx::Resources::OAuthClients.new(client: self)
      @oauth_grants = Telnyx::Resources::OAuthGrants.new(client: self)
      @webhooks = Telnyx::Resources::Webhooks.new(client: self)
      @access_ip_address = Telnyx::Resources::AccessIPAddress.new(client: self)
      @access_ip_ranges = Telnyx::Resources::AccessIPRanges.new(client: self)
      @actions = Telnyx::Resources::Actions.new(client: self)
      @addresses = Telnyx::Resources::Addresses.new(client: self)
      @advanced_orders = Telnyx::Resources::AdvancedOrders.new(client: self)
      @ai = Telnyx::Resources::AI.new(client: self)
      @audit_events = Telnyx::Resources::AuditEvents.new(client: self)
      @authentication_providers = Telnyx::Resources::AuthenticationProviders.new(client: self)
      @available_phone_number_blocks = Telnyx::Resources::AvailablePhoneNumberBlocks.new(client: self)
      @available_phone_numbers = Telnyx::Resources::AvailablePhoneNumbers.new(client: self)
      @balance = Telnyx::Resources::Balance.new(client: self)
      @billing_groups = Telnyx::Resources::BillingGroups.new(client: self)
      @bulk_sim_card_actions = Telnyx::Resources::BulkSimCardActions.new(client: self)
      @bundle_pricing = Telnyx::Resources::BundlePricing.new(client: self)
      @call_control_applications = Telnyx::Resources::CallControlApplications.new(client: self)
      @call_events = Telnyx::Resources::CallEvents.new(client: self)
      @calls = Telnyx::Resources::Calls.new(client: self)
      @channel_zones = Telnyx::Resources::ChannelZones.new(client: self)
      @charges_breakdown = Telnyx::Resources::ChargesBreakdown.new(client: self)
      @charges_summary = Telnyx::Resources::ChargesSummary.new(client: self)
      @comments = Telnyx::Resources::Comments.new(client: self)
      @conferences = Telnyx::Resources::Conferences.new(client: self)
      @connections = Telnyx::Resources::Connections.new(client: self)
      @country_coverage = Telnyx::Resources::CountryCoverage.new(client: self)
      @credential_connections = Telnyx::Resources::CredentialConnections.new(client: self)
      @custom_storage_credentials = Telnyx::Resources::CustomStorageCredentials.new(client: self)
      @customer_service_records = Telnyx::Resources::CustomerServiceRecords.new(client: self)
      @detail_records = Telnyx::Resources::DetailRecords.new(client: self)
      @dialogflow_connections = Telnyx::Resources::DialogflowConnections.new(client: self)
      @document_links = Telnyx::Resources::DocumentLinks.new(client: self)
      @documents = Telnyx::Resources::Documents.new(client: self)
      @dynamic_emergency_addresses = Telnyx::Resources::DynamicEmergencyAddresses.new(client: self)
      @dynamic_emergency_endpoints = Telnyx::Resources::DynamicEmergencyEndpoints.new(client: self)
      @external_connections = Telnyx::Resources::ExternalConnections.new(client: self)
      @fax_applications = Telnyx::Resources::FaxApplications.new(client: self)
      @faxes = Telnyx::Resources::Faxes.new(client: self)
      @fqdn_connections = Telnyx::Resources::FqdnConnections.new(client: self)
      @fqdns = Telnyx::Resources::Fqdns.new(client: self)
      @global_ip_allowed_ports = Telnyx::Resources::GlobalIPAllowedPorts.new(client: self)
      @global_ip_assignment_health = Telnyx::Resources::GlobalIPAssignmentHealth.new(client: self)
      @global_ip_assignments = Telnyx::Resources::GlobalIPAssignments.new(client: self)
      @global_ip_assignments_usage = Telnyx::Resources::GlobalIPAssignmentsUsage.new(client: self)
      @global_ip_health_check_types = Telnyx::Resources::GlobalIPHealthCheckTypes.new(client: self)
      @global_ip_health_checks = Telnyx::Resources::GlobalIPHealthChecks.new(client: self)
      @global_ip_latency = Telnyx::Resources::GlobalIPLatency.new(client: self)
      @global_ip_protocols = Telnyx::Resources::GlobalIPProtocols.new(client: self)
      @global_ip_usage = Telnyx::Resources::GlobalIPUsage.new(client: self)
      @global_ips = Telnyx::Resources::GlobalIPs.new(client: self)
      @inbound_channels = Telnyx::Resources::InboundChannels.new(client: self)
      @integration_secrets = Telnyx::Resources::IntegrationSecrets.new(client: self)
      @inventory_coverage = Telnyx::Resources::InventoryCoverage.new(client: self)
      @invoices = Telnyx::Resources::Invoices.new(client: self)
      @ip_connections = Telnyx::Resources::IPConnections.new(client: self)
      @ips = Telnyx::Resources::IPs.new(client: self)
      @ledger_billing_group_reports = Telnyx::Resources::LedgerBillingGroupReports.new(client: self)
      @list = Telnyx::Resources::List.new(client: self)
      @managed_accounts = Telnyx::Resources::ManagedAccounts.new(client: self)
      @media = Telnyx::Resources::Media.new(client: self)
      @messages = Telnyx::Resources::Messages.new(client: self)
      @messaging = Telnyx::Resources::Messaging.new(client: self)
      @messaging_hosted_number_orders = Telnyx::Resources::MessagingHostedNumberOrders.new(client: self)
      @messaging_hosted_numbers = Telnyx::Resources::MessagingHostedNumbers.new(client: self)
      @messaging_numbers_bulk_updates = Telnyx::Resources::MessagingNumbersBulkUpdates.new(client: self)
      @messaging_optouts = Telnyx::Resources::MessagingOptouts.new(client: self)
      @messaging_profiles = Telnyx::Resources::MessagingProfiles.new(client: self)
      @messaging_tollfree = Telnyx::Resources::MessagingTollfree.new(client: self)
      @messaging_url_domains = Telnyx::Resources::MessagingURLDomains.new(client: self)
      @mobile_network_operators = Telnyx::Resources::MobileNetworkOperators.new(client: self)
      @mobile_push_credentials = Telnyx::Resources::MobilePushCredentials.new(client: self)
      @network_coverage = Telnyx::Resources::NetworkCoverage.new(client: self)
      @networks = Telnyx::Resources::Networks.new(client: self)
      @notification_channels = Telnyx::Resources::NotificationChannels.new(client: self)
      @notification_event_conditions = Telnyx::Resources::NotificationEventConditions.new(client: self)
      @notification_events = Telnyx::Resources::NotificationEvents.new(client: self)
      @notification_profiles = Telnyx::Resources::NotificationProfiles.new(client: self)
      @notification_settings = Telnyx::Resources::NotificationSettings.new(client: self)
      @number_block_orders = Telnyx::Resources::NumberBlockOrders.new(client: self)
      @number_lookup = Telnyx::Resources::NumberLookup.new(client: self)
      @number_order_phone_numbers = Telnyx::Resources::NumberOrderPhoneNumbers.new(client: self)
      @number_orders = Telnyx::Resources::NumberOrders.new(client: self)
      @number_reservations = Telnyx::Resources::NumberReservations.new(client: self)
      @numbers_features = Telnyx::Resources::NumbersFeatures.new(client: self)
      @operator_connect = Telnyx::Resources::OperatorConnect.new(client: self)
      @ota_updates = Telnyx::Resources::OtaUpdates.new(client: self)
      @outbound_voice_profiles = Telnyx::Resources::OutboundVoiceProfiles.new(client: self)
      @payment = Telnyx::Resources::Payment.new(client: self)
      @phone_number_blocks = Telnyx::Resources::PhoneNumberBlocks.new(client: self)
      @phone_numbers = Telnyx::Resources::PhoneNumbers.new(client: self)
      @phone_numbers_regulatory_requirements =
        Telnyx::Resources::PhoneNumbersRegulatoryRequirements.new(client: self)
      @portability_checks = Telnyx::Resources::PortabilityChecks.new(client: self)
      @porting = Telnyx::Resources::Porting.new(client: self)
      @porting_orders = Telnyx::Resources::PortingOrders.new(client: self)
      @porting_phone_numbers = Telnyx::Resources::PortingPhoneNumbers.new(client: self)
      @portouts = Telnyx::Resources::Portouts.new(client: self)
      @private_wireless_gateways = Telnyx::Resources::PrivateWirelessGateways.new(client: self)
      @public_internet_gateways = Telnyx::Resources::PublicInternetGateways.new(client: self)
      @queues = Telnyx::Resources::Queues.new(client: self)
      @rcs_agents = Telnyx::Resources::RcsAgents.new(client: self)
      @recording_transcriptions = Telnyx::Resources::RecordingTranscriptions.new(client: self)
      @recordings = Telnyx::Resources::Recordings.new(client: self)
      @regions = Telnyx::Resources::Regions.new(client: self)
      @regulatory_requirements = Telnyx::Resources::RegulatoryRequirements.new(client: self)
      @reports = Telnyx::Resources::Reports.new(client: self)
      @requirement_groups = Telnyx::Resources::RequirementGroups.new(client: self)
      @requirement_types = Telnyx::Resources::RequirementTypes.new(client: self)
      @requirements = Telnyx::Resources::Requirements.new(client: self)
      @room_compositions = Telnyx::Resources::RoomCompositions.new(client: self)
      @room_participants = Telnyx::Resources::RoomParticipants.new(client: self)
      @room_recordings = Telnyx::Resources::RoomRecordings.new(client: self)
      @rooms = Telnyx::Resources::Rooms.new(client: self)
      @seti = Telnyx::Resources::Seti.new(client: self)
      @short_codes = Telnyx::Resources::ShortCodes.new(client: self)
      @sim_card_data_usage_notifications = Telnyx::Resources::SimCardDataUsageNotifications.new(client: self)
      @sim_card_groups = Telnyx::Resources::SimCardGroups.new(client: self)
      @sim_card_order_preview = Telnyx::Resources::SimCardOrderPreview.new(client: self)
      @sim_card_orders = Telnyx::Resources::SimCardOrders.new(client: self)
      @sim_cards = Telnyx::Resources::SimCards.new(client: self)
      @siprec_connectors = Telnyx::Resources::SiprecConnectors.new(client: self)
      @storage = Telnyx::Resources::Storage.new(client: self)
      @sub_number_orders = Telnyx::Resources::SubNumberOrders.new(client: self)
      @sub_number_orders_report = Telnyx::Resources::SubNumberOrdersReport.new(client: self)
      @telephony_credentials = Telnyx::Resources::TelephonyCredentials.new(client: self)
      @texml = Telnyx::Resources::Texml.new(client: self)
      @texml_applications = Telnyx::Resources::TexmlApplications.new(client: self)
      @text_to_speech = Telnyx::Resources::TextToSpeech.new(client: self)
      @usage_reports = Telnyx::Resources::UsageReports.new(client: self)
      @user_addresses = Telnyx::Resources::UserAddresses.new(client: self)
      @user_tags = Telnyx::Resources::UserTags.new(client: self)
      @verifications = Telnyx::Resources::Verifications.new(client: self)
      @verified_numbers = Telnyx::Resources::VerifiedNumbers.new(client: self)
      @verify_profiles = Telnyx::Resources::VerifyProfiles.new(client: self)
      @virtual_cross_connects = Telnyx::Resources::VirtualCrossConnects.new(client: self)
      @virtual_cross_connects_coverage = Telnyx::Resources::VirtualCrossConnectsCoverage.new(client: self)
      @webhook_deliveries = Telnyx::Resources::WebhookDeliveries.new(client: self)
      @wireguard_interfaces = Telnyx::Resources::WireguardInterfaces.new(client: self)
      @wireguard_peers = Telnyx::Resources::WireguardPeers.new(client: self)
      @wireless = Telnyx::Resources::Wireless.new(client: self)
      @wireless_blocklist_values = Telnyx::Resources::WirelessBlocklistValues.new(client: self)
      @wireless_blocklists = Telnyx::Resources::WirelessBlocklists.new(client: self)
      @well_known = Telnyx::Resources::WellKnown.new(client: self)
      @inexplicit_number_orders = Telnyx::Resources::InexplicitNumberOrders.new(client: self)
      @mobile_phone_numbers = Telnyx::Resources::MobilePhoneNumbers.new(client: self)
      @mobile_voice_connections = Telnyx::Resources::MobileVoiceConnections.new(client: self)
      @messaging_10dlc = Telnyx::Resources::Messaging10dlc.new(client: self)
      @organizations = Telnyx::Resources::Organizations.new(client: self)
      @alphanumeric_sender_ids = Telnyx::Resources::AlphanumericSenderIDs.new(client: self)
      @messaging_profile_metrics = Telnyx::Resources::MessagingProfileMetrics.new(client: self)
      @session_analysis = Telnyx::Resources::SessionAnalysis.new(client: self)
      @whatsapp = Telnyx::Resources::Whatsapp.new(client: self)
      @whatsapp_message_templates = Telnyx::Resources::WhatsappMessageTemplates.new(client: self)
      @voice_clones = Telnyx::Resources::VoiceClones.new(client: self)
      @voice_designs = Telnyx::Resources::VoiceDesigns.new(client: self)
      @x402 = Telnyx::Resources::X402.new(client: self)
      @speech_to_text = Telnyx::Resources::SpeechToText.new(client: self)
    end
  end
end
