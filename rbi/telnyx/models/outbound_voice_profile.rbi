# typed: strong

module Telnyx
  module Models
    class OutboundVoiceProfile < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::OutboundVoiceProfile, Telnyx::Internal::AnyHash)
        end

      # A user-supplied name to help with organization.
      sig { returns(String) }
      attr_accessor :name

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The ID of the billing group associated with the outbound proflile. Defaults to
      # null (for no group assigned).
      sig { returns(T.nilable(String)) }
      attr_accessor :billing_group_id

      sig { returns(T.nilable(Telnyx::OutboundCallRecording)) }
      attr_reader :call_recording

      sig { params(call_recording: Telnyx::OutboundCallRecording::OrHash).void }
      attr_writer :call_recording

      # Must be no more than your global concurrent call limit. Null means no limit.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :concurrent_call_limit

      # Amount of connections associated with this outbound voice profile.
      sig { returns(T.nilable(Integer)) }
      attr_reader :connections_count

      sig { params(connections_count: Integer).void }
      attr_writer :connections_count

      # ISO 8601 formatted date-time indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # The maximum amount of usage charges, in USD, you want Telnyx to allow on this
      # outbound voice profile in a day before disallowing new calls.
      sig { returns(T.nilable(String)) }
      attr_reader :daily_spend_limit

      sig { params(daily_spend_limit: String).void }
      attr_writer :daily_spend_limit

      # Specifies whether to enforce the daily_spend_limit on this outbound voice
      # profile.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :daily_spend_limit_enabled

      sig { params(daily_spend_limit_enabled: T::Boolean).void }
      attr_writer :daily_spend_limit_enabled

      # Specifies whether the outbound voice profile can be used. Disabled profiles will
      # result in outbound calls being blocked for the associated Connections.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enabled

      sig { params(enabled: T::Boolean).void }
      attr_writer :enabled

      # Maximum rate (price per minute) for a Destination to be allowed when making
      # outbound calls.
      sig { returns(T.nilable(Float)) }
      attr_reader :max_destination_rate

      sig { params(max_destination_rate: Float).void }
      attr_writer :max_destination_rate

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # Indicates the coverage of the termination regions.
      sig { returns(T.nilable(Telnyx::ServicePlan::TaggedSymbol)) }
      attr_reader :service_plan

      sig { params(service_plan: Telnyx::ServicePlan::OrSymbol).void }
      attr_writer :service_plan

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Specifies the type of traffic allowed in this profile.
      sig { returns(T.nilable(Telnyx::TrafficType::TaggedSymbol)) }
      attr_reader :traffic_type

      sig { params(traffic_type: Telnyx::TrafficType::OrSymbol).void }
      attr_writer :traffic_type

      # ISO 8601 formatted date-time indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # Setting for how costs for outbound profile are calculated.
      sig { returns(T.nilable(Telnyx::UsagePaymentMethod::TaggedSymbol)) }
      attr_reader :usage_payment_method

      sig do
        params(usage_payment_method: Telnyx::UsagePaymentMethod::OrSymbol).void
      end
      attr_writer :usage_payment_method

      # The list of destinations you want to be able to call using this outbound voice
      # profile formatted in alpha2.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :whitelisted_destinations

      sig { params(whitelisted_destinations: T::Array[String]).void }
      attr_writer :whitelisted_destinations

      sig do
        params(
          name: String,
          id: String,
          billing_group_id: T.nilable(String),
          call_recording: Telnyx::OutboundCallRecording::OrHash,
          concurrent_call_limit: T.nilable(Integer),
          connections_count: Integer,
          created_at: String,
          daily_spend_limit: String,
          daily_spend_limit_enabled: T::Boolean,
          enabled: T::Boolean,
          max_destination_rate: Float,
          record_type: String,
          service_plan: Telnyx::ServicePlan::OrSymbol,
          tags: T::Array[String],
          traffic_type: Telnyx::TrafficType::OrSymbol,
          updated_at: String,
          usage_payment_method: Telnyx::UsagePaymentMethod::OrSymbol,
          whitelisted_destinations: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # A user-supplied name to help with organization.
        name:,
        # Identifies the resource.
        id: nil,
        # The ID of the billing group associated with the outbound proflile. Defaults to
        # null (for no group assigned).
        billing_group_id: nil,
        call_recording: nil,
        # Must be no more than your global concurrent call limit. Null means no limit.
        concurrent_call_limit: nil,
        # Amount of connections associated with this outbound voice profile.
        connections_count: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # The maximum amount of usage charges, in USD, you want Telnyx to allow on this
        # outbound voice profile in a day before disallowing new calls.
        daily_spend_limit: nil,
        # Specifies whether to enforce the daily_spend_limit on this outbound voice
        # profile.
        daily_spend_limit_enabled: nil,
        # Specifies whether the outbound voice profile can be used. Disabled profiles will
        # result in outbound calls being blocked for the associated Connections.
        enabled: nil,
        # Maximum rate (price per minute) for a Destination to be allowed when making
        # outbound calls.
        max_destination_rate: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # Indicates the coverage of the termination regions.
        service_plan: nil,
        tags: nil,
        # Specifies the type of traffic allowed in this profile.
        traffic_type: nil,
        # ISO 8601 formatted date-time indicating when the resource was updated.
        updated_at: nil,
        # Setting for how costs for outbound profile are calculated.
        usage_payment_method: nil,
        # The list of destinations you want to be able to call using this outbound voice
        # profile formatted in alpha2.
        whitelisted_destinations: nil
      )
      end

      sig do
        override.returns(
          {
            name: String,
            id: String,
            billing_group_id: T.nilable(String),
            call_recording: Telnyx::OutboundCallRecording,
            concurrent_call_limit: T.nilable(Integer),
            connections_count: Integer,
            created_at: String,
            daily_spend_limit: String,
            daily_spend_limit_enabled: T::Boolean,
            enabled: T::Boolean,
            max_destination_rate: Float,
            record_type: String,
            service_plan: Telnyx::ServicePlan::TaggedSymbol,
            tags: T::Array[String],
            traffic_type: Telnyx::TrafficType::TaggedSymbol,
            updated_at: String,
            usage_payment_method: Telnyx::UsagePaymentMethod::TaggedSymbol,
            whitelisted_destinations: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
