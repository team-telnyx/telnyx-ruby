# frozen_string_literal: true

module Telnyx
  [Telnyx::Internal::Type::BaseModel, *Telnyx::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Telnyx::Internal::AnyHash) } }
  end

  Telnyx::Internal::Util.walk_namespaces(Telnyx::Models).each do |mod|
    case mod
    in Telnyx::Internal::Type::Enum | Telnyx::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Telnyx::Internal::Util.walk_namespaces(Telnyx::Models)
                        .lazy
                        .grep(Telnyx::Internal::Type::Union)
                        .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AccessIPAddressCreateParams = Telnyx::Models::AccessIPAddressCreateParams

  AccessIPAddressDeleteParams = Telnyx::Models::AccessIPAddressDeleteParams

  AccessIPAddressListParams = Telnyx::Models::AccessIPAddressListParams

  AccessIPAddressResponse = Telnyx::Models::AccessIPAddressResponse

  AccessIPAddressRetrieveParams = Telnyx::Models::AccessIPAddressRetrieveParams

  AccessIPRange = Telnyx::Models::AccessIPRange

  AccessIPRangeCreateParams = Telnyx::Models::AccessIPRangeCreateParams

  AccessIPRangeDeleteParams = Telnyx::Models::AccessIPRangeDeleteParams

  AccessIPRangeListParams = Telnyx::Models::AccessIPRangeListParams

  Actions = Telnyx::Models::Actions

  Address = Telnyx::Models::Address

  AddressCreateParams = Telnyx::Models::AddressCreateParams

  AddressDeleteParams = Telnyx::Models::AddressDeleteParams

  Addresses = Telnyx::Models::Addresses

  AddressListParams = Telnyx::Models::AddressListParams

  AddressRetrieveParams = Telnyx::Models::AddressRetrieveParams

  AdvancedOrder = Telnyx::Models::AdvancedOrder

  AdvancedOrderCreateParams = Telnyx::Models::AdvancedOrderCreateParams

  AdvancedOrderListParams = Telnyx::Models::AdvancedOrderListParams

  AdvancedOrderRetrieveParams = Telnyx::Models::AdvancedOrderRetrieveParams

  AdvancedOrderUpdateRequirementGroupParams = Telnyx::Models::AdvancedOrderUpdateRequirementGroupParams

  AI = Telnyx::Models::AI

  AIRetrieveModelsParams = Telnyx::Models::AIRetrieveModelsParams

  AISummarizeParams = Telnyx::Models::AISummarizeParams

  AltBusinessIDType = Telnyx::Models::AltBusinessIDType

  AnchorsiteOverride = Telnyx::Models::AnchorsiteOverride

  APIError = Telnyx::Models::APIError

  AuditEventListParams = Telnyx::Models::AuditEventListParams

  AuthenticationProvider = Telnyx::Models::AuthenticationProvider

  AuthenticationProviderCreateParams = Telnyx::Models::AuthenticationProviderCreateParams

  AuthenticationProviderDeleteParams = Telnyx::Models::AuthenticationProviderDeleteParams

  AuthenticationProviderListParams = Telnyx::Models::AuthenticationProviderListParams

  AuthenticationProviderRetrieveParams = Telnyx::Models::AuthenticationProviderRetrieveParams

  AuthenticationProviderUpdateParams = Telnyx::Models::AuthenticationProviderUpdateParams

  AvailablePhoneNumberBlockListParams = Telnyx::Models::AvailablePhoneNumberBlockListParams

  AvailablePhoneNumberListParams = Telnyx::Models::AvailablePhoneNumberListParams

  AvailableService = Telnyx::Models::AvailableService

  AzureConfigurationData = Telnyx::Models::AzureConfigurationData

  BalanceRetrieveParams = Telnyx::Models::BalanceRetrieveParams

  BillingGroup = Telnyx::Models::BillingGroup

  BillingGroupCreateParams = Telnyx::Models::BillingGroupCreateParams

  BillingGroupDeleteParams = Telnyx::Models::BillingGroupDeleteParams

  BillingGroupListParams = Telnyx::Models::BillingGroupListParams

  BillingGroupRetrieveParams = Telnyx::Models::BillingGroupRetrieveParams

  BillingGroupUpdateParams = Telnyx::Models::BillingGroupUpdateParams

  Brand = Telnyx::Models::Brand

  BrandCreateParams = Telnyx::Models::BrandCreateParams

  BrandDeleteParams = Telnyx::Models::BrandDeleteParams

  BrandGetFeedbackParams = Telnyx::Models::BrandGetFeedbackParams

  BrandIdentityStatus = Telnyx::Models::BrandIdentityStatus

  BrandListParams = Telnyx::Models::BrandListParams

  BrandResend2faEmailParams = Telnyx::Models::BrandResend2faEmailParams

  BrandRetrieveParams = Telnyx::Models::BrandRetrieveParams

  BrandRevetParams = Telnyx::Models::BrandRevetParams

  BrandUpdateParams = Telnyx::Models::BrandUpdateParams

  BulkSimCardActionListParams = Telnyx::Models::BulkSimCardActionListParams

  BulkSimCardActionRetrieveParams = Telnyx::Models::BulkSimCardActionRetrieveParams

  BundlePricing = Telnyx::Models::BundlePricing

  CallAIGatherEndedWebhookEvent = Telnyx::Models::CallAIGatherEndedWebhookEvent

  CallAIGatherMessageHistoryUpdatedWebhookEvent =
    Telnyx::Models::CallAIGatherMessageHistoryUpdatedWebhookEvent

  CallAIGatherPartialResultsWebhookEvent = Telnyx::Models::CallAIGatherPartialResultsWebhookEvent

  CallAnsweredWebhookEvent = Telnyx::Models::CallAnsweredWebhookEvent

  CallBridgedWebhookEvent = Telnyx::Models::CallBridgedWebhookEvent

  CallControlApplication = Telnyx::Models::CallControlApplication

  CallControlApplicationCreateParams = Telnyx::Models::CallControlApplicationCreateParams

  CallControlApplicationDeleteParams = Telnyx::Models::CallControlApplicationDeleteParams

  CallControlApplicationInbound = Telnyx::Models::CallControlApplicationInbound

  CallControlApplicationListParams = Telnyx::Models::CallControlApplicationListParams

  CallControlApplicationOutbound = Telnyx::Models::CallControlApplicationOutbound

  CallControlApplicationRetrieveParams = Telnyx::Models::CallControlApplicationRetrieveParams

  CallControlApplicationUpdateParams = Telnyx::Models::CallControlApplicationUpdateParams

  CallConversationEndedWebhookEvent = Telnyx::Models::CallConversationEndedWebhookEvent

  CallConversationInsightsGeneratedWebhookEvent =
    Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent

  CallDialParams = Telnyx::Models::CallDialParams

  CallDtmfReceivedWebhookEvent = Telnyx::Models::CallDtmfReceivedWebhookEvent

  CallEnqueuedWebhookEvent = Telnyx::Models::CallEnqueuedWebhookEvent

  CallEventListParams = Telnyx::Models::CallEventListParams

  CallForkStartedWebhookEvent = Telnyx::Models::CallForkStartedWebhookEvent

  CallForkStoppedWebhookEvent = Telnyx::Models::CallForkStoppedWebhookEvent

  CallGatherEndedWebhookEvent = Telnyx::Models::CallGatherEndedWebhookEvent

  CallHangupWebhookEvent = Telnyx::Models::CallHangupWebhookEvent

  CallInitiatedWebhookEvent = Telnyx::Models::CallInitiatedWebhookEvent

  CallLeftQueueWebhookEvent = Telnyx::Models::CallLeftQueueWebhookEvent

  CallMachineDetectionEndedWebhookEvent = Telnyx::Models::CallMachineDetectionEndedWebhookEvent

  CallMachineGreetingEndedWebhookEvent = Telnyx::Models::CallMachineGreetingEndedWebhookEvent

  CallMachinePremiumDetectionEndedWebhookEvent =
    Telnyx::Models::CallMachinePremiumDetectionEndedWebhookEvent

  CallMachinePremiumGreetingEndedWebhookEvent = Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent

  CallPlaybackEndedWebhookEvent = Telnyx::Models::CallPlaybackEndedWebhookEvent

  CallPlaybackStartedWebhookEvent = Telnyx::Models::CallPlaybackStartedWebhookEvent

  CallRecordingErrorWebhookEvent = Telnyx::Models::CallRecordingErrorWebhookEvent

  CallRecordingSavedWebhookEvent = Telnyx::Models::CallRecordingSavedWebhookEvent

  CallRecordingTranscriptionSavedWebhookEvent = Telnyx::Models::CallRecordingTranscriptionSavedWebhookEvent

  CallReferCompletedWebhookEvent = Telnyx::Models::CallReferCompletedWebhookEvent

  CallReferFailedWebhookEvent = Telnyx::Models::CallReferFailedWebhookEvent

  CallReferStartedWebhookEvent = Telnyx::Models::CallReferStartedWebhookEvent

  CallRetrieveStatusParams = Telnyx::Models::CallRetrieveStatusParams

  Calls = Telnyx::Models::Calls

  CallSiprecFailedWebhookEvent = Telnyx::Models::CallSiprecFailedWebhookEvent

  CallSiprecStartedWebhookEvent = Telnyx::Models::CallSiprecStartedWebhookEvent

  CallSiprecStoppedWebhookEvent = Telnyx::Models::CallSiprecStoppedWebhookEvent

  CallSpeakEndedWebhookEvent = Telnyx::Models::CallSpeakEndedWebhookEvent

  CallSpeakStartedWebhookEvent = Telnyx::Models::CallSpeakStartedWebhookEvent

  CallStreamingFailedWebhookEvent = Telnyx::Models::CallStreamingFailedWebhookEvent

  CallStreamingStartedWebhookEvent = Telnyx::Models::CallStreamingStartedWebhookEvent

  CallStreamingStoppedWebhookEvent = Telnyx::Models::CallStreamingStoppedWebhookEvent

  Campaign = Telnyx::Models::Campaign

  CampaignAcceptSharingParams = Telnyx::Models::CampaignAcceptSharingParams

  CampaignBuilder = Telnyx::Models::CampaignBuilder

  CampaignBuilderCreateParams = Telnyx::Models::CampaignBuilderCreateParams

  CampaignDeactivateParams = Telnyx::Models::CampaignDeactivateParams

  CampaignGetMnoMetadataParams = Telnyx::Models::CampaignGetMnoMetadataParams

  CampaignGetOperationStatusParams = Telnyx::Models::CampaignGetOperationStatusParams

  CampaignGetSharingStatusParams = Telnyx::Models::CampaignGetSharingStatusParams

  CampaignListParams = Telnyx::Models::CampaignListParams

  CampaignRetrieveParams = Telnyx::Models::CampaignRetrieveParams

  CampaignSharingStatus = Telnyx::Models::CampaignSharingStatus

  CampaignStatusUpdateWebhookEvent = Telnyx::Models::CampaignStatusUpdateWebhookEvent

  CampaignSubmitAppealParams = Telnyx::Models::CampaignSubmitAppealParams

  CampaignUpdateParams = Telnyx::Models::CampaignUpdateParams

  ChannelZoneListParams = Telnyx::Models::ChannelZoneListParams

  ChannelZoneUpdateParams = Telnyx::Models::ChannelZoneUpdateParams

  ChargesBreakdownRetrieveParams = Telnyx::Models::ChargesBreakdownRetrieveParams

  ChargesSummaryRetrieveParams = Telnyx::Models::ChargesSummaryRetrieveParams

  CloudflareSyncStatus = Telnyx::Models::CloudflareSyncStatus

  CommentCreateParams = Telnyx::Models::CommentCreateParams

  CommentListParams = Telnyx::Models::CommentListParams

  CommentMarkAsReadParams = Telnyx::Models::CommentMarkAsReadParams

  CommentRetrieveParams = Telnyx::Models::CommentRetrieveParams

  Conference = Telnyx::Models::Conference

  ConferenceCreatedWebhookEvent = Telnyx::Models::ConferenceCreatedWebhookEvent

  ConferenceCreateParams = Telnyx::Models::ConferenceCreateParams

  ConferenceEndedWebhookEvent = Telnyx::Models::ConferenceEndedWebhookEvent

  ConferenceFloorChangedWebhookEvent = Telnyx::Models::ConferenceFloorChangedWebhookEvent

  ConferenceListParams = Telnyx::Models::ConferenceListParams

  ConferenceListParticipantsParams = Telnyx::Models::ConferenceListParticipantsParams

  ConferenceParticipantJoinedWebhookEvent = Telnyx::Models::ConferenceParticipantJoinedWebhookEvent

  ConferenceParticipantLeftWebhookEvent = Telnyx::Models::ConferenceParticipantLeftWebhookEvent

  ConferenceParticipantPlaybackEndedWebhookEvent =
    Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent

  ConferenceParticipantPlaybackStartedWebhookEvent =
    Telnyx::Models::ConferenceParticipantPlaybackStartedWebhookEvent

  ConferenceParticipantSpeakEndedWebhookEvent = Telnyx::Models::ConferenceParticipantSpeakEndedWebhookEvent

  ConferenceParticipantSpeakStartedWebhookEvent =
    Telnyx::Models::ConferenceParticipantSpeakStartedWebhookEvent

  ConferencePlaybackEndedWebhookEvent = Telnyx::Models::ConferencePlaybackEndedWebhookEvent

  ConferencePlaybackStartedWebhookEvent = Telnyx::Models::ConferencePlaybackStartedWebhookEvent

  ConferenceRecordingSavedWebhookEvent = Telnyx::Models::ConferenceRecordingSavedWebhookEvent

  ConferenceRetrieveParams = Telnyx::Models::ConferenceRetrieveParams

  Conferences = Telnyx::Models::Conferences

  ConferenceSpeakEndedWebhookEvent = Telnyx::Models::ConferenceSpeakEndedWebhookEvent

  ConferenceSpeakStartedWebhookEvent = Telnyx::Models::ConferenceSpeakStartedWebhookEvent

  ConnectionListActiveCallsParams = Telnyx::Models::ConnectionListActiveCallsParams

  ConnectionListParams = Telnyx::Models::ConnectionListParams

  ConnectionRetrieveParams = Telnyx::Models::ConnectionRetrieveParams

  ConnectionRtcpSettings = Telnyx::Models::ConnectionRtcpSettings

  ConnectionsPaginationMeta = Telnyx::Models::ConnectionsPaginationMeta

  ConsumedData = Telnyx::Models::ConsumedData

  CountryCoverageRetrieveCountryParams = Telnyx::Models::CountryCoverageRetrieveCountryParams

  CountryCoverageRetrieveParams = Telnyx::Models::CountryCoverageRetrieveParams

  CreateVerificationResponse = Telnyx::Models::CreateVerificationResponse

  CredentialConnection = Telnyx::Models::CredentialConnection

  CredentialConnectionCreateParams = Telnyx::Models::CredentialConnectionCreateParams

  CredentialConnectionDeleteParams = Telnyx::Models::CredentialConnectionDeleteParams

  CredentialConnectionListParams = Telnyx::Models::CredentialConnectionListParams

  CredentialConnectionRetrieveParams = Telnyx::Models::CredentialConnectionRetrieveParams

  CredentialConnections = Telnyx::Models::CredentialConnections

  CredentialConnectionUpdateParams = Telnyx::Models::CredentialConnectionUpdateParams

  CredentialInbound = Telnyx::Models::CredentialInbound

  CredentialOutbound = Telnyx::Models::CredentialOutbound

  CustomerServiceRecord = Telnyx::Models::CustomerServiceRecord

  CustomerServiceRecordCreateParams = Telnyx::Models::CustomerServiceRecordCreateParams

  CustomerServiceRecordListParams = Telnyx::Models::CustomerServiceRecordListParams

  CustomerServiceRecordRetrieveParams = Telnyx::Models::CustomerServiceRecordRetrieveParams

  CustomerServiceRecordStatusChangedWebhookEvent =
    Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent

  CustomerServiceRecordVerifyPhoneNumberCoverageParams =
    Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageParams

  CustomSipHeader = Telnyx::Models::CustomSipHeader

  CustomStorageConfiguration = Telnyx::Models::CustomStorageConfiguration

  CustomStorageCredentialCreateParams = Telnyx::Models::CustomStorageCredentialCreateParams

  CustomStorageCredentialDeleteParams = Telnyx::Models::CustomStorageCredentialDeleteParams

  CustomStorageCredentialRetrieveParams = Telnyx::Models::CustomStorageCredentialRetrieveParams

  CustomStorageCredentialUpdateParams = Telnyx::Models::CustomStorageCredentialUpdateParams

  DeliveryUpdateWebhookEvent = Telnyx::Models::DeliveryUpdateWebhookEvent

  DetailRecordListParams = Telnyx::Models::DetailRecordListParams

  DialogflowConfig = Telnyx::Models::DialogflowConfig

  DialogflowConnectionCreateParams = Telnyx::Models::DialogflowConnectionCreateParams

  DialogflowConnectionDeleteParams = Telnyx::Models::DialogflowConnectionDeleteParams

  DialogflowConnectionRetrieveParams = Telnyx::Models::DialogflowConnectionRetrieveParams

  DialogflowConnectionUpdateParams = Telnyx::Models::DialogflowConnectionUpdateParams

  DocReqsRequirementType = Telnyx::Models::DocReqsRequirementType

  DocServiceDocument = Telnyx::Models::DocServiceDocument

  DocumentDeleteParams = Telnyx::Models::DocumentDeleteParams

  DocumentDownloadParams = Telnyx::Models::DocumentDownloadParams

  DocumentGenerateDownloadLinkParams = Telnyx::Models::DocumentGenerateDownloadLinkParams

  DocumentLinkListParams = Telnyx::Models::DocumentLinkListParams

  DocumentListParams = Telnyx::Models::DocumentListParams

  DocumentRetrieveParams = Telnyx::Models::DocumentRetrieveParams

  DocumentUpdateParams = Telnyx::Models::DocumentUpdateParams

  DocumentUploadJsonParams = Telnyx::Models::DocumentUploadJsonParams

  DocumentUploadParams = Telnyx::Models::DocumentUploadParams

  DtmfType = Telnyx::Models::DtmfType

  DynamicEmergencyAddress = Telnyx::Models::DynamicEmergencyAddress

  DynamicEmergencyAddressCreateParams = Telnyx::Models::DynamicEmergencyAddressCreateParams

  DynamicEmergencyAddressDeleteParams = Telnyx::Models::DynamicEmergencyAddressDeleteParams

  DynamicEmergencyAddressListParams = Telnyx::Models::DynamicEmergencyAddressListParams

  DynamicEmergencyAddressRetrieveParams = Telnyx::Models::DynamicEmergencyAddressRetrieveParams

  DynamicEmergencyEndpoint = Telnyx::Models::DynamicEmergencyEndpoint

  DynamicEmergencyEndpointCreateParams = Telnyx::Models::DynamicEmergencyEndpointCreateParams

  DynamicEmergencyEndpointDeleteParams = Telnyx::Models::DynamicEmergencyEndpointDeleteParams

  DynamicEmergencyEndpointListParams = Telnyx::Models::DynamicEmergencyEndpointListParams

  DynamicEmergencyEndpointRetrieveParams = Telnyx::Models::DynamicEmergencyEndpointRetrieveParams

  EncryptedMedia = Telnyx::Models::EncryptedMedia

  EntityType = Telnyx::Models::EntityType

  EnumRetrieveParams = Telnyx::Models::EnumRetrieveParams

  ExternalConnection = Telnyx::Models::ExternalConnection

  ExternalConnectionCreateParams = Telnyx::Models::ExternalConnectionCreateParams

  ExternalConnectionDeleteParams = Telnyx::Models::ExternalConnectionDeleteParams

  ExternalConnectionListParams = Telnyx::Models::ExternalConnectionListParams

  ExternalConnectionRetrieveParams = Telnyx::Models::ExternalConnectionRetrieveParams

  ExternalConnections = Telnyx::Models::ExternalConnections

  ExternalConnectionUpdateLocationParams = Telnyx::Models::ExternalConnectionUpdateLocationParams

  ExternalConnectionUpdateParams = Telnyx::Models::ExternalConnectionUpdateParams

  ExternalVoiceIntegrationsPaginationMeta = Telnyx::Models::ExternalVoiceIntegrationsPaginationMeta

  Fax = Telnyx::Models::Fax

  FaxApplication = Telnyx::Models::FaxApplication

  FaxApplicationCreateParams = Telnyx::Models::FaxApplicationCreateParams

  FaxApplicationDeleteParams = Telnyx::Models::FaxApplicationDeleteParams

  FaxApplicationListParams = Telnyx::Models::FaxApplicationListParams

  FaxApplicationRetrieveParams = Telnyx::Models::FaxApplicationRetrieveParams

  FaxApplicationUpdateParams = Telnyx::Models::FaxApplicationUpdateParams

  FaxCreateParams = Telnyx::Models::FaxCreateParams

  FaxDeleteParams = Telnyx::Models::FaxDeleteParams

  FaxDeliveredWebhookEvent = Telnyx::Models::FaxDeliveredWebhookEvent

  Faxes = Telnyx::Models::Faxes

  FaxFailedWebhookEvent = Telnyx::Models::FaxFailedWebhookEvent

  FaxListParams = Telnyx::Models::FaxListParams

  FaxMediaProcessedWebhookEvent = Telnyx::Models::FaxMediaProcessedWebhookEvent

  FaxQueuedWebhookEvent = Telnyx::Models::FaxQueuedWebhookEvent

  FaxRetrieveParams = Telnyx::Models::FaxRetrieveParams

  FaxSendingStartedWebhookEvent = Telnyx::Models::FaxSendingStartedWebhookEvent

  Fqdn = Telnyx::Models::Fqdn

  FqdnConnection = Telnyx::Models::FqdnConnection

  FqdnConnectionCreateParams = Telnyx::Models::FqdnConnectionCreateParams

  FqdnConnectionDeleteParams = Telnyx::Models::FqdnConnectionDeleteParams

  FqdnConnectionListParams = Telnyx::Models::FqdnConnectionListParams

  FqdnConnectionRetrieveParams = Telnyx::Models::FqdnConnectionRetrieveParams

  FqdnConnectionUpdateParams = Telnyx::Models::FqdnConnectionUpdateParams

  FqdnCreateParams = Telnyx::Models::FqdnCreateParams

  FqdnDeleteParams = Telnyx::Models::FqdnDeleteParams

  FqdnListParams = Telnyx::Models::FqdnListParams

  FqdnRetrieveParams = Telnyx::Models::FqdnRetrieveParams

  FqdnUpdateParams = Telnyx::Models::FqdnUpdateParams

  GcsConfigurationData = Telnyx::Models::GcsConfigurationData

  GlobalIPAllowedPortListParams = Telnyx::Models::GlobalIPAllowedPortListParams

  GlobalIPAssignment = Telnyx::Models::GlobalIPAssignment

  GlobalIPAssignmentCreateParams = Telnyx::Models::GlobalIPAssignmentCreateParams

  GlobalIPAssignmentDeleteParams = Telnyx::Models::GlobalIPAssignmentDeleteParams

  GlobalIPAssignmentHealthRetrieveParams = Telnyx::Models::GlobalIPAssignmentHealthRetrieveParams

  GlobalIPAssignmentListParams = Telnyx::Models::GlobalIPAssignmentListParams

  GlobalIPAssignmentRetrieveParams = Telnyx::Models::GlobalIPAssignmentRetrieveParams

  GlobalIPAssignmentsUsageRetrieveParams = Telnyx::Models::GlobalIPAssignmentsUsageRetrieveParams

  GlobalIPAssignmentUpdateParams = Telnyx::Models::GlobalIPAssignmentUpdateParams

  GlobalIPCreateParams = Telnyx::Models::GlobalIPCreateParams

  GlobalIPDeleteParams = Telnyx::Models::GlobalIPDeleteParams

  GlobalIPHealthCheckCreateParams = Telnyx::Models::GlobalIPHealthCheckCreateParams

  GlobalIPHealthCheckDeleteParams = Telnyx::Models::GlobalIPHealthCheckDeleteParams

  GlobalIPHealthCheckListParams = Telnyx::Models::GlobalIPHealthCheckListParams

  GlobalIPHealthCheckRetrieveParams = Telnyx::Models::GlobalIPHealthCheckRetrieveParams

  GlobalIPHealthCheckTypeListParams = Telnyx::Models::GlobalIPHealthCheckTypeListParams

  GlobalIPLatencyRetrieveParams = Telnyx::Models::GlobalIPLatencyRetrieveParams

  GlobalIPListParams = Telnyx::Models::GlobalIPListParams

  GlobalIPProtocolListParams = Telnyx::Models::GlobalIPProtocolListParams

  GlobalIPRetrieveParams = Telnyx::Models::GlobalIPRetrieveParams

  GlobalIPUsageRetrieveParams = Telnyx::Models::GlobalIPUsageRetrieveParams

  HostedNumber = Telnyx::Models::HostedNumber

  InboundChannelListParams = Telnyx::Models::InboundChannelListParams

  InboundChannelUpdateParams = Telnyx::Models::InboundChannelUpdateParams

  InboundFqdn = Telnyx::Models::InboundFqdn

  InboundIP = Telnyx::Models::InboundIP

  InboundMessageWebhookEvent = Telnyx::Models::InboundMessageWebhookEvent

  InexplicitNumberOrderCreateParams = Telnyx::Models::InexplicitNumberOrderCreateParams

  InexplicitNumberOrderListParams = Telnyx::Models::InexplicitNumberOrderListParams

  InexplicitNumberOrderRetrieveParams = Telnyx::Models::InexplicitNumberOrderRetrieveParams

  IntegrationSecret = Telnyx::Models::IntegrationSecret

  IntegrationSecretCreateParams = Telnyx::Models::IntegrationSecretCreateParams

  IntegrationSecretDeleteParams = Telnyx::Models::IntegrationSecretDeleteParams

  IntegrationSecretListParams = Telnyx::Models::IntegrationSecretListParams

  Interface = Telnyx::Models::Interface

  InterfaceStatus = Telnyx::Models::InterfaceStatus

  InventoryCoverageListParams = Telnyx::Models::InventoryCoverageListParams

  InvoiceListParams = Telnyx::Models::InvoiceListParams

  InvoiceRetrieveParams = Telnyx::Models::InvoiceRetrieveParams

  IP = Telnyx::Models::IP

  IPConnection = Telnyx::Models::IPConnection

  IPConnectionCreateParams = Telnyx::Models::IPConnectionCreateParams

  IPConnectionDeleteParams = Telnyx::Models::IPConnectionDeleteParams

  IPConnectionListParams = Telnyx::Models::IPConnectionListParams

  IPConnectionRetrieveParams = Telnyx::Models::IPConnectionRetrieveParams

  IPConnectionUpdateParams = Telnyx::Models::IPConnectionUpdateParams

  IPCreateParams = Telnyx::Models::IPCreateParams

  IPDeleteParams = Telnyx::Models::IPDeleteParams

  IPListParams = Telnyx::Models::IPListParams

  IPRetrieveParams = Telnyx::Models::IPRetrieveParams

  IPUpdateParams = Telnyx::Models::IPUpdateParams

  LedgerBillingGroupReport = Telnyx::Models::LedgerBillingGroupReport

  LedgerBillingGroupReportCreateParams = Telnyx::Models::LedgerBillingGroupReportCreateParams

  LedgerBillingGroupReportRetrieveParams = Telnyx::Models::LedgerBillingGroupReportRetrieveParams

  Legacy = Telnyx::Models::Legacy

  ListRetrieveAllParams = Telnyx::Models::ListRetrieveAllParams

  ListRetrieveByZoneParams = Telnyx::Models::ListRetrieveByZoneParams

  ManagedAccount = Telnyx::Models::ManagedAccount

  ManagedAccountBalance = Telnyx::Models::ManagedAccountBalance

  ManagedAccountCreateParams = Telnyx::Models::ManagedAccountCreateParams

  ManagedAccountGetAllocatableGlobalOutboundChannelsParams =
    Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsParams

  ManagedAccountListParams = Telnyx::Models::ManagedAccountListParams

  ManagedAccountRetrieveParams = Telnyx::Models::ManagedAccountRetrieveParams

  ManagedAccounts = Telnyx::Models::ManagedAccounts

  ManagedAccountUpdateGlobalChannelLimitParams =
    Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitParams

  ManagedAccountUpdateParams = Telnyx::Models::ManagedAccountUpdateParams

  MediaDeleteParams = Telnyx::Models::MediaDeleteParams

  MediaDownloadParams = Telnyx::Models::MediaDownloadParams

  MediaListParams = Telnyx::Models::MediaListParams

  MediaResource = Telnyx::Models::MediaResource

  MediaRetrieveParams = Telnyx::Models::MediaRetrieveParams

  MediaUpdateParams = Telnyx::Models::MediaUpdateParams

  MediaUploadParams = Telnyx::Models::MediaUploadParams

  MessageCancelScheduledParams = Telnyx::Models::MessageCancelScheduledParams

  MessageRetrieveParams = Telnyx::Models::MessageRetrieveParams

  Messages = Telnyx::Models::Messages

  MessageScheduleParams = Telnyx::Models::MessageScheduleParams

  MessageSendGroupMmsParams = Telnyx::Models::MessageSendGroupMmsParams

  MessageSendLongCodeParams = Telnyx::Models::MessageSendLongCodeParams

  MessageSendNumberPoolParams = Telnyx::Models::MessageSendNumberPoolParams

  MessageSendParams = Telnyx::Models::MessageSendParams

  MessageSendShortCodeParams = Telnyx::Models::MessageSendShortCodeParams

  MessageTemplate = Telnyx::Models::MessageTemplate

  Messaging = Telnyx::Models::Messaging

  MessagingError = Telnyx::Models::MessagingError

  MessagingFeatureSet = Telnyx::Models::MessagingFeatureSet

  MessagingHostedNumberDeleteParams = Telnyx::Models::MessagingHostedNumberDeleteParams

  MessagingHostedNumberOrder = Telnyx::Models::MessagingHostedNumberOrder

  MessagingHostedNumberOrderCheckEligibilityParams =
    Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityParams

  MessagingHostedNumberOrderCreateParams = Telnyx::Models::MessagingHostedNumberOrderCreateParams

  MessagingHostedNumberOrderCreateVerificationCodesParams =
    Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesParams

  MessagingHostedNumberOrderDeleteParams = Telnyx::Models::MessagingHostedNumberOrderDeleteParams

  MessagingHostedNumberOrderListParams = Telnyx::Models::MessagingHostedNumberOrderListParams

  MessagingHostedNumberOrderRetrieveParams = Telnyx::Models::MessagingHostedNumberOrderRetrieveParams

  MessagingHostedNumberOrders = Telnyx::Models::MessagingHostedNumberOrders

  MessagingHostedNumberOrderValidateCodesParams =
    Telnyx::Models::MessagingHostedNumberOrderValidateCodesParams

  MessagingNumbersBulkUpdateCreateParams = Telnyx::Models::MessagingNumbersBulkUpdateCreateParams

  MessagingNumbersBulkUpdateRetrieveParams = Telnyx::Models::MessagingNumbersBulkUpdateRetrieveParams

  MessagingOptoutListParams = Telnyx::Models::MessagingOptoutListParams

  MessagingProfile = Telnyx::Models::MessagingProfile

  MessagingProfileCreateParams = Telnyx::Models::MessagingProfileCreateParams

  MessagingProfileDeleteParams = Telnyx::Models::MessagingProfileDeleteParams

  MessagingProfileListParams = Telnyx::Models::MessagingProfileListParams

  MessagingProfileListPhoneNumbersParams = Telnyx::Models::MessagingProfileListPhoneNumbersParams

  MessagingProfileListShortCodesParams = Telnyx::Models::MessagingProfileListShortCodesParams

  MessagingProfileRetrieveParams = Telnyx::Models::MessagingProfileRetrieveParams

  MessagingProfiles = Telnyx::Models::MessagingProfiles

  MessagingProfileUpdateParams = Telnyx::Models::MessagingProfileUpdateParams

  MessagingTollfree = Telnyx::Models::MessagingTollfree

  MessagingURLDomainListParams = Telnyx::Models::MessagingURLDomainListParams

  MesssageRcsParams = Telnyx::Models::MesssageRcsParams

  Metadata = Telnyx::Models::Metadata

  MobileNetworkOperatorListParams = Telnyx::Models::MobileNetworkOperatorListParams

  MobilePushCredentialCreateParams = Telnyx::Models::MobilePushCredentialCreateParams

  MobilePushCredentialDeleteParams = Telnyx::Models::MobilePushCredentialDeleteParams

  MobilePushCredentialListParams = Telnyx::Models::MobilePushCredentialListParams

  MobilePushCredentialRetrieveParams = Telnyx::Models::MobilePushCredentialRetrieveParams

  MonthDetail = Telnyx::Models::MonthDetail

  NetworkCoverageListParams = Telnyx::Models::NetworkCoverageListParams

  NetworkCreate = Telnyx::Models::NetworkCreate

  NetworkCreateParams = Telnyx::Models::NetworkCreateParams

  NetworkDeleteParams = Telnyx::Models::NetworkDeleteParams

  NetworkListInterfacesParams = Telnyx::Models::NetworkListInterfacesParams

  NetworkListParams = Telnyx::Models::NetworkListParams

  NetworkRetrieveParams = Telnyx::Models::NetworkRetrieveParams

  Networks = Telnyx::Models::Networks

  NetworkUpdateParams = Telnyx::Models::NetworkUpdateParams

  NotificationChannel = Telnyx::Models::NotificationChannel

  NotificationChannelCreateParams = Telnyx::Models::NotificationChannelCreateParams

  NotificationChannelDeleteParams = Telnyx::Models::NotificationChannelDeleteParams

  NotificationChannelListParams = Telnyx::Models::NotificationChannelListParams

  NotificationChannelRetrieveParams = Telnyx::Models::NotificationChannelRetrieveParams

  NotificationChannelUpdateParams = Telnyx::Models::NotificationChannelUpdateParams

  NotificationEventConditionListParams = Telnyx::Models::NotificationEventConditionListParams

  NotificationEventListParams = Telnyx::Models::NotificationEventListParams

  NotificationProfile = Telnyx::Models::NotificationProfile

  NotificationProfileCreateParams = Telnyx::Models::NotificationProfileCreateParams

  NotificationProfileDeleteParams = Telnyx::Models::NotificationProfileDeleteParams

  NotificationProfileListParams = Telnyx::Models::NotificationProfileListParams

  NotificationProfileRetrieveParams = Telnyx::Models::NotificationProfileRetrieveParams

  NotificationProfileUpdateParams = Telnyx::Models::NotificationProfileUpdateParams

  NotificationSetting = Telnyx::Models::NotificationSetting

  NotificationSettingCreateParams = Telnyx::Models::NotificationSettingCreateParams

  NotificationSettingDeleteParams = Telnyx::Models::NotificationSettingDeleteParams

  NotificationSettingListParams = Telnyx::Models::NotificationSettingListParams

  NotificationSettingRetrieveParams = Telnyx::Models::NotificationSettingRetrieveParams

  NumberBlockOrder = Telnyx::Models::NumberBlockOrder

  NumberBlockOrderCreateParams = Telnyx::Models::NumberBlockOrderCreateParams

  NumberBlockOrderListParams = Telnyx::Models::NumberBlockOrderListParams

  NumberBlockOrderRetrieveParams = Telnyx::Models::NumberBlockOrderRetrieveParams

  NumberHealthMetrics = Telnyx::Models::NumberHealthMetrics

  NumberLookupRetrieveParams = Telnyx::Models::NumberLookupRetrieveParams

  NumberOrderCreateParams = Telnyx::Models::NumberOrderCreateParams

  NumberOrderListParams = Telnyx::Models::NumberOrderListParams

  NumberOrderPhoneNumber = Telnyx::Models::NumberOrderPhoneNumber

  NumberOrderPhoneNumberListParams = Telnyx::Models::NumberOrderPhoneNumberListParams

  NumberOrderPhoneNumberRetrieveParams = Telnyx::Models::NumberOrderPhoneNumberRetrieveParams

  NumberOrderPhoneNumberUpdateRequirementGroupParams =
    Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupParams

  NumberOrderPhoneNumberUpdateRequirementsParams =
    Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementsParams

  NumberOrderRetrieveParams = Telnyx::Models::NumberOrderRetrieveParams

  NumberOrderStatusUpdateWebhookEvent = Telnyx::Models::NumberOrderStatusUpdateWebhookEvent

  NumberOrderUpdateParams = Telnyx::Models::NumberOrderUpdateParams

  NumberOrderWithPhoneNumbers = Telnyx::Models::NumberOrderWithPhoneNumbers

  NumberPoolSettings = Telnyx::Models::NumberPoolSettings

  NumberReservation = Telnyx::Models::NumberReservation

  NumberReservationCreateParams = Telnyx::Models::NumberReservationCreateParams

  NumberReservationListParams = Telnyx::Models::NumberReservationListParams

  NumberReservationRetrieveParams = Telnyx::Models::NumberReservationRetrieveParams

  NumberReservations = Telnyx::Models::NumberReservations

  NumbersFeatureCreateParams = Telnyx::Models::NumbersFeatureCreateParams

  OAuthClient = Telnyx::Models::OAuthClient

  OAuthClientCreateParams = Telnyx::Models::OAuthClientCreateParams

  OAuthClientDeleteParams = Telnyx::Models::OAuthClientDeleteParams

  OAuthClientListParams = Telnyx::Models::OAuthClientListParams

  OAuthClientRetrieveParams = Telnyx::Models::OAuthClientRetrieveParams

  OAuthClientUpdateParams = Telnyx::Models::OAuthClientUpdateParams

  OAuthGrant = Telnyx::Models::OAuthGrant

  OAuthGrantDeleteParams = Telnyx::Models::OAuthGrantDeleteParams

  OAuthGrantListParams = Telnyx::Models::OAuthGrantListParams

  OAuthGrantRetrieveParams = Telnyx::Models::OAuthGrantRetrieveParams

  OAuthGrantsParams = Telnyx::Models::OAuthGrantsParams

  OAuthIntrospectParams = Telnyx::Models::OAuthIntrospectParams

  OAuthRegisterParams = Telnyx::Models::OAuthRegisterParams

  OAuthRetrieveAuthorizeParams = Telnyx::Models::OAuthRetrieveAuthorizeParams

  OAuthRetrieveJwksParams = Telnyx::Models::OAuthRetrieveJwksParams

  OAuthRetrieveParams = Telnyx::Models::OAuthRetrieveParams

  OAuthTokenParams = Telnyx::Models::OAuthTokenParams

  OperatorConnect = Telnyx::Models::OperatorConnect

  OtaUpdateListParams = Telnyx::Models::OtaUpdateListParams

  OtaUpdateRetrieveParams = Telnyx::Models::OtaUpdateRetrieveParams

  OutboundCallRecording = Telnyx::Models::OutboundCallRecording

  OutboundFqdn = Telnyx::Models::OutboundFqdn

  OutboundIP = Telnyx::Models::OutboundIP

  OutboundMessagePayload = Telnyx::Models::OutboundMessagePayload

  OutboundVoiceProfile = Telnyx::Models::OutboundVoiceProfile

  OutboundVoiceProfileCreateParams = Telnyx::Models::OutboundVoiceProfileCreateParams

  OutboundVoiceProfileDeleteParams = Telnyx::Models::OutboundVoiceProfileDeleteParams

  OutboundVoiceProfileListParams = Telnyx::Models::OutboundVoiceProfileListParams

  OutboundVoiceProfileRetrieveParams = Telnyx::Models::OutboundVoiceProfileRetrieveParams

  OutboundVoiceProfileUpdateParams = Telnyx::Models::OutboundVoiceProfileUpdateParams

  PaginationMeta = Telnyx::Models::PaginationMeta

  PaginationMetaCloudflareIPListSync = Telnyx::Models::PaginationMetaCloudflareIPListSync

  PaginationMetaOAuth = Telnyx::Models::PaginationMetaOAuth

  PartnerCampaignListParams = Telnyx::Models::PartnerCampaignListParams

  PartnerCampaignListSharedByMeParams = Telnyx::Models::PartnerCampaignListSharedByMeParams

  PartnerCampaignRetrieveParams = Telnyx::Models::PartnerCampaignRetrieveParams

  PartnerCampaignRetrieveSharingStatusParams = Telnyx::Models::PartnerCampaignRetrieveSharingStatusParams

  PartnerCampaignUpdateParams = Telnyx::Models::PartnerCampaignUpdateParams

  Payment = Telnyx::Models::Payment

  PhoneNumber = Telnyx::Models::PhoneNumber

  PhoneNumberAssignmentByProfileAssignParams = Telnyx::Models::PhoneNumberAssignmentByProfileAssignParams

  PhoneNumberAssignmentByProfileRetrievePhoneNumberStatusParams =
    Telnyx::Models::PhoneNumberAssignmentByProfileRetrievePhoneNumberStatusParams

  PhoneNumberAssignmentByProfileRetrieveStatusParams =
    Telnyx::Models::PhoneNumberAssignmentByProfileRetrieveStatusParams

  PhoneNumberBlocks = Telnyx::Models::PhoneNumberBlocks

  PhoneNumberCampaign = Telnyx::Models::PhoneNumberCampaign

  PhoneNumberCampaignCreate = Telnyx::Models::PhoneNumberCampaignCreate

  PhoneNumberCampaignCreateParams = Telnyx::Models::PhoneNumberCampaignCreateParams

  PhoneNumberCampaignDeleteParams = Telnyx::Models::PhoneNumberCampaignDeleteParams

  PhoneNumberCampaignListParams = Telnyx::Models::PhoneNumberCampaignListParams

  PhoneNumberCampaignRetrieveParams = Telnyx::Models::PhoneNumberCampaignRetrieveParams

  PhoneNumberCampaignUpdateParams = Telnyx::Models::PhoneNumberCampaignUpdateParams

  PhoneNumberDeleteParams = Telnyx::Models::PhoneNumberDeleteParams

  PhoneNumberDetailed = Telnyx::Models::PhoneNumberDetailed

  PhoneNumberListParams = Telnyx::Models::PhoneNumberListParams

  PhoneNumberRetrieveParams = Telnyx::Models::PhoneNumberRetrieveParams

  PhoneNumbers = Telnyx::Models::PhoneNumbers

  PhoneNumberSlimListParams = Telnyx::Models::PhoneNumberSlimListParams

  PhoneNumbersRegulatoryRequirementRetrieveParams =
    Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveParams

  PhoneNumberUpdateParams = Telnyx::Models::PhoneNumberUpdateParams

  PhoneNumberWithMessagingSettings = Telnyx::Models::PhoneNumberWithMessagingSettings

  PortabilityCheckRunParams = Telnyx::Models::PortabilityCheckRunParams

  Porting = Telnyx::Models::Porting

  PortingListUkCarriersParams = Telnyx::Models::PortingListUkCarriersParams

  PortingOrder = Telnyx::Models::PortingOrder

  PortingOrderActivationSettings = Telnyx::Models::PortingOrderActivationSettings

  PortingOrderCreateParams = Telnyx::Models::PortingOrderCreateParams

  PortingOrderDeleteParams = Telnyx::Models::PortingOrderDeleteParams

  PortingOrderDocuments = Telnyx::Models::PortingOrderDocuments

  PortingOrderEndUser = Telnyx::Models::PortingOrderEndUser

  PortingOrderEndUserAdmin = Telnyx::Models::PortingOrderEndUserAdmin

  PortingOrderEndUserLocation = Telnyx::Models::PortingOrderEndUserLocation

  PortingOrderListParams = Telnyx::Models::PortingOrderListParams

  PortingOrderMessaging = Telnyx::Models::PortingOrderMessaging

  PortingOrderMisc = Telnyx::Models::PortingOrderMisc

  PortingOrderPhoneNumberConfiguration = Telnyx::Models::PortingOrderPhoneNumberConfiguration

  PortingOrderRequirement = Telnyx::Models::PortingOrderRequirement

  PortingOrderRetrieveAllowedFocWindowsParams = Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsParams

  PortingOrderRetrieveExceptionTypesParams = Telnyx::Models::PortingOrderRetrieveExceptionTypesParams

  PortingOrderRetrieveLoaTemplateParams = Telnyx::Models::PortingOrderRetrieveLoaTemplateParams

  PortingOrderRetrieveParams = Telnyx::Models::PortingOrderRetrieveParams

  PortingOrderRetrieveRequirementsParams = Telnyx::Models::PortingOrderRetrieveRequirementsParams

  PortingOrderRetrieveSubRequestParams = Telnyx::Models::PortingOrderRetrieveSubRequestParams

  PortingOrders = Telnyx::Models::PortingOrders

  PortingOrdersActivationJob = Telnyx::Models::PortingOrdersActivationJob

  PortingOrdersExceptionType = Telnyx::Models::PortingOrdersExceptionType

  PortingOrderStatus = Telnyx::Models::PortingOrderStatus

  PortingOrderType = Telnyx::Models::PortingOrderType

  PortingOrderUpdateParams = Telnyx::Models::PortingOrderUpdateParams

  PortingOrderUserFeedback = Telnyx::Models::PortingOrderUserFeedback

  PortingPhoneNumberListParams = Telnyx::Models::PortingPhoneNumberListParams

  PortoutDetails = Telnyx::Models::PortoutDetails

  PortoutListParams = Telnyx::Models::PortoutListParams

  PortoutListRejectionCodesParams = Telnyx::Models::PortoutListRejectionCodesParams

  PortoutRetrieveParams = Telnyx::Models::PortoutRetrieveParams

  Portouts = Telnyx::Models::Portouts

  PortoutUpdateStatusParams = Telnyx::Models::PortoutUpdateStatusParams

  PrivateWirelessGateway = Telnyx::Models::PrivateWirelessGateway

  PrivateWirelessGatewayCreateParams = Telnyx::Models::PrivateWirelessGatewayCreateParams

  PrivateWirelessGatewayDeleteParams = Telnyx::Models::PrivateWirelessGatewayDeleteParams

  PrivateWirelessGatewayListParams = Telnyx::Models::PrivateWirelessGatewayListParams

  PrivateWirelessGatewayRetrieveParams = Telnyx::Models::PrivateWirelessGatewayRetrieveParams

  PrivateWirelessGatewayStatus = Telnyx::Models::PrivateWirelessGatewayStatus

  PublicInternetGatewayCreateParams = Telnyx::Models::PublicInternetGatewayCreateParams

  PublicInternetGatewayDeleteParams = Telnyx::Models::PublicInternetGatewayDeleteParams

  PublicInternetGatewayListParams = Telnyx::Models::PublicInternetGatewayListParams

  PublicInternetGatewayRetrieveParams = Telnyx::Models::PublicInternetGatewayRetrieveParams

  PushCredential = Telnyx::Models::PushCredential

  PushCredentialResponse = Telnyx::Models::PushCredentialResponse

  PwgAssignedResourcesSummary = Telnyx::Models::PwgAssignedResourcesSummary

  QueueRetrieveParams = Telnyx::Models::QueueRetrieveParams

  Queues = Telnyx::Models::Queues

  RcsAgent = Telnyx::Models::RcsAgent

  RcsAgentMessage = Telnyx::Models::RcsAgentMessage

  RcsAgentResponse = Telnyx::Models::RcsAgentResponse

  RcsCardContent = Telnyx::Models::RcsCardContent

  RcsContentInfo = Telnyx::Models::RcsContentInfo

  RcsSuggestion = Telnyx::Models::RcsSuggestion

  Record = Telnyx::Models::Record

  RecordingDeleteParams = Telnyx::Models::RecordingDeleteParams

  RecordingListParams = Telnyx::Models::RecordingListParams

  RecordingResponseData = Telnyx::Models::RecordingResponseData

  RecordingRetrieveParams = Telnyx::Models::RecordingRetrieveParams

  Recordings = Telnyx::Models::Recordings

  RecordingTranscription = Telnyx::Models::RecordingTranscription

  RecordingTranscriptionDeleteParams = Telnyx::Models::RecordingTranscriptionDeleteParams

  RecordingTranscriptionListParams = Telnyx::Models::RecordingTranscriptionListParams

  RecordingTranscriptionRetrieveParams = Telnyx::Models::RecordingTranscriptionRetrieveParams

  RegionIn = Telnyx::Models::RegionIn

  RegionListParams = Telnyx::Models::RegionListParams

  RegulatoryRequirementRetrieveParams = Telnyx::Models::RegulatoryRequirementRetrieveParams

  ReplacedLinkClickWebhookEvent = Telnyx::Models::ReplacedLinkClickWebhookEvent

  ReportListMdrsParams = Telnyx::Models::ReportListMdrsParams

  ReportListWdrsParams = Telnyx::Models::ReportListWdrsParams

  Reports = Telnyx::Models::Reports

  RequirementGroup = Telnyx::Models::RequirementGroup

  RequirementGroupCreateParams = Telnyx::Models::RequirementGroupCreateParams

  RequirementGroupDeleteParams = Telnyx::Models::RequirementGroupDeleteParams

  RequirementGroupListParams = Telnyx::Models::RequirementGroupListParams

  RequirementGroupRetrieveParams = Telnyx::Models::RequirementGroupRetrieveParams

  RequirementGroupSubmitForApprovalParams = Telnyx::Models::RequirementGroupSubmitForApprovalParams

  RequirementGroupUpdateParams = Telnyx::Models::RequirementGroupUpdateParams

  RequirementListParams = Telnyx::Models::RequirementListParams

  RequirementRetrieveParams = Telnyx::Models::RequirementRetrieveParams

  RequirementTypeListParams = Telnyx::Models::RequirementTypeListParams

  RequirementTypeRetrieveParams = Telnyx::Models::RequirementTypeRetrieveParams

  ReservedPhoneNumber = Telnyx::Models::ReservedPhoneNumber

  Room = Telnyx::Models::Room

  RoomComposition = Telnyx::Models::RoomComposition

  RoomCompositionCreateParams = Telnyx::Models::RoomCompositionCreateParams

  RoomCompositionDeleteParams = Telnyx::Models::RoomCompositionDeleteParams

  RoomCompositionListParams = Telnyx::Models::RoomCompositionListParams

  RoomCompositionRetrieveParams = Telnyx::Models::RoomCompositionRetrieveParams

  RoomCreateParams = Telnyx::Models::RoomCreateParams

  RoomDeleteParams = Telnyx::Models::RoomDeleteParams

  RoomListParams = Telnyx::Models::RoomListParams

  RoomParticipant = Telnyx::Models::RoomParticipant

  RoomParticipantListParams = Telnyx::Models::RoomParticipantListParams

  RoomParticipantRetrieveParams = Telnyx::Models::RoomParticipantRetrieveParams

  RoomRecordingDeleteBulkParams = Telnyx::Models::RoomRecordingDeleteBulkParams

  RoomRecordingDeleteParams = Telnyx::Models::RoomRecordingDeleteParams

  RoomRecordingListParams = Telnyx::Models::RoomRecordingListParams

  RoomRecordingRetrieveParams = Telnyx::Models::RoomRecordingRetrieveParams

  RoomRetrieveParams = Telnyx::Models::RoomRetrieveParams

  Rooms = Telnyx::Models::Rooms

  RoomSession = Telnyx::Models::RoomSession

  RoomUpdateParams = Telnyx::Models::RoomUpdateParams

  S3ConfigurationData = Telnyx::Models::S3ConfigurationData

  ServicePlan = Telnyx::Models::ServicePlan

  SetiRetrieveBlackBoxTestResultsParams = Telnyx::Models::SetiRetrieveBlackBoxTestResultsParams

  Settings = Telnyx::Models::Settings

  ShortCode = Telnyx::Models::ShortCode

  ShortCodeListParams = Telnyx::Models::ShortCodeListParams

  ShortCodeRetrieveParams = Telnyx::Models::ShortCodeRetrieveParams

  ShortCodeUpdateParams = Telnyx::Models::ShortCodeUpdateParams

  SimCard = Telnyx::Models::SimCard

  SimCardDataUsageNotification = Telnyx::Models::SimCardDataUsageNotification

  SimCardDataUsageNotificationCreateParams = Telnyx::Models::SimCardDataUsageNotificationCreateParams

  SimCardDataUsageNotificationDeleteParams = Telnyx::Models::SimCardDataUsageNotificationDeleteParams

  SimCardDataUsageNotificationListParams = Telnyx::Models::SimCardDataUsageNotificationListParams

  SimCardDataUsageNotificationRetrieveParams = Telnyx::Models::SimCardDataUsageNotificationRetrieveParams

  SimCardDataUsageNotificationUpdateParams = Telnyx::Models::SimCardDataUsageNotificationUpdateParams

  SimCardDeleteParams = Telnyx::Models::SimCardDeleteParams

  SimCardGetActivationCodeParams = Telnyx::Models::SimCardGetActivationCodeParams

  SimCardGetDeviceDetailsParams = Telnyx::Models::SimCardGetDeviceDetailsParams

  SimCardGetPublicIPParams = Telnyx::Models::SimCardGetPublicIPParams

  SimCardGroup = Telnyx::Models::SimCardGroup

  SimCardGroupCreateParams = Telnyx::Models::SimCardGroupCreateParams

  SimCardGroupDeleteParams = Telnyx::Models::SimCardGroupDeleteParams

  SimCardGroupListParams = Telnyx::Models::SimCardGroupListParams

  SimCardGroupRetrieveParams = Telnyx::Models::SimCardGroupRetrieveParams

  SimCardGroups = Telnyx::Models::SimCardGroups

  SimCardGroupUpdateParams = Telnyx::Models::SimCardGroupUpdateParams

  SimCardListParams = Telnyx::Models::SimCardListParams

  SimCardListWirelessConnectivityLogsParams = Telnyx::Models::SimCardListWirelessConnectivityLogsParams

  SimCardOrder = Telnyx::Models::SimCardOrder

  SimCardOrderCreateParams = Telnyx::Models::SimCardOrderCreateParams

  SimCardOrderListParams = Telnyx::Models::SimCardOrderListParams

  SimCardOrderPreviewPreviewParams = Telnyx::Models::SimCardOrderPreviewPreviewParams

  SimCardOrderRetrieveParams = Telnyx::Models::SimCardOrderRetrieveParams

  SimCardRetrieveParams = Telnyx::Models::SimCardRetrieveParams

  SimCards = Telnyx::Models::SimCards

  SimCardStatus = Telnyx::Models::SimCardStatus

  SimCardUpdateParams = Telnyx::Models::SimCardUpdateParams

  SimpleSimCard = Telnyx::Models::SimpleSimCard

  SipHeader = Telnyx::Models::SipHeader

  SiprecConnectorCreateParams = Telnyx::Models::SiprecConnectorCreateParams

  SiprecConnectorDeleteParams = Telnyx::Models::SiprecConnectorDeleteParams

  SiprecConnectorRetrieveParams = Telnyx::Models::SiprecConnectorRetrieveParams

  SiprecConnectorUpdateParams = Telnyx::Models::SiprecConnectorUpdateParams

  SoundModifications = Telnyx::Models::SoundModifications

  StockExchange = Telnyx::Models::StockExchange

  Storage = Telnyx::Models::Storage

  StorageListMigrationSourceCoverageParams = Telnyx::Models::StorageListMigrationSourceCoverageParams

  StreamBidirectionalCodec = Telnyx::Models::StreamBidirectionalCodec

  StreamBidirectionalMode = Telnyx::Models::StreamBidirectionalMode

  StreamBidirectionalSamplingRate = Telnyx::Models::StreamBidirectionalSamplingRate

  StreamBidirectionalTargetLegs = Telnyx::Models::StreamBidirectionalTargetLegs

  StreamCodec = Telnyx::Models::StreamCodec

  StreamingFailedWebhookEvent = Telnyx::Models::StreamingFailedWebhookEvent

  StreamingStartedWebhookEvent = Telnyx::Models::StreamingStartedWebhookEvent

  StreamingStoppedWebhookEvent = Telnyx::Models::StreamingStoppedWebhookEvent

  SubNumberOrder = Telnyx::Models::SubNumberOrder

  SubNumberOrderCancelParams = Telnyx::Models::SubNumberOrderCancelParams

  SubNumberOrderListParams = Telnyx::Models::SubNumberOrderListParams

  SubNumberOrderRegulatoryRequirement = Telnyx::Models::SubNumberOrderRegulatoryRequirement

  SubNumberOrderRegulatoryRequirementWithValue =
    Telnyx::Models::SubNumberOrderRegulatoryRequirementWithValue

  SubNumberOrderRetrieveParams = Telnyx::Models::SubNumberOrderRetrieveParams

  SubNumberOrdersReportCreateParams = Telnyx::Models::SubNumberOrdersReportCreateParams

  SubNumberOrdersReportDownloadParams = Telnyx::Models::SubNumberOrdersReportDownloadParams

  SubNumberOrdersReportRetrieveParams = Telnyx::Models::SubNumberOrdersReportRetrieveParams

  SubNumberOrderUpdateParams = Telnyx::Models::SubNumberOrderUpdateParams

  SubNumberOrderUpdateRequirementGroupParams = Telnyx::Models::SubNumberOrderUpdateRequirementGroupParams

  TaskStatus = Telnyx::Models::TaskStatus

  TelephonyCredential = Telnyx::Models::TelephonyCredential

  TelephonyCredentialCreateParams = Telnyx::Models::TelephonyCredentialCreateParams

  TelephonyCredentialCreateTokenParams = Telnyx::Models::TelephonyCredentialCreateTokenParams

  TelephonyCredentialDeleteParams = Telnyx::Models::TelephonyCredentialDeleteParams

  TelephonyCredentialListParams = Telnyx::Models::TelephonyCredentialListParams

  TelephonyCredentialRetrieveParams = Telnyx::Models::TelephonyCredentialRetrieveParams

  TelephonyCredentialUpdateParams = Telnyx::Models::TelephonyCredentialUpdateParams

  TelnyxBrand = Telnyx::Models::TelnyxBrand

  TelnyxCampaignCsp = Telnyx::Models::TelnyxCampaignCsp

  TelnyxDownstreamCampaign = Telnyx::Models::TelnyxDownstreamCampaign

  Texml = Telnyx::Models::Texml

  TexmlApplication = Telnyx::Models::TexmlApplication

  TexmlApplicationCreateParams = Telnyx::Models::TexmlApplicationCreateParams

  TexmlApplicationDeleteParams = Telnyx::Models::TexmlApplicationDeleteParams

  TexmlApplicationListParams = Telnyx::Models::TexmlApplicationListParams

  TexmlApplicationRetrieveParams = Telnyx::Models::TexmlApplicationRetrieveParams

  TexmlApplicationUpdateParams = Telnyx::Models::TexmlApplicationUpdateParams

  TexmlSecretsParams = Telnyx::Models::TexmlSecretsParams

  TextToSpeechGenerateSpeechParams = Telnyx::Models::TextToSpeechGenerateSpeechParams

  TextToSpeechListVoicesParams = Telnyx::Models::TextToSpeechListVoicesParams

  TrafficType = Telnyx::Models::TrafficType

  TranscriptionWebhookEvent = Telnyx::Models::TranscriptionWebhookEvent

  TransportProtocol = Telnyx::Models::TransportProtocol

  UnsafeUnwrapWebhookEvent = Telnyx::Models::UnsafeUnwrapWebhookEvent

  UnwrapWebhookEvent = Telnyx::Models::UnwrapWebhookEvent

  UpdateRegulatoryRequirement = Telnyx::Models::UpdateRegulatoryRequirement

  URLShortenerSettings = Telnyx::Models::URLShortenerSettings

  UsagePaymentMethod = Telnyx::Models::UsagePaymentMethod

  UsageReportGetOptionsParams = Telnyx::Models::UsageReportGetOptionsParams

  UsageReportListParams = Telnyx::Models::UsageReportListParams

  UserAddress = Telnyx::Models::UserAddress

  UserAddressCreateParams = Telnyx::Models::UserAddressCreateParams

  UserAddressListParams = Telnyx::Models::UserAddressListParams

  UserAddressRetrieveParams = Telnyx::Models::UserAddressRetrieveParams

  UserTagListParams = Telnyx::Models::UserTagListParams

  Verification = Telnyx::Models::Verification

  VerificationRetrieveParams = Telnyx::Models::VerificationRetrieveParams

  Verifications = Telnyx::Models::Verifications

  VerificationTriggerCallParams = Telnyx::Models::VerificationTriggerCallParams

  VerificationTriggerFlashcallParams = Telnyx::Models::VerificationTriggerFlashcallParams

  VerificationTriggerSMSParams = Telnyx::Models::VerificationTriggerSMSParams

  VerifiedNumber = Telnyx::Models::VerifiedNumber

  VerifiedNumberCreateParams = Telnyx::Models::VerifiedNumberCreateParams

  VerifiedNumberDataWrapper = Telnyx::Models::VerifiedNumberDataWrapper

  VerifiedNumberDeleteParams = Telnyx::Models::VerifiedNumberDeleteParams

  VerifiedNumberListParams = Telnyx::Models::VerifiedNumberListParams

  VerifiedNumberRetrieveParams = Telnyx::Models::VerifiedNumberRetrieveParams

  VerifiedNumbers = Telnyx::Models::VerifiedNumbers

  VerifyProfile = Telnyx::Models::VerifyProfile

  VerifyProfileCreateParams = Telnyx::Models::VerifyProfileCreateParams

  VerifyProfileCreateTemplateParams = Telnyx::Models::VerifyProfileCreateTemplateParams

  VerifyProfileData = Telnyx::Models::VerifyProfileData

  VerifyProfileDeleteParams = Telnyx::Models::VerifyProfileDeleteParams

  VerifyProfileListParams = Telnyx::Models::VerifyProfileListParams

  VerifyProfileMessageTemplateResponse = Telnyx::Models::VerifyProfileMessageTemplateResponse

  VerifyProfileRetrieveParams = Telnyx::Models::VerifyProfileRetrieveParams

  VerifyProfileRetrieveTemplatesParams = Telnyx::Models::VerifyProfileRetrieveTemplatesParams

  VerifyProfileUpdateParams = Telnyx::Models::VerifyProfileUpdateParams

  VerifyProfileUpdateTemplateParams = Telnyx::Models::VerifyProfileUpdateTemplateParams

  Vertical = Telnyx::Models::Vertical

  VideoRegion = Telnyx::Models::VideoRegion

  VirtualCrossConnectCreateParams = Telnyx::Models::VirtualCrossConnectCreateParams

  VirtualCrossConnectDeleteParams = Telnyx::Models::VirtualCrossConnectDeleteParams

  VirtualCrossConnectListParams = Telnyx::Models::VirtualCrossConnectListParams

  VirtualCrossConnectRetrieveParams = Telnyx::Models::VirtualCrossConnectRetrieveParams

  VirtualCrossConnectsCoverageListParams = Telnyx::Models::VirtualCrossConnectsCoverageListParams

  VirtualCrossConnectUpdateParams = Telnyx::Models::VirtualCrossConnectUpdateParams

  WebhookAPIVersion = Telnyx::Models::WebhookAPIVersion

  WebhookDeliveryListParams = Telnyx::Models::WebhookDeliveryListParams

  WebhookDeliveryRetrieveParams = Telnyx::Models::WebhookDeliveryRetrieveParams

  WebhookUnsafeUnwrapParams = Telnyx::Models::WebhookUnsafeUnwrapParams

  WebhookUnwrapParams = Telnyx::Models::WebhookUnwrapParams

  WellKnownRetrieveAuthorizationServerMetadataParams =
    Telnyx::Models::WellKnownRetrieveAuthorizationServerMetadataParams

  WellKnownRetrieveProtectedResourceMetadataParams =
    Telnyx::Models::WellKnownRetrieveProtectedResourceMetadataParams

  WireguardInterfaceCreateParams = Telnyx::Models::WireguardInterfaceCreateParams

  WireguardInterfaceDeleteParams = Telnyx::Models::WireguardInterfaceDeleteParams

  WireguardInterfaceListParams = Telnyx::Models::WireguardInterfaceListParams

  WireguardInterfaceRetrieveParams = Telnyx::Models::WireguardInterfaceRetrieveParams

  WireguardPeerCreateParams = Telnyx::Models::WireguardPeerCreateParams

  WireguardPeerDeleteParams = Telnyx::Models::WireguardPeerDeleteParams

  WireguardPeerListParams = Telnyx::Models::WireguardPeerListParams

  WireguardPeerPatch = Telnyx::Models::WireguardPeerPatch

  WireguardPeerRetrieveConfigParams = Telnyx::Models::WireguardPeerRetrieveConfigParams

  WireguardPeerRetrieveParams = Telnyx::Models::WireguardPeerRetrieveParams

  WireguardPeerUpdateParams = Telnyx::Models::WireguardPeerUpdateParams

  Wireless = Telnyx::Models::Wireless

  WirelessBlocklist = Telnyx::Models::WirelessBlocklist

  WirelessBlocklistCreateParams = Telnyx::Models::WirelessBlocklistCreateParams

  WirelessBlocklistDeleteParams = Telnyx::Models::WirelessBlocklistDeleteParams

  WirelessBlocklistListParams = Telnyx::Models::WirelessBlocklistListParams

  WirelessBlocklistRetrieveParams = Telnyx::Models::WirelessBlocklistRetrieveParams

  WirelessBlocklistUpdateParams = Telnyx::Models::WirelessBlocklistUpdateParams

  WirelessBlocklistValueListParams = Telnyx::Models::WirelessBlocklistValueListParams

  WirelessRetrieveRegionsParams = Telnyx::Models::WirelessRetrieveRegionsParams
end
