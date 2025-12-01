# typed: strong

module Telnyx
  module Models
    class PortingOrderUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrderUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig do
        returns(T.nilable(Telnyx::PortingOrderUpdateParams::ActivationSettings))
      end
      attr_reader :activation_settings

      sig do
        params(
          activation_settings:
            Telnyx::PortingOrderUpdateParams::ActivationSettings::OrHash
        ).void
      end
      attr_writer :activation_settings

      sig { returns(T.nilable(String)) }
      attr_reader :customer_group_reference

      sig { params(customer_group_reference: String).void }
      attr_writer :customer_group_reference

      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # Can be specified directly or via the `requirement_group_id` parameter.
      sig { returns(T.nilable(Telnyx::PortingOrderDocuments)) }
      attr_reader :documents

      sig { params(documents: Telnyx::PortingOrderDocuments::OrHash).void }
      attr_writer :documents

      sig { returns(T.nilable(Telnyx::PortingOrderEndUser)) }
      attr_reader :end_user

      sig { params(end_user: Telnyx::PortingOrderEndUser::OrHash).void }
      attr_writer :end_user

      sig { returns(T.nilable(Telnyx::PortingOrderUpdateParams::Messaging)) }
      attr_reader :messaging

      sig do
        params(
          messaging: Telnyx::PortingOrderUpdateParams::Messaging::OrHash
        ).void
      end
      attr_writer :messaging

      sig { returns(T.nilable(Telnyx::PortingOrderMisc)) }
      attr_reader :misc

      sig { params(misc: T.nilable(Telnyx::PortingOrderMisc::OrHash)).void }
      attr_writer :misc

      sig { returns(T.nilable(Telnyx::PortingOrderPhoneNumberConfiguration)) }
      attr_reader :phone_number_configuration

      sig do
        params(
          phone_number_configuration:
            Telnyx::PortingOrderPhoneNumberConfiguration::OrHash
        ).void
      end
      attr_writer :phone_number_configuration

      # If present, we will read the current values from the specified Requirement Group
      # into the Documents and Requirements for this Porting Order. Note that any future
      # changes in the Requirement Group would have no impact on this Porting Order. We
      # will return an error if a specified Requirement Group conflicts with documents
      # or requirements in the same request.
      sig { returns(T.nilable(String)) }
      attr_reader :requirement_group_id

      sig { params(requirement_group_id: String).void }
      attr_writer :requirement_group_id

      # List of requirements for porting numbers.
      sig do
        returns(
          T.nilable(T::Array[Telnyx::PortingOrderUpdateParams::Requirement])
        )
      end
      attr_reader :requirements

      sig do
        params(
          requirements:
            T::Array[Telnyx::PortingOrderUpdateParams::Requirement::OrHash]
        ).void
      end
      attr_writer :requirements

      sig { returns(T.nilable(Telnyx::PortingOrderUserFeedback)) }
      attr_reader :user_feedback

      sig do
        params(user_feedback: Telnyx::PortingOrderUserFeedback::OrHash).void
      end
      attr_writer :user_feedback

      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      sig do
        params(
          activation_settings:
            Telnyx::PortingOrderUpdateParams::ActivationSettings::OrHash,
          customer_group_reference: String,
          customer_reference: String,
          documents: Telnyx::PortingOrderDocuments::OrHash,
          end_user: Telnyx::PortingOrderEndUser::OrHash,
          messaging: Telnyx::PortingOrderUpdateParams::Messaging::OrHash,
          misc: T.nilable(Telnyx::PortingOrderMisc::OrHash),
          phone_number_configuration:
            Telnyx::PortingOrderPhoneNumberConfiguration::OrHash,
          requirement_group_id: String,
          requirements:
            T::Array[Telnyx::PortingOrderUpdateParams::Requirement::OrHash],
          user_feedback: Telnyx::PortingOrderUserFeedback::OrHash,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        activation_settings: nil,
        customer_group_reference: nil,
        customer_reference: nil,
        # Can be specified directly or via the `requirement_group_id` parameter.
        documents: nil,
        end_user: nil,
        messaging: nil,
        misc: nil,
        phone_number_configuration: nil,
        # If present, we will read the current values from the specified Requirement Group
        # into the Documents and Requirements for this Porting Order. Note that any future
        # changes in the Requirement Group would have no impact on this Porting Order. We
        # will return an error if a specified Requirement Group conflicts with documents
        # or requirements in the same request.
        requirement_group_id: nil,
        # List of requirements for porting numbers.
        requirements: nil,
        user_feedback: nil,
        webhook_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            activation_settings:
              Telnyx::PortingOrderUpdateParams::ActivationSettings,
            customer_group_reference: String,
            customer_reference: String,
            documents: Telnyx::PortingOrderDocuments,
            end_user: Telnyx::PortingOrderEndUser,
            messaging: Telnyx::PortingOrderUpdateParams::Messaging,
            misc: T.nilable(Telnyx::PortingOrderMisc),
            phone_number_configuration:
              Telnyx::PortingOrderPhoneNumberConfiguration,
            requirement_group_id: String,
            requirements:
              T::Array[Telnyx::PortingOrderUpdateParams::Requirement],
            user_feedback: Telnyx::PortingOrderUserFeedback,
            webhook_url: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class ActivationSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrderUpdateParams::ActivationSettings,
              Telnyx::Internal::AnyHash
            )
          end

        # ISO 8601 formatted Date/Time requested for the FOC date
        sig { returns(T.nilable(Time)) }
        attr_reader :foc_datetime_requested

        sig { params(foc_datetime_requested: Time).void }
        attr_writer :foc_datetime_requested

        sig { params(foc_datetime_requested: Time).returns(T.attached_class) }
        def self.new(
          # ISO 8601 formatted Date/Time requested for the FOC date
          foc_datetime_requested: nil
        )
        end

        sig { override.returns({ foc_datetime_requested: Time }) }
        def to_hash
        end
      end

      class Messaging < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrderUpdateParams::Messaging,
              Telnyx::Internal::AnyHash
            )
          end

        # Indicates whether Telnyx will port messaging capabilities from the losing
        # carrier. If false, any messaging capabilities will stay with their current
        # provider.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enable_messaging

        sig { params(enable_messaging: T::Boolean).void }
        attr_writer :enable_messaging

        sig { params(enable_messaging: T::Boolean).returns(T.attached_class) }
        def self.new(
          # Indicates whether Telnyx will port messaging capabilities from the losing
          # carrier. If false, any messaging capabilities will stay with their current
          # provider.
          enable_messaging: nil
        )
        end

        sig { override.returns({ enable_messaging: T::Boolean }) }
        def to_hash
        end
      end

      class Requirement < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrderUpdateParams::Requirement,
              Telnyx::Internal::AnyHash
            )
          end

        # identifies the document or provides the text value that satisfies this
        # requirement
        sig { returns(String) }
        attr_accessor :field_value

        # Identifies the requirement type that the `field_value` fulfills
        sig { returns(String) }
        attr_accessor :requirement_type_id

        # Specifies a value for a requirement on the Porting Order.
        sig do
          params(field_value: String, requirement_type_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # identifies the document or provides the text value that satisfies this
          # requirement
          field_value:,
          # Identifies the requirement type that the `field_value` fulfills
          requirement_type_id:
        )
        end

        sig do
          override.returns({ field_value: String, requirement_type_id: String })
        end
        def to_hash
        end
      end
    end
  end
end
