# typed: strong

module Telnyx
  module Models
    module Rcs
      class AgentConsentConfiguration < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Rcs::AgentConsentConfiguration,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :call_to_action

        sig { returns(T::Boolean) }
        attr_accessor :double_opt_in

        sig { returns(String) }
        attr_accessor :help_response

        sig { returns(String) }
        attr_accessor :opt_in_message

        sig do
          returns(T::Array[Telnyx::Rcs::AgentConsentConfiguration::OptInMethod])
        end
        attr_accessor :opt_in_methods

        sig { returns(String) }
        attr_accessor :opt_out_response

        # Required when an opt-in method is `WEBSITE` or `MOBILE_APP`.
        sig { returns(T.nilable(String)) }
        attr_accessor :call_to_action_media_url

        # Required when an opt-in method is `WEBSITE`.
        sig { returns(T.nilable(String)) }
        attr_accessor :call_to_action_url

        # Required when double_opt_in is true.
        sig { returns(T.nilable(String)) }
        attr_accessor :double_opt_in_message

        sig do
          params(
            call_to_action: String,
            double_opt_in: T::Boolean,
            help_response: String,
            opt_in_message: String,
            opt_in_methods:
              T::Array[
                Telnyx::Rcs::AgentConsentConfiguration::OptInMethod::OrHash
              ],
            opt_out_response: String,
            call_to_action_media_url: T.nilable(String),
            call_to_action_url: T.nilable(String),
            double_opt_in_message: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          call_to_action:,
          double_opt_in:,
          help_response:,
          opt_in_message:,
          opt_in_methods:,
          opt_out_response:,
          # Required when an opt-in method is `WEBSITE` or `MOBILE_APP`.
          call_to_action_media_url: nil,
          # Required when an opt-in method is `WEBSITE`.
          call_to_action_url: nil,
          # Required when double_opt_in is true.
          double_opt_in_message: nil
        )
        end

        sig do
          override.returns(
            {
              call_to_action: String,
              double_opt_in: T::Boolean,
              help_response: String,
              opt_in_message: String,
              opt_in_methods:
                T::Array[Telnyx::Rcs::AgentConsentConfiguration::OptInMethod],
              opt_out_response: String,
              call_to_action_media_url: T.nilable(String),
              call_to_action_url: T.nilable(String),
              double_opt_in_message: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class OptInMethod < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Rcs::AgentConsentConfiguration::OptInMethod,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Rcs::AgentConsentConfiguration::OptInMethod::MethodType::OrSymbol
            )
          end
          attr_accessor :method_type

          # Required when method_type is `OTHER`.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig do
            params(
              method_type:
                Telnyx::Rcs::AgentConsentConfiguration::OptInMethod::MethodType::OrSymbol,
              description: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            method_type:,
            # Required when method_type is `OTHER`.
            description: nil
          )
          end

          sig do
            override.returns(
              {
                method_type:
                  Telnyx::Rcs::AgentConsentConfiguration::OptInMethod::MethodType::OrSymbol,
                description: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module MethodType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Rcs::AgentConsentConfiguration::OptInMethod::MethodType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SMS =
              T.let(
                :SMS,
                Telnyx::Rcs::AgentConsentConfiguration::OptInMethod::MethodType::TaggedSymbol
              )
            WEBSITE =
              T.let(
                :WEBSITE,
                Telnyx::Rcs::AgentConsentConfiguration::OptInMethod::MethodType::TaggedSymbol
              )
            MOBILE_APP =
              T.let(
                :MOBILE_APP,
                Telnyx::Rcs::AgentConsentConfiguration::OptInMethod::MethodType::TaggedSymbol
              )
            QR_CODE =
              T.let(
                :QR_CODE,
                Telnyx::Rcs::AgentConsentConfiguration::OptInMethod::MethodType::TaggedSymbol
              )
            SALE_POINT =
              T.let(
                :SALE_POINT,
                Telnyx::Rcs::AgentConsentConfiguration::OptInMethod::MethodType::TaggedSymbol
              )
            OTHER =
              T.let(
                :OTHER,
                Telnyx::Rcs::AgentConsentConfiguration::OptInMethod::MethodType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Rcs::AgentConsentConfiguration::OptInMethod::MethodType::TaggedSymbol
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
end
