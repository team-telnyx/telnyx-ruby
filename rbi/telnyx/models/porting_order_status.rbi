# typed: strong

module Telnyx
  module Models
    class PortingOrderStatus < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrderStatus, Telnyx::Internal::AnyHash)
        end

      # A list of 0 or more details about this porting order's status
      sig { returns(T.nilable(T::Array[Telnyx::PortingOrderStatus::Detail])) }
      attr_reader :details

      sig do
        params(
          details: T::Array[Telnyx::PortingOrderStatus::Detail::OrHash]
        ).void
      end
      attr_writer :details

      # The current status of the porting order
      sig do
        returns(T.nilable(Telnyx::PortingOrderStatus::Value::TaggedSymbol))
      end
      attr_reader :value

      sig { params(value: Telnyx::PortingOrderStatus::Value::OrSymbol).void }
      attr_writer :value

      # Porting order status
      sig do
        params(
          details: T::Array[Telnyx::PortingOrderStatus::Detail::OrHash],
          value: Telnyx::PortingOrderStatus::Value::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of 0 or more details about this porting order's status
        details: nil,
        # The current status of the porting order
        value: nil
      )
      end

      sig do
        override.returns(
          {
            details: T::Array[Telnyx::PortingOrderStatus::Detail],
            value: Telnyx::PortingOrderStatus::Value::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Detail < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::PortingOrderStatus::Detail, Telnyx::Internal::AnyHash)
          end

        # Identifier of the exception. Includes legacy codes persisted on older orders
        sig { returns(Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol) }
        attr_accessor :code

        # Description of the exception
        sig { returns(String) }
        attr_accessor :description

        # Structured remediation steps so an agent can map the exception to a fix via the
        # API alone
        sig { returns(Telnyx::PortingOrderStatus::Detail::Remediation) }
        attr_reader :remediation

        sig do
          params(
            remediation: Telnyx::PortingOrderStatus::Detail::Remediation::OrHash
          ).void
        end
        attr_writer :remediation

        sig do
          params(
            code: Telnyx::PortingOrderStatus::Detail::Code::OrSymbol,
            description: String,
            remediation: Telnyx::PortingOrderStatus::Detail::Remediation::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifier of the exception. Includes legacy codes persisted on older orders
          code:,
          # Description of the exception
          description:,
          # Structured remediation steps so an agent can map the exception to a fix via the
          # API alone
          remediation:
        )
        end

        sig do
          override.returns(
            {
              code: Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol,
              description: String,
              remediation: Telnyx::PortingOrderStatus::Detail::Remediation
            }
          )
        end
        def to_hash
        end

        # Identifier of the exception. Includes legacy codes persisted on older orders
        module Code
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PortingOrderStatus::Detail::Code)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT_NUMBER_MISMATCH =
            T.let(
              :ACCOUNT_NUMBER_MISMATCH,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          ACCOUNT_NUMBER_MISMATCH_OR_MISSING =
            T.let(
              :ACCOUNT_NUMBER_MISMATCH_OR_MISSING,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          ACCOUNT_NUMBER_REQUIRED =
            T.let(
              :ACCOUNT_NUMBER_REQUIRED,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          ALL_DATA_MISMATCH =
            T.let(
              :ALL_DATA_MISMATCH,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          AUTH_PERSON_MISMATCH =
            T.let(
              :AUTH_PERSON_MISMATCH,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          BTN_ATN_MISMATCH =
            T.let(
              :BTN_ATN_MISMATCH,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          DOCUMENT_BLOCKED =
            T.let(
              :DOCUMENT_BLOCKED,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          ENTITY_NAME_MISMATCH =
            T.let(
              :ENTITY_NAME_MISMATCH,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          FOC_EXPIRED =
            T.let(
              :FOC_EXPIRED,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          FOC_REJECTED =
            T.let(
              :FOC_REJECTED,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          INCORRECT_LOA_TEMPLATE =
            T.let(
              :INCORRECT_LOA_TEMPLATE,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          INCORRECT_LOSING_COMMUNICATION_PROVIDER =
            T.let(
              :INCORRECT_LOSING_COMMUNICATION_PROVIDER,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          INCORRECT_PORT_TYPE =
            T.let(
              :INCORRECT_PORT_TYPE,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          INVALID_OR_MISSING_INVOICE =
            T.let(
              :INVALID_OR_MISSING_INVOICE,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          INVALID_OR_MISSING_LOA =
            T.let(
              :INVALID_OR_MISSING_LOA,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          INVALID_SIGNATURE_ON_THE_LOA =
            T.let(
              :INVALID_SIGNATURE_ON_THE_LOA,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          J2_PASSCODE_PIN_INVALID =
            T.let(
              :J2_PASSCODE_PIN_INVALID,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          LOA_ILLEGIBLE =
            T.let(
              :LOA_ILLEGIBLE,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          LOCATION_MISMATCH =
            T.let(
              :LOCATION_MISMATCH,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          LOSING_CARRIER_OUTAGE =
            T.let(
              :LOSING_CARRIER_OUTAGE,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          LSR_PENDING =
            T.let(
              :LSR_PENDING,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          MAIN_BTN_PORTING =
            T.let(
              :MAIN_BTN_PORTING,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          MISSING_MANDATORY_REQUIREMENT =
            T.let(
              :MISSING_MANDATORY_REQUIREMENT,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          MISSING_NUMBER_DETAILS =
            T.let(
              :MISSING_NUMBER_DETAILS,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          NUMBER_HAS_ASSOCIATED_SERVICES =
            T.let(
              :NUMBER_HAS_ASSOCIATED_SERVICES,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          ORDER_REFLOW =
            T.let(
              :ORDER_REFLOW,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          OSP_IRRESPONSIVE =
            T.let(
              :OSP_IRRESPONSIVE,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          PASSCODE_PIN_INVALID =
            T.let(
              :PASSCODE_PIN_INVALID,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          PHONE_NUMBER_HAS_SPECIAL_FEATURE =
            T.let(
              :PHONE_NUMBER_HAS_SPECIAL_FEATURE,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          PHONE_NUMBER_MISMATCH =
            T.let(
              :PHONE_NUMBER_MISMATCH,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          PHONE_NUMBER_NOT_PORTABLE =
            T.let(
              :PHONE_NUMBER_NOT_PORTABLE,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          PORTING_ORDER_SPLIT_REQUIRED =
            T.let(
              :PORTING_ORDER_SPLIT_REQUIRED,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          PORT_TYPE_INCORRECT =
            T.let(
              :PORT_TYPE_INCORRECT,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          POSTAL_CODE_MISMATCH =
            T.let(
              :POSTAL_CODE_MISMATCH,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          RATE_CENTER_NOT_PORTABLE =
            T.let(
              :RATE_CENTER_NOT_PORTABLE,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          RESELLER_INVALID =
            T.let(
              :RESELLER_INVALID,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          STRANDED_SERVICES_NEED_NEW_BTN =
            T.let(
              :STRANDED_SERVICES_NEED_NEW_BTN,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          SV_CONFLICT =
            T.let(
              :SV_CONFLICT,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          SV_UNKNOWN_FAILURE =
            T.let(
              :SV_UNKNOWN_FAILURE,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          TNS_ON_MULTIPLE_ACCOUNTS =
            T.let(
              :TNS_ON_MULTIPLE_ACCOUNTS,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          TN_BUILD_CONFLICT =
            T.let(
              :TN_BUILD_CONFLICT,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          TN_DISCONNECTED =
            T.let(
              :TN_DISCONNECTED,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )
          UNAUTHORIZED_PERSON_SIGNATURE =
            T.let(
              :UNAUTHORIZED_PERSON_SIGNATURE,
              Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::PortingOrderStatus::Detail::Code::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class Remediation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrderStatus::Detail::Remediation,
                Telnyx::Internal::AnyHash
              )
            end

          # The type of remediation action to take
          sig do
            returns(
              Telnyx::PortingOrderStatus::Detail::Remediation::Action::TaggedSymbol
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
                Telnyx::PortingOrderStatus::Detail::Remediation::RequiredDocument::TaggedSymbol
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
                Telnyx::PortingOrderStatus::Detail::Remediation::Action::OrSymbol,
              fields: T::Array[String],
              required_document:
                T.nilable(
                  Telnyx::PortingOrderStatus::Detail::Remediation::RequiredDocument::OrSymbol
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
                  Telnyx::PortingOrderStatus::Detail::Remediation::Action::TaggedSymbol,
                fields: T::Array[String],
                required_document:
                  T.nilable(
                    Telnyx::PortingOrderStatus::Detail::Remediation::RequiredDocument::TaggedSymbol
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
                  Telnyx::PortingOrderStatus::Detail::Remediation::Action
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UPDATE_ORDER_FIELDS =
              T.let(
                :update_order_fields,
                Telnyx::PortingOrderStatus::Detail::Remediation::Action::TaggedSymbol
              )
            UPLOAD_DOCUMENT =
              T.let(
                :upload_document,
                Telnyx::PortingOrderStatus::Detail::Remediation::Action::TaggedSymbol
              )
            CREATE_ORDERS =
              T.let(
                :create_orders,
                Telnyx::PortingOrderStatus::Detail::Remediation::Action::TaggedSymbol
              )
            ASSIGN_FOC_DATETIME =
              T.let(
                :assign_foc_datetime,
                Telnyx::PortingOrderStatus::Detail::Remediation::Action::TaggedSymbol
              )
            WAIT =
              T.let(
                :wait,
                Telnyx::PortingOrderStatus::Detail::Remediation::Action::TaggedSymbol
              )
            EXTERNAL_ACTION =
              T.let(
                :external_action,
                Telnyx::PortingOrderStatus::Detail::Remediation::Action::TaggedSymbol
              )
            CONTACT_SUPPORT =
              T.let(
                :contact_support,
                Telnyx::PortingOrderStatus::Detail::Remediation::Action::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrderStatus::Detail::Remediation::Action::TaggedSymbol
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
                  Telnyx::PortingOrderStatus::Detail::Remediation::RequiredDocument
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LOA =
              T.let(
                :loa,
                Telnyx::PortingOrderStatus::Detail::Remediation::RequiredDocument::TaggedSymbol
              )
            INVOICE =
              T.let(
                :invoice,
                Telnyx::PortingOrderStatus::Detail::Remediation::RequiredDocument::TaggedSymbol
              )
            NULL =
              T.let(
                :null,
                Telnyx::PortingOrderStatus::Detail::Remediation::RequiredDocument::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrderStatus::Detail::Remediation::RequiredDocument::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      # The current status of the porting order
      module Value
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PortingOrderStatus::Value) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT = T.let(:draft, Telnyx::PortingOrderStatus::Value::TaggedSymbol)
        IN_PROCESS =
          T.let(:"in-process", Telnyx::PortingOrderStatus::Value::TaggedSymbol)
        SUBMITTED =
          T.let(:submitted, Telnyx::PortingOrderStatus::Value::TaggedSymbol)
        EXCEPTION =
          T.let(:exception, Telnyx::PortingOrderStatus::Value::TaggedSymbol)
        FOC_DATE_CONFIRMED =
          T.let(
            :"foc-date-confirmed",
            Telnyx::PortingOrderStatus::Value::TaggedSymbol
          )
        PORTED = T.let(:ported, Telnyx::PortingOrderStatus::Value::TaggedSymbol)
        CANCELLED =
          T.let(:cancelled, Telnyx::PortingOrderStatus::Value::TaggedSymbol)
        CANCEL_PENDING =
          T.let(
            :"cancel-pending",
            Telnyx::PortingOrderStatus::Value::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PortingOrderStatus::Value::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
