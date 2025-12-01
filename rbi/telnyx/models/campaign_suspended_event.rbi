# typed: strong

module Telnyx
  module Models
    class CampaignSuspendedEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CampaignSuspendedEvent, Telnyx::Internal::AnyHash)
        end

      # The ID of the campaign.
      sig { returns(T.nilable(String)) }
      attr_reader :campaign_id

      sig { params(campaign_id: String).void }
      attr_writer :campaign_id

      # Description of the event.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # The status of the campaign.
      sig do
        returns(T.nilable(Telnyx::CampaignSuspendedEvent::Status::TaggedSymbol))
      end
      attr_reader :status

      sig do
        params(status: Telnyx::CampaignSuspendedEvent::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        returns(T.nilable(Telnyx::CampaignSuspendedEvent::Type::TaggedSymbol))
      end
      attr_reader :type

      sig { params(type: Telnyx::CampaignSuspendedEvent::Type::OrSymbol).void }
      attr_writer :type

      sig do
        params(
          campaign_id: String,
          description: String,
          status: Telnyx::CampaignSuspendedEvent::Status::OrSymbol,
          type: Telnyx::CampaignSuspendedEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the campaign.
        campaign_id: nil,
        # Description of the event.
        description: nil,
        # The status of the campaign.
        status: nil,
        type: nil
      )
      end

      sig do
        override.returns(
          {
            campaign_id: String,
            description: String,
            status: Telnyx::CampaignSuspendedEvent::Status::TaggedSymbol,
            type: Telnyx::CampaignSuspendedEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The status of the campaign.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CampaignSuspendedEvent::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DORMANT =
          T.let(:DORMANT, Telnyx::CampaignSuspendedEvent::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CampaignSuspendedEvent::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CampaignSuspendedEvent::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TELNYX_EVENT =
          T.let(
            :TELNYX_EVENT,
            Telnyx::CampaignSuspendedEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CampaignSuspendedEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
