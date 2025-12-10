# typed: strong

module Telnyx
  module Models
    class PhoneNumberCampaign < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PhoneNumberCampaign, Telnyx::Internal::AnyHash)
        end

      # For shared campaigns, this is the TCR campaign ID, otherwise it is the campaign
      # ID
      sig { returns(String) }
      attr_accessor :campaign_id

      sig { returns(String) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :phone_number

      sig { returns(String) }
      attr_accessor :updated_at

      # The assignment status of the number.
      sig do
        returns(
          T.nilable(Telnyx::PhoneNumberCampaign::AssignmentStatus::TaggedSymbol)
        )
      end
      attr_reader :assignment_status

      sig do
        params(
          assignment_status:
            Telnyx::PhoneNumberCampaign::AssignmentStatus::OrSymbol
        ).void
      end
      attr_writer :assignment_status

      # Brand ID. Empty if the number is associated to a shared campaign.
      sig { returns(T.nilable(String)) }
      attr_reader :brand_id

      sig { params(brand_id: String).void }
      attr_writer :brand_id

      # Extra info about a failure to assign/unassign a number. Relevant only if the
      # assignmentStatus is either FAILED_ASSIGNMENT or FAILED_UNASSIGNMENT
      sig { returns(T.nilable(String)) }
      attr_reader :failure_reasons

      sig { params(failure_reasons: String).void }
      attr_writer :failure_reasons

      # TCR's alphanumeric ID for the brand.
      sig { returns(T.nilable(String)) }
      attr_reader :tcr_brand_id

      sig { params(tcr_brand_id: String).void }
      attr_writer :tcr_brand_id

      # TCR's alphanumeric ID for the campaign.
      sig { returns(T.nilable(String)) }
      attr_reader :tcr_campaign_id

      sig { params(tcr_campaign_id: String).void }
      attr_writer :tcr_campaign_id

      # Campaign ID. Empty if the number is associated to a shared campaign.
      sig { returns(T.nilable(String)) }
      attr_reader :telnyx_campaign_id

      sig { params(telnyx_campaign_id: String).void }
      attr_writer :telnyx_campaign_id

      sig do
        params(
          campaign_id: String,
          created_at: String,
          phone_number: String,
          updated_at: String,
          assignment_status:
            Telnyx::PhoneNumberCampaign::AssignmentStatus::OrSymbol,
          brand_id: String,
          failure_reasons: String,
          tcr_brand_id: String,
          tcr_campaign_id: String,
          telnyx_campaign_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # For shared campaigns, this is the TCR campaign ID, otherwise it is the campaign
        # ID
        campaign_id:,
        created_at:,
        phone_number:,
        updated_at:,
        # The assignment status of the number.
        assignment_status: nil,
        # Brand ID. Empty if the number is associated to a shared campaign.
        brand_id: nil,
        # Extra info about a failure to assign/unassign a number. Relevant only if the
        # assignmentStatus is either FAILED_ASSIGNMENT or FAILED_UNASSIGNMENT
        failure_reasons: nil,
        # TCR's alphanumeric ID for the brand.
        tcr_brand_id: nil,
        # TCR's alphanumeric ID for the campaign.
        tcr_campaign_id: nil,
        # Campaign ID. Empty if the number is associated to a shared campaign.
        telnyx_campaign_id: nil
      )
      end

      sig do
        override.returns(
          {
            campaign_id: String,
            created_at: String,
            phone_number: String,
            updated_at: String,
            assignment_status:
              Telnyx::PhoneNumberCampaign::AssignmentStatus::TaggedSymbol,
            brand_id: String,
            failure_reasons: String,
            tcr_brand_id: String,
            tcr_campaign_id: String,
            telnyx_campaign_id: String
          }
        )
      end
      def to_hash
      end

      # The assignment status of the number.
      module AssignmentStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PhoneNumberCampaign::AssignmentStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FAILED_ASSIGNMENT =
          T.let(
            :FAILED_ASSIGNMENT,
            Telnyx::PhoneNumberCampaign::AssignmentStatus::TaggedSymbol
          )
        PENDING_ASSIGNMENT =
          T.let(
            :PENDING_ASSIGNMENT,
            Telnyx::PhoneNumberCampaign::AssignmentStatus::TaggedSymbol
          )
        ASSIGNED =
          T.let(
            :ASSIGNED,
            Telnyx::PhoneNumberCampaign::AssignmentStatus::TaggedSymbol
          )
        PENDING_UNASSIGNMENT =
          T.let(
            :PENDING_UNASSIGNMENT,
            Telnyx::PhoneNumberCampaign::AssignmentStatus::TaggedSymbol
          )
        FAILED_UNASSIGNMENT =
          T.let(
            :FAILED_UNASSIGNMENT,
            Telnyx::PhoneNumberCampaign::AssignmentStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::PhoneNumberCampaign::AssignmentStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
