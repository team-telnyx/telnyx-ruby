# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OutboundVoiceProfiles#create
    class OutboundVoiceProfileCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute name
      #   A user-supplied name to help with organization.
      #
      #   @return [String]
      required :name, String

      # @!attribute billing_group_id
      #   The ID of the billing group associated with the outbound proflile. Defaults to
      #   null (for no group assigned).
      #
      #   @return [String, nil]
      optional :billing_group_id, String, nil?: true

      # @!attribute call_recording
      #
      #   @return [Telnyx::Models::OutboundCallRecording, nil]
      optional :call_recording, -> { Telnyx::OutboundCallRecording }

      # @!attribute calling_window
      #   (BETA) Specifies the time window and call limits for calls made using this
      #   outbound voice profile. Note that all times are UTC in 24-hour clock time.
      #
      #   @return [Telnyx::Models::OutboundVoiceProfileCreateParams::CallingWindow, nil]
      optional :calling_window, -> { Telnyx::OutboundVoiceProfileCreateParams::CallingWindow }

      # @!attribute concurrent_call_limit
      #   Must be no more than your global concurrent call limit. Null means no limit.
      #
      #   @return [Integer, nil]
      optional :concurrent_call_limit, Integer, nil?: true

      # @!attribute daily_spend_limit
      #   The maximum amount of usage charges, in USD, you want Telnyx to allow on this
      #   outbound voice profile in a day before disallowing new calls.
      #
      #   @return [String, nil]
      optional :daily_spend_limit, String

      # @!attribute daily_spend_limit_enabled
      #   Specifies whether to enforce the daily_spend_limit on this outbound voice
      #   profile.
      #
      #   @return [Boolean, nil]
      optional :daily_spend_limit_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute enabled
      #   Specifies whether the outbound voice profile can be used. Disabled profiles will
      #   result in outbound calls being blocked for the associated Connections.
      #
      #   @return [Boolean, nil]
      optional :enabled, Telnyx::Internal::Type::Boolean

      # @!attribute max_destination_rate
      #   Maximum rate (price per minute) for a Destination to be allowed when making
      #   outbound calls.
      #
      #   @return [Float, nil]
      optional :max_destination_rate, Float

      # @!attribute service_plan
      #   Indicates the coverage of the termination regions.
      #
      #   @return [Symbol, Telnyx::Models::ServicePlan, nil]
      optional :service_plan, enum: -> { Telnyx::ServicePlan }

      # @!attribute tags
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute traffic_type
      #   Specifies the type of traffic allowed in this profile.
      #
      #   @return [Symbol, Telnyx::Models::TrafficType, nil]
      optional :traffic_type, enum: -> { Telnyx::TrafficType }

      # @!attribute usage_payment_method
      #   Setting for how costs for outbound profile are calculated.
      #
      #   @return [Symbol, Telnyx::Models::UsagePaymentMethod, nil]
      optional :usage_payment_method, enum: -> { Telnyx::UsagePaymentMethod }

      # @!attribute whitelisted_destinations
      #   The list of destinations you want to be able to call using this outbound voice
      #   profile formatted in alpha2.
      #
      #   @return [Array<String>, nil]
      optional :whitelisted_destinations, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(name:, billing_group_id: nil, call_recording: nil, calling_window: nil, concurrent_call_limit: nil, daily_spend_limit: nil, daily_spend_limit_enabled: nil, enabled: nil, max_destination_rate: nil, service_plan: nil, tags: nil, traffic_type: nil, usage_payment_method: nil, whitelisted_destinations: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::OutboundVoiceProfileCreateParams} for more details.
      #
      #   @param name [String] A user-supplied name to help with organization.
      #
      #   @param billing_group_id [String, nil] The ID of the billing group associated with the outbound proflile. Defaults to n
      #
      #   @param call_recording [Telnyx::Models::OutboundCallRecording]
      #
      #   @param calling_window [Telnyx::Models::OutboundVoiceProfileCreateParams::CallingWindow] (BETA) Specifies the time window and call limits for calls made using this outbo
      #
      #   @param concurrent_call_limit [Integer, nil] Must be no more than your global concurrent call limit. Null means no limit.
      #
      #   @param daily_spend_limit [String] The maximum amount of usage charges, in USD, you want Telnyx to allow on this ou
      #
      #   @param daily_spend_limit_enabled [Boolean] Specifies whether to enforce the daily_spend_limit on this outbound voice profil
      #
      #   @param enabled [Boolean] Specifies whether the outbound voice profile can be used. Disabled profiles will
      #
      #   @param max_destination_rate [Float] Maximum rate (price per minute) for a Destination to be allowed when making outb
      #
      #   @param service_plan [Symbol, Telnyx::Models::ServicePlan] Indicates the coverage of the termination regions.
      #
      #   @param tags [Array<String>]
      #
      #   @param traffic_type [Symbol, Telnyx::Models::TrafficType] Specifies the type of traffic allowed in this profile.
      #
      #   @param usage_payment_method [Symbol, Telnyx::Models::UsagePaymentMethod] Setting for how costs for outbound profile are calculated.
      #
      #   @param whitelisted_destinations [Array<String>] The list of destinations you want to be able to call using this outbound voice p
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class CallingWindow < Telnyx::Internal::Type::BaseModel
        # @!attribute calls_per_cld
        #   (BETA) The maximum number of calls that can be initiated to a single called
        #   party (CLD) within the calling window. A null value means no limit.
        #
        #   @return [Integer, nil]
        optional :calls_per_cld, Integer

        # @!attribute end_time
        #   (BETA) The UTC time of day (in HH:MM format, 24-hour clock) when calls are no
        #   longer allowed to start.
        #
        #   @return [Time, nil]
        optional :end_time, Time

        # @!attribute start_time
        #   (BETA) The UTC time of day (in HH:MM format, 24-hour clock) when calls are
        #   allowed to start.
        #
        #   @return [Time, nil]
        optional :start_time, Time

        # @!method initialize(calls_per_cld: nil, end_time: nil, start_time: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::OutboundVoiceProfileCreateParams::CallingWindow} for more
        #   details.
        #
        #   (BETA) Specifies the time window and call limits for calls made using this
        #   outbound voice profile. Note that all times are UTC in 24-hour clock time.
        #
        #   @param calls_per_cld [Integer] (BETA) The maximum number of calls that can be initiated to a single called part
        #
        #   @param end_time [Time] (BETA) The UTC time of day (in HH:MM format, 24-hour clock) when calls are no lo
        #
        #   @param start_time [Time] (BETA) The UTC time of day (in HH:MM format, 24-hour clock) when calls are allow
      end
    end
  end
end
