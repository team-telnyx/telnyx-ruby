# typed: strong

module Telnyx
  module Models
    class PortingOrdersExceptionType < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrdersExceptionType, Telnyx::Internal::AnyHash)
        end

      # Identifier of an exception type
      sig { returns(Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol) }
      attr_accessor :code

      # Description of an exception type
      sig { returns(String) }
      attr_accessor :description

      # Structured remediation steps so an agent can map the exception to a fix via the
      # API alone
      sig { returns(Telnyx::PortingOrdersExceptionType::Remediation) }
      attr_reader :remediation

      sig do
        params(
          remediation: Telnyx::PortingOrdersExceptionType::Remediation::OrHash
        ).void
      end
      attr_writer :remediation

      sig do
        params(
          code: Telnyx::PortingOrdersExceptionType::Code::OrSymbol,
          description: String,
          remediation: Telnyx::PortingOrdersExceptionType::Remediation::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifier of an exception type
        code:,
        # Description of an exception type
        description:,
        # Structured remediation steps so an agent can map the exception to a fix via the
        # API alone
        remediation:
      )
      end

      sig do
        override.returns(
          {
            code: Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol,
            description: String,
            remediation: Telnyx::PortingOrdersExceptionType::Remediation
          }
        )
      end
      def to_hash
      end

      # Identifier of an exception type
      module Code
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PortingOrdersExceptionType::Code)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_NUMBER_MISMATCH =
          T.let(
            :ACCOUNT_NUMBER_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        ACCOUNT_NUMBER_MISMATCH_OR_MISSING =
          T.let(
            :ACCOUNT_NUMBER_MISMATCH_OR_MISSING,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        ACCOUNT_NUMBER_REQUIRED =
          T.let(
            :ACCOUNT_NUMBER_REQUIRED,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        ALL_DATA_MISMATCH =
          T.let(
            :ALL_DATA_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        AUTH_PERSON_MISMATCH =
          T.let(
            :AUTH_PERSON_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        BTN_ATN_MISMATCH =
          T.let(
            :BTN_ATN_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        DOCUMENT_BLOCKED =
          T.let(
            :DOCUMENT_BLOCKED,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        ENTITY_NAME_MISMATCH =
          T.let(
            :ENTITY_NAME_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        FOC_EXPIRED =
          T.let(
            :FOC_EXPIRED,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        FOC_REJECTED =
          T.let(
            :FOC_REJECTED,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        INCORRECT_LOA_TEMPLATE =
          T.let(
            :INCORRECT_LOA_TEMPLATE,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        INCORRECT_LOSING_COMMUNICATION_PROVIDER =
          T.let(
            :INCORRECT_LOSING_COMMUNICATION_PROVIDER,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        INCORRECT_PORT_TYPE =
          T.let(
            :INCORRECT_PORT_TYPE,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        INVALID_OR_MISSING_INVOICE =
          T.let(
            :INVALID_OR_MISSING_INVOICE,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        INVALID_OR_MISSING_LOA =
          T.let(
            :INVALID_OR_MISSING_LOA,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        INVALID_SIGNATURE_ON_THE_LOA =
          T.let(
            :INVALID_SIGNATURE_ON_THE_LOA,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        J2_PASSCODE_PIN_INVALID =
          T.let(
            :J2_PASSCODE_PIN_INVALID,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        LOCATION_MISMATCH =
          T.let(
            :LOCATION_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        LSR_PENDING =
          T.let(
            :LSR_PENDING,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        MAIN_BTN_PORTING =
          T.let(
            :MAIN_BTN_PORTING,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        MISSING_MANDATORY_REQUIREMENT =
          T.let(
            :MISSING_MANDATORY_REQUIREMENT,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        MISSING_NUMBER_DETAILS =
          T.let(
            :MISSING_NUMBER_DETAILS,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        NUMBER_HAS_ASSOCIATED_SERVICES =
          T.let(
            :NUMBER_HAS_ASSOCIATED_SERVICES,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        ORDER_REFLOW =
          T.let(
            :ORDER_REFLOW,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        OSP_IRRESPONSIVE =
          T.let(
            :OSP_IRRESPONSIVE,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        OTHER =
          T.let(:OTHER, Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol)
        PASSCODE_PIN_INVALID =
          T.let(
            :PASSCODE_PIN_INVALID,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        PHONE_NUMBER_MISMATCH =
          T.let(
            :PHONE_NUMBER_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        PHONE_NUMBER_NOT_PORTABLE =
          T.let(
            :PHONE_NUMBER_NOT_PORTABLE,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        POSTAL_CODE_MISMATCH =
          T.let(
            :POSTAL_CODE_MISMATCH,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        RATE_CENTER_NOT_PORTABLE =
          T.let(
            :RATE_CENTER_NOT_PORTABLE,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        RESELLER_INVALID =
          T.let(
            :RESELLER_INVALID,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        STRANDED_SERVICES_NEED_NEW_BTN =
          T.let(
            :STRANDED_SERVICES_NEED_NEW_BTN,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        SV_CONFLICT =
          T.let(
            :SV_CONFLICT,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        SV_UNKNOWN_FAILURE =
          T.let(
            :SV_UNKNOWN_FAILURE,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        TNS_ON_MULTIPLE_ACCOUNTS =
          T.let(
            :TNS_ON_MULTIPLE_ACCOUNTS,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        TN_BUILD_CONFLICT =
          T.let(
            :TN_BUILD_CONFLICT,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        TN_DISCONNECTED =
          T.let(
            :TN_DISCONNECTED,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )
        UNAUTHORIZED_PERSON_SIGNATURE =
          T.let(
            :UNAUTHORIZED_PERSON_SIGNATURE,
            Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PortingOrdersExceptionType::Code::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Remediation < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrdersExceptionType::Remediation,
              Telnyx::Internal::AnyHash
            )
          end

        # The type of remediation action to take
        sig do
          returns(
            Telnyx::PortingOrdersExceptionType::Remediation::Action::TaggedSymbol
          )
        end
        attr_accessor :action

        # Patchable field paths to correct, empty when no field update applies
        sig { returns(T::Array[String]) }
        attr_accessor :fields

        # The document to (re)upload, when applicable
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrdersExceptionType::Remediation::RequiredDocument::TaggedSymbol
            )
          )
        end
        attr_accessor :required_document

        # Whether resubmission or polling alone can unblock the order
        sig { returns(T::Boolean) }
        attr_accessor :retryable

        # Structured remediation steps so an agent can map the exception to a fix via the
        # API alone
        sig do
          params(
            action:
              Telnyx::PortingOrdersExceptionType::Remediation::Action::OrSymbol,
            fields: T::Array[String],
            required_document:
              T.nilable(
                Telnyx::PortingOrdersExceptionType::Remediation::RequiredDocument::OrSymbol
              ),
            retryable: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of remediation action to take
          action:,
          # Patchable field paths to correct, empty when no field update applies
          fields:,
          # The document to (re)upload, when applicable
          required_document:,
          # Whether resubmission or polling alone can unblock the order
          retryable:
        )
        end

        sig do
          override.returns(
            {
              action:
                Telnyx::PortingOrdersExceptionType::Remediation::Action::TaggedSymbol,
              fields: T::Array[String],
              required_document:
                T.nilable(
                  Telnyx::PortingOrdersExceptionType::Remediation::RequiredDocument::TaggedSymbol
                ),
              retryable: T::Boolean
            }
          )
        end
        def to_hash
        end

        # The type of remediation action to take
        module Action
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PortingOrdersExceptionType::Remediation::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UPDATE_ORDER_FIELDS =
            T.let(
              :update_order_fields,
              Telnyx::PortingOrdersExceptionType::Remediation::Action::TaggedSymbol
            )
          UPLOAD_DOCUMENT =
            T.let(
              :upload_document,
              Telnyx::PortingOrdersExceptionType::Remediation::Action::TaggedSymbol
            )
          CREATE_ORDERS =
            T.let(
              :create_orders,
              Telnyx::PortingOrdersExceptionType::Remediation::Action::TaggedSymbol
            )
          ASSIGN_FOC_DATETIME =
            T.let(
              :assign_foc_datetime,
              Telnyx::PortingOrdersExceptionType::Remediation::Action::TaggedSymbol
            )
          WAIT =
            T.let(
              :wait,
              Telnyx::PortingOrdersExceptionType::Remediation::Action::TaggedSymbol
            )
          EXTERNAL_ACTION =
            T.let(
              :external_action,
              Telnyx::PortingOrdersExceptionType::Remediation::Action::TaggedSymbol
            )
          CONTACT_SUPPORT =
            T.let(
              :contact_support,
              Telnyx::PortingOrdersExceptionType::Remediation::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrdersExceptionType::Remediation::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The document to (re)upload, when applicable
        module RequiredDocument
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PortingOrdersExceptionType::Remediation::RequiredDocument
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOA =
            T.let(
              :loa,
              Telnyx::PortingOrdersExceptionType::Remediation::RequiredDocument::TaggedSymbol
            )
          INVOICE =
            T.let(
              :invoice,
              Telnyx::PortingOrdersExceptionType::Remediation::RequiredDocument::TaggedSymbol
            )
          NULL =
            T.let(
              :null,
              Telnyx::PortingOrdersExceptionType::Remediation::RequiredDocument::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrdersExceptionType::Remediation::RequiredDocument::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
