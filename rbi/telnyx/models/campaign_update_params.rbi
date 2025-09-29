# typed: strong

module Telnyx
  module Models
    class CampaignUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::CampaignUpdateParams, Telnyx::Internal::AnyHash)
        end

      # Help message of the campaign.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :auto_renewal

      sig { params(auto_renewal: T::Boolean).void }
      attr_writer :auto_renewal

      # Help message of the campaign.
      sig { returns(T.nilable(String)) }
      attr_reader :help_message

      sig { params(help_message: String).void }
      attr_writer :help_message

      # Message flow description.
      sig { returns(T.nilable(String)) }
      attr_reader :message_flow

      sig { params(message_flow: String).void }
      attr_writer :message_flow

      # Alphanumeric identifier of the reseller that you want to associate with this
      # campaign.
      sig { returns(T.nilable(String)) }
      attr_reader :reseller_id

      sig { params(reseller_id: String).void }
      attr_writer :reseller_id

      # Message sample. Some campaign tiers require 1 or more message samples.
      sig { returns(T.nilable(String)) }
      attr_reader :sample1

      sig { params(sample1: String).void }
      attr_writer :sample1

      # Message sample. Some campaign tiers require 2 or more message samples.
      sig { returns(T.nilable(String)) }
      attr_reader :sample2

      sig { params(sample2: String).void }
      attr_writer :sample2

      # Message sample. Some campaign tiers require 3 or more message samples.
      sig { returns(T.nilable(String)) }
      attr_reader :sample3

      sig { params(sample3: String).void }
      attr_writer :sample3

      # Message sample. Some campaign tiers require 4 or more message samples.
      sig { returns(T.nilable(String)) }
      attr_reader :sample4

      sig { params(sample4: String).void }
      attr_writer :sample4

      # Message sample. Some campaign tiers require 5 or more message samples.
      sig { returns(T.nilable(String)) }
      attr_reader :sample5

      sig { params(sample5: String).void }
      attr_writer :sample5

      # Webhook failover to which campaign status updates are sent.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_failover_url

      sig { params(webhook_failover_url: String).void }
      attr_writer :webhook_failover_url

      # Webhook to which campaign status updates are sent.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      sig do
        params(
          auto_renewal: T::Boolean,
          help_message: String,
          message_flow: String,
          reseller_id: String,
          sample1: String,
          sample2: String,
          sample3: String,
          sample4: String,
          sample5: String,
          webhook_failover_url: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Help message of the campaign.
        auto_renewal: nil,
        # Help message of the campaign.
        help_message: nil,
        # Message flow description.
        message_flow: nil,
        # Alphanumeric identifier of the reseller that you want to associate with this
        # campaign.
        reseller_id: nil,
        # Message sample. Some campaign tiers require 1 or more message samples.
        sample1: nil,
        # Message sample. Some campaign tiers require 2 or more message samples.
        sample2: nil,
        # Message sample. Some campaign tiers require 3 or more message samples.
        sample3: nil,
        # Message sample. Some campaign tiers require 4 or more message samples.
        sample4: nil,
        # Message sample. Some campaign tiers require 5 or more message samples.
        sample5: nil,
        # Webhook failover to which campaign status updates are sent.
        webhook_failover_url: nil,
        # Webhook to which campaign status updates are sent.
        webhook_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            auto_renewal: T::Boolean,
            help_message: String,
            message_flow: String,
            reseller_id: String,
            sample1: String,
            sample2: String,
            sample3: String,
            sample4: String,
            sample5: String,
            webhook_failover_url: String,
            webhook_url: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
