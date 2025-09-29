# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingOrders#update
    class PortingOrderUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute activation_settings
      #
      #   @return [Telnyx::Models::PortingOrderUpdateParams::ActivationSettings, nil]
      optional :activation_settings, -> { Telnyx::PortingOrderUpdateParams::ActivationSettings }

      # @!attribute customer_group_reference
      #
      #   @return [String, nil]
      optional :customer_group_reference, String

      # @!attribute customer_reference
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute documents
      #   Can be specified directly or via the `requirement_group_id` parameter.
      #
      #   @return [Telnyx::Models::PortingOrderDocuments, nil]
      optional :documents, -> { Telnyx::PortingOrderDocuments }

      # @!attribute end_user
      #
      #   @return [Telnyx::Models::PortingOrderEndUser, nil]
      optional :end_user, -> { Telnyx::PortingOrderEndUser }

      # @!attribute messaging
      #
      #   @return [Telnyx::Models::PortingOrderUpdateParams::Messaging, nil]
      optional :messaging, -> { Telnyx::PortingOrderUpdateParams::Messaging }

      # @!attribute misc
      #
      #   @return [Telnyx::Models::PortingOrderMisc, nil]
      optional :misc, -> { Telnyx::PortingOrderMisc }

      # @!attribute phone_number_configuration
      #
      #   @return [Telnyx::Models::PortingOrderPhoneNumberConfiguration, nil]
      optional :phone_number_configuration, -> { Telnyx::PortingOrderPhoneNumberConfiguration }

      # @!attribute requirement_group_id
      #   If present, we will read the current values from the specified Requirement Group
      #   into the Documents and Requirements for this Porting Order. Note that any future
      #   changes in the Requirement Group would have no impact on this Porting Order. We
      #   will return an error if a specified Requirement Group conflicts with documents
      #   or requirements in the same request.
      #
      #   @return [String, nil]
      optional :requirement_group_id, String

      # @!attribute requirements
      #   List of requirements for porting numbers.
      #
      #   @return [Array<Telnyx::Models::PortingOrderUpdateParams::Requirement>, nil]
      optional :requirements,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrderUpdateParams::Requirement] }

      # @!attribute user_feedback
      #
      #   @return [Telnyx::Models::PortingOrderUserFeedback, nil]
      optional :user_feedback, -> { Telnyx::PortingOrderUserFeedback }

      # @!attribute webhook_url
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(activation_settings: nil, customer_group_reference: nil, customer_reference: nil, documents: nil, end_user: nil, messaging: nil, misc: nil, phone_number_configuration: nil, requirement_group_id: nil, requirements: nil, user_feedback: nil, webhook_url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortingOrderUpdateParams} for more details.
      #
      #   @param activation_settings [Telnyx::Models::PortingOrderUpdateParams::ActivationSettings]
      #
      #   @param customer_group_reference [String]
      #
      #   @param customer_reference [String]
      #
      #   @param documents [Telnyx::Models::PortingOrderDocuments] Can be specified directly or via the `requirement_group_id` parameter.
      #
      #   @param end_user [Telnyx::Models::PortingOrderEndUser]
      #
      #   @param messaging [Telnyx::Models::PortingOrderUpdateParams::Messaging]
      #
      #   @param misc [Telnyx::Models::PortingOrderMisc]
      #
      #   @param phone_number_configuration [Telnyx::Models::PortingOrderPhoneNumberConfiguration]
      #
      #   @param requirement_group_id [String] If present, we will read the current values from the specified Requirement Group
      #
      #   @param requirements [Array<Telnyx::Models::PortingOrderUpdateParams::Requirement>] List of requirements for porting numbers.
      #
      #   @param user_feedback [Telnyx::Models::PortingOrderUserFeedback]
      #
      #   @param webhook_url [String]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class ActivationSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute foc_datetime_requested
        #   ISO 8601 formatted Date/Time requested for the FOC date
        #
        #   @return [Time, nil]
        optional :foc_datetime_requested, Time

        # @!method initialize(foc_datetime_requested: nil)
        #   @param foc_datetime_requested [Time] ISO 8601 formatted Date/Time requested for the FOC date
      end

      class Messaging < Telnyx::Internal::Type::BaseModel
        # @!attribute enable_messaging
        #   Indicates whether Telnyx will port messaging capabilities from the losing
        #   carrier. If false, any messaging capabilities will stay with their current
        #   provider.
        #
        #   @return [Boolean, nil]
        optional :enable_messaging, Telnyx::Internal::Type::Boolean

        # @!method initialize(enable_messaging: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrderUpdateParams::Messaging} for more details.
        #
        #   @param enable_messaging [Boolean] Indicates whether Telnyx will port messaging capabilities from the losing carrie
      end

      class Requirement < Telnyx::Internal::Type::BaseModel
        # @!attribute field_value
        #   identifies the document or provides the text value that satisfies this
        #   requirement
        #
        #   @return [String]
        required :field_value, String

        # @!attribute requirement_type_id
        #   Identifies the requirement type that the `field_value` fulfills
        #
        #   @return [String]
        required :requirement_type_id, String

        # @!method initialize(field_value:, requirement_type_id:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrderUpdateParams::Requirement} for more details.
        #
        #   Specifies a value for a requirement on the Porting Order.
        #
        #   @param field_value [String] identifies the document or provides the text value that satisfies this requireme
        #
        #   @param requirement_type_id [String] Identifies the requirement type that the `field_value` fulfills
      end
    end
  end
end
