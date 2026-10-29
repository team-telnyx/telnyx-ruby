# typed: strong

module Telnyx
  module Models
    module AI
      class PayToolParams < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::PayToolParams, Telnyx::Internal::AnyHash)
          end

        # The name of the pay connector configured in the Telnyx API. Must reference an
        # existing pay connector for this organization.
        sig { returns(String) }
        attr_accessor :connector_name

        # Custom key/value parameters forwarded to the pay connector as `parameters` in
        # the processor request. String values may use `{{dynamic_variable}}` templating,
        # resolved per call.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :connector_parameters

        sig { params(connector_parameters: T::Hash[Symbol, T.anything]).void }
        attr_writer :connector_parameters

        # Default currency for payments processed by this tool.
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        # Description of the pay tool shown to the assistant so it knows when to call the
        # tool. Not sent to the payment connector — the per-call `description` argument
        # the assistant passes is what reaches the processor.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Time in milliseconds to wait between consecutive DTMF digits. Omitted means the
        # platform default (5000) applies.
        sig { returns(T.nilable(Integer)) }
        attr_reader :inter_digit_timeout_millis

        sig { params(inter_digit_timeout_millis: Integer).void }
        attr_writer :inter_digit_timeout_millis

        # Maximum number of attempts for each payment collection step. Omitted means the
        # platform default (3) applies.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_attempts

        sig { params(max_attempts: Integer).void }
        attr_writer :max_attempts

        # Minimum number of digits the caller must enter when collecting a credit-card
        # billing postal code. Applies only when `postal_code` prompts the caller. Omitted
        # means the platform default (1) applies. The maximum number of digits collected
        # is the greater of 10 and this value. This does not validate the length of a
        # postal code supplied directly in `postal_code`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :min_postal_code_length

        sig { params(min_postal_code_length: Integer).void }
        attr_writer :min_postal_code_length

        # Default payment method for payments processed by this tool.
        sig { returns(T.nilable(String)) }
        attr_reader :payment_method

        sig { params(payment_method: String).void }
        attr_writer :payment_method

        # Controls billing postal code collection for credit-card payments. Set to `false`
        # to skip the postal code prompt without supplying a postal code to the payment
        # connector (non-US cards, e.g. Irish Eircodes). Set to `true` to prompt the
        # caller. Supply a non-empty string, such as `"90210"`, to use that postal code
        # without prompting. This option does not affect ACH debit payments or payments
        # using an existing token.
        sig do
          returns(T.nilable(Telnyx::AI::PayToolParams::PostalCode::Variants))
        end
        attr_reader :postal_code

        sig do
          params(
            postal_code: Telnyx::AI::PayToolParams::PostalCode::Variants
          ).void
        end
        attr_writer :postal_code

        # Custom text-to-speech prompts keyed by payment collection step. The AI assistant
        # merges its own card-number prompt into this map, matching on the same step keys.
        sig { returns(T.nilable(Telnyx::AI::PayToolParams::Prompts)) }
        attr_reader :prompts

        sig { params(prompts: Telnyx::AI::PayToolParams::Prompts::OrHash).void }
        attr_writer :prompts

        # Time in milliseconds to wait for DTMF input for each collection step. Omitted
        # means the platform default (5000) applies. Increase this for slower entry, e.g.
        # a 16-digit card number.
        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout_millis

        sig { params(timeout_millis: Integer).void }
        attr_writer :timeout_millis

        # Restricts accepted card numbers to the listed card types. When the caller enters
        # a card number that does not match one of the listed types, Pay treats the input
        # as invalid and re-prompts for the card number.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::AI::PayToolParams::ValidCardType::OrSymbol]
            )
          )
        end
        attr_reader :valid_card_types

        sig do
          params(
            valid_card_types:
              T::Array[Telnyx::AI::PayToolParams::ValidCardType::OrSymbol]
          ).void
        end
        attr_writer :valid_card_types

        sig do
          params(
            connector_name: String,
            connector_parameters: T::Hash[Symbol, T.anything],
            currency: String,
            description: T.nilable(String),
            inter_digit_timeout_millis: Integer,
            max_attempts: Integer,
            min_postal_code_length: Integer,
            payment_method: String,
            postal_code: Telnyx::AI::PayToolParams::PostalCode::Variants,
            prompts: Telnyx::AI::PayToolParams::Prompts::OrHash,
            timeout_millis: Integer,
            valid_card_types:
              T::Array[Telnyx::AI::PayToolParams::ValidCardType::OrSymbol]
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the pay connector configured in the Telnyx API. Must reference an
          # existing pay connector for this organization.
          connector_name:,
          # Custom key/value parameters forwarded to the pay connector as `parameters` in
          # the processor request. String values may use `{{dynamic_variable}}` templating,
          # resolved per call.
          connector_parameters: nil,
          # Default currency for payments processed by this tool.
          currency: nil,
          # Description of the pay tool shown to the assistant so it knows when to call the
          # tool. Not sent to the payment connector — the per-call `description` argument
          # the assistant passes is what reaches the processor.
          description: nil,
          # Time in milliseconds to wait between consecutive DTMF digits. Omitted means the
          # platform default (5000) applies.
          inter_digit_timeout_millis: nil,
          # Maximum number of attempts for each payment collection step. Omitted means the
          # platform default (3) applies.
          max_attempts: nil,
          # Minimum number of digits the caller must enter when collecting a credit-card
          # billing postal code. Applies only when `postal_code` prompts the caller. Omitted
          # means the platform default (1) applies. The maximum number of digits collected
          # is the greater of 10 and this value. This does not validate the length of a
          # postal code supplied directly in `postal_code`.
          min_postal_code_length: nil,
          # Default payment method for payments processed by this tool.
          payment_method: nil,
          # Controls billing postal code collection for credit-card payments. Set to `false`
          # to skip the postal code prompt without supplying a postal code to the payment
          # connector (non-US cards, e.g. Irish Eircodes). Set to `true` to prompt the
          # caller. Supply a non-empty string, such as `"90210"`, to use that postal code
          # without prompting. This option does not affect ACH debit payments or payments
          # using an existing token.
          postal_code: nil,
          # Custom text-to-speech prompts keyed by payment collection step. The AI assistant
          # merges its own card-number prompt into this map, matching on the same step keys.
          prompts: nil,
          # Time in milliseconds to wait for DTMF input for each collection step. Omitted
          # means the platform default (5000) applies. Increase this for slower entry, e.g.
          # a 16-digit card number.
          timeout_millis: nil,
          # Restricts accepted card numbers to the listed card types. When the caller enters
          # a card number that does not match one of the listed types, Pay treats the input
          # as invalid and re-prompts for the card number.
          valid_card_types: nil
        )
        end

        sig do
          override.returns(
            {
              connector_name: String,
              connector_parameters: T::Hash[Symbol, T.anything],
              currency: String,
              description: T.nilable(String),
              inter_digit_timeout_millis: Integer,
              max_attempts: Integer,
              min_postal_code_length: Integer,
              payment_method: String,
              postal_code: Telnyx::AI::PayToolParams::PostalCode::Variants,
              prompts: Telnyx::AI::PayToolParams::Prompts,
              timeout_millis: Integer,
              valid_card_types:
                T::Array[Telnyx::AI::PayToolParams::ValidCardType::OrSymbol]
            }
          )
        end
        def to_hash
        end

        # Controls billing postal code collection for credit-card payments. Set to `false`
        # to skip the postal code prompt without supplying a postal code to the payment
        # connector (non-US cards, e.g. Irish Eircodes). Set to `true` to prompt the
        # caller. Supply a non-empty string, such as `"90210"`, to use that postal code
        # without prompting. This option does not affect ACH debit payments or payments
        # using an existing token.
        module PostalCode
          extend Telnyx::Internal::Type::Union

          Variants = T.type_alias { T.any(String, T::Boolean) }

          sig do
            override.returns(
              T::Array[Telnyx::AI::PayToolParams::PostalCode::Variants]
            )
          end
          def self.variants
          end
        end

        class Prompts < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::PayToolParams::Prompts,
                Telnyx::Internal::AnyHash
              )
            end

          # A default prompt string or an ordered list of qualified prompts.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::Variants
              )
            )
          end
          attr_reader :bank_account_number

          sig do
            params(
              bank_account_number:
                Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::Variants
            ).void
          end
          attr_writer :bank_account_number

          # A default prompt string or an ordered list of qualified prompts.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::Variants
              )
            )
          end
          attr_reader :bank_routing_number

          sig do
            params(
              bank_routing_number:
                Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::Variants
            ).void
          end
          attr_writer :bank_routing_number

          # A default prompt string or an ordered list of qualified prompts.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::PayToolParams::Prompts::ExpirationDate::Variants
              )
            )
          end
          attr_reader :expiration_date

          sig do
            params(
              expiration_date:
                Telnyx::AI::PayToolParams::Prompts::ExpirationDate::Variants
            ).void
          end
          attr_writer :expiration_date

          # A default prompt string or an ordered list of qualified prompts.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::Variants
              )
            )
          end
          attr_reader :payment_card_number

          sig do
            params(
              payment_card_number:
                Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::Variants
            ).void
          end
          attr_writer :payment_card_number

          # A default prompt string or an ordered list of qualified prompts.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::PayToolParams::Prompts::PostalCode::Variants
              )
            )
          end
          attr_reader :postal_code

          sig do
            params(
              postal_code:
                Telnyx::AI::PayToolParams::Prompts::PostalCode::Variants
            ).void
          end
          attr_writer :postal_code

          # A default prompt string or an ordered list of qualified prompts.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::PayToolParams::Prompts::SecurityCode::Variants
              )
            )
          end
          attr_reader :security_code

          sig do
            params(
              security_code:
                Telnyx::AI::PayToolParams::Prompts::SecurityCode::Variants
            ).void
          end
          attr_writer :security_code

          # Custom text-to-speech prompts keyed by payment collection step. The AI assistant
          # merges its own card-number prompt into this map, matching on the same step keys.
          sig do
            params(
              bank_account_number:
                Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::Variants,
              bank_routing_number:
                Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::Variants,
              expiration_date:
                Telnyx::AI::PayToolParams::Prompts::ExpirationDate::Variants,
              payment_card_number:
                Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::Variants,
              postal_code:
                Telnyx::AI::PayToolParams::Prompts::PostalCode::Variants,
              security_code:
                Telnyx::AI::PayToolParams::Prompts::SecurityCode::Variants
            ).returns(T.attached_class)
          end
          def self.new(
            # A default prompt string or an ordered list of qualified prompts.
            bank_account_number: nil,
            # A default prompt string or an ordered list of qualified prompts.
            bank_routing_number: nil,
            # A default prompt string or an ordered list of qualified prompts.
            expiration_date: nil,
            # A default prompt string or an ordered list of qualified prompts.
            payment_card_number: nil,
            # A default prompt string or an ordered list of qualified prompts.
            postal_code: nil,
            # A default prompt string or an ordered list of qualified prompts.
            security_code: nil
          )
          end

          sig do
            override.returns(
              {
                bank_account_number:
                  Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::Variants,
                bank_routing_number:
                  Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::Variants,
                expiration_date:
                  Telnyx::AI::PayToolParams::Prompts::ExpirationDate::Variants,
                payment_card_number:
                  Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::Variants,
                postal_code:
                  Telnyx::AI::PayToolParams::Prompts::PostalCode::Variants,
                security_code:
                  Telnyx::AI::PayToolParams::Prompts::SecurityCode::Variants
              }
            )
          end
          def to_hash
          end

          # A default prompt string or an ordered list of qualified prompts.
          module BankAccountNumber
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  String,
                  T::Array[
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1
                  ]
                )
              end

            class UnionMember1 < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Text spoken for the payment collection step.
              sig { returns(String) }
              attr_accessor :text

              # Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
              # `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
              # number above `max_attempts` (default 3) is rejected at write time — it could
              # never play.
              sig { returns(T.nilable(String)) }
              attr_reader :attempt

              sig { params(attempt: String).void }
              attr_writer :attempt

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType::OrSymbol
                  )
                )
              end
              attr_reader :card_type

              sig do
                params(
                  card_type:
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType::OrSymbol
                ).void
              end
              attr_writer :card_type

              # Step error for which this prompt applies.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType::OrSymbol
                  )
                )
              end
              attr_reader :error_type

              sig do
                params(
                  error_type:
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType::OrSymbol
                ).void
              end
              attr_writer :error_type

              # A text-to-speech prompt with optional matching qualifiers, mirroring the Voice
              # API PayPrompt schema.
              sig do
                params(
                  text: String,
                  attempt: String,
                  card_type:
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType::OrSymbol,
                  error_type:
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Text spoken for the payment collection step.
                text:,
                # Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
                # `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
                # number above `max_attempts` (default 3) is rejected at write time — it could
                # never play.
                attempt: nil,
                # Lowercase, case-sensitive detected card type for which this prompt applies.
                card_type: nil,
                # Step error for which this prompt applies.
                error_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    text: String,
                    attempt: String,
                    card_type:
                      Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType::OrSymbol,
                    error_type:
                      Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              module CardType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                VISA =
                  T.let(
                    :visa,
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType::TaggedSymbol
                  )
                MASTERCARD =
                  T.let(
                    :mastercard,
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType::TaggedSymbol
                  )
                AMEX =
                  T.let(
                    :amex,
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType::TaggedSymbol
                  )
                OPTIMA =
                  T.let(
                    :optima,
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType::TaggedSymbol
                  )
                DISCOVER =
                  T.let(
                    :discover,
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType::TaggedSymbol
                  )
                DINERS_CLUB =
                  T.let(
                    :"diners-club",
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType::TaggedSymbol
                  )
                JCB =
                  T.let(
                    :jcb,
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType::TaggedSymbol
                  )
                MAESTRO =
                  T.let(
                    :maestro,
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType::TaggedSymbol
                  )
                ENROUTE =
                  T.let(
                    :enroute,
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Step error for which this prompt applies.
              module ErrorType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TIMEOUT =
                  T.let(
                    :timeout,
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_CARD_NUMBER =
                  T.let(
                    :"invalid-card-number",
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_CARD_TYPE =
                  T.let(
                    :"invalid-card-type",
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_DATE =
                  T.let(
                    :"invalid-date",
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_SECURITY_CODE =
                  T.let(
                    :"invalid-security-code",
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_POSTAL_CODE =
                  T.let(
                    :"invalid-postal-code",
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_BANK_ROUTING_NUMBER =
                  T.let(
                    :"invalid-bank-routing-number",
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_BANK_ACCOUNT_NUMBER =
                  T.let(
                    :"invalid-bank-account-number",
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INPUT_MATCHING_FAILED =
                  T.let(
                    :"input-matching-failed",
                    Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::Variants
                ]
              )
            end
            def self.variants
            end

            UnionMember1Array =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1
                ],
                Telnyx::Internal::Type::Converter
              )
          end

          # A default prompt string or an ordered list of qualified prompts.
          module BankRoutingNumber
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  String,
                  T::Array[
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1
                  ]
                )
              end

            class UnionMember1 < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Text spoken for the payment collection step.
              sig { returns(String) }
              attr_accessor :text

              # Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
              # `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
              # number above `max_attempts` (default 3) is rejected at write time — it could
              # never play.
              sig { returns(T.nilable(String)) }
              attr_reader :attempt

              sig { params(attempt: String).void }
              attr_writer :attempt

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType::OrSymbol
                  )
                )
              end
              attr_reader :card_type

              sig do
                params(
                  card_type:
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType::OrSymbol
                ).void
              end
              attr_writer :card_type

              # Step error for which this prompt applies.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType::OrSymbol
                  )
                )
              end
              attr_reader :error_type

              sig do
                params(
                  error_type:
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType::OrSymbol
                ).void
              end
              attr_writer :error_type

              # A text-to-speech prompt with optional matching qualifiers, mirroring the Voice
              # API PayPrompt schema.
              sig do
                params(
                  text: String,
                  attempt: String,
                  card_type:
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType::OrSymbol,
                  error_type:
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Text spoken for the payment collection step.
                text:,
                # Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
                # `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
                # number above `max_attempts` (default 3) is rejected at write time — it could
                # never play.
                attempt: nil,
                # Lowercase, case-sensitive detected card type for which this prompt applies.
                card_type: nil,
                # Step error for which this prompt applies.
                error_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    text: String,
                    attempt: String,
                    card_type:
                      Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType::OrSymbol,
                    error_type:
                      Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              module CardType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                VISA =
                  T.let(
                    :visa,
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType::TaggedSymbol
                  )
                MASTERCARD =
                  T.let(
                    :mastercard,
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType::TaggedSymbol
                  )
                AMEX =
                  T.let(
                    :amex,
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType::TaggedSymbol
                  )
                OPTIMA =
                  T.let(
                    :optima,
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType::TaggedSymbol
                  )
                DISCOVER =
                  T.let(
                    :discover,
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType::TaggedSymbol
                  )
                DINERS_CLUB =
                  T.let(
                    :"diners-club",
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType::TaggedSymbol
                  )
                JCB =
                  T.let(
                    :jcb,
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType::TaggedSymbol
                  )
                MAESTRO =
                  T.let(
                    :maestro,
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType::TaggedSymbol
                  )
                ENROUTE =
                  T.let(
                    :enroute,
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Step error for which this prompt applies.
              module ErrorType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TIMEOUT =
                  T.let(
                    :timeout,
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_CARD_NUMBER =
                  T.let(
                    :"invalid-card-number",
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_CARD_TYPE =
                  T.let(
                    :"invalid-card-type",
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_DATE =
                  T.let(
                    :"invalid-date",
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_SECURITY_CODE =
                  T.let(
                    :"invalid-security-code",
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_POSTAL_CODE =
                  T.let(
                    :"invalid-postal-code",
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_BANK_ROUTING_NUMBER =
                  T.let(
                    :"invalid-bank-routing-number",
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_BANK_ACCOUNT_NUMBER =
                  T.let(
                    :"invalid-bank-account-number",
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INPUT_MATCHING_FAILED =
                  T.let(
                    :"input-matching-failed",
                    Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::Variants
                ]
              )
            end
            def self.variants
            end

            UnionMember1Array =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1
                ],
                Telnyx::Internal::Type::Converter
              )
          end

          # A default prompt string or an ordered list of qualified prompts.
          module ExpirationDate
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  String,
                  T::Array[
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1
                  ]
                )
              end

            class UnionMember1 < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Text spoken for the payment collection step.
              sig { returns(String) }
              attr_accessor :text

              # Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
              # `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
              # number above `max_attempts` (default 3) is rejected at write time — it could
              # never play.
              sig { returns(T.nilable(String)) }
              attr_reader :attempt

              sig { params(attempt: String).void }
              attr_writer :attempt

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType::OrSymbol
                  )
                )
              end
              attr_reader :card_type

              sig do
                params(
                  card_type:
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType::OrSymbol
                ).void
              end
              attr_writer :card_type

              # Step error for which this prompt applies.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType::OrSymbol
                  )
                )
              end
              attr_reader :error_type

              sig do
                params(
                  error_type:
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType::OrSymbol
                ).void
              end
              attr_writer :error_type

              # A text-to-speech prompt with optional matching qualifiers, mirroring the Voice
              # API PayPrompt schema.
              sig do
                params(
                  text: String,
                  attempt: String,
                  card_type:
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType::OrSymbol,
                  error_type:
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Text spoken for the payment collection step.
                text:,
                # Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
                # `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
                # number above `max_attempts` (default 3) is rejected at write time — it could
                # never play.
                attempt: nil,
                # Lowercase, case-sensitive detected card type for which this prompt applies.
                card_type: nil,
                # Step error for which this prompt applies.
                error_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    text: String,
                    attempt: String,
                    card_type:
                      Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType::OrSymbol,
                    error_type:
                      Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              module CardType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                VISA =
                  T.let(
                    :visa,
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType::TaggedSymbol
                  )
                MASTERCARD =
                  T.let(
                    :mastercard,
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType::TaggedSymbol
                  )
                AMEX =
                  T.let(
                    :amex,
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType::TaggedSymbol
                  )
                OPTIMA =
                  T.let(
                    :optima,
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType::TaggedSymbol
                  )
                DISCOVER =
                  T.let(
                    :discover,
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType::TaggedSymbol
                  )
                DINERS_CLUB =
                  T.let(
                    :"diners-club",
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType::TaggedSymbol
                  )
                JCB =
                  T.let(
                    :jcb,
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType::TaggedSymbol
                  )
                MAESTRO =
                  T.let(
                    :maestro,
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType::TaggedSymbol
                  )
                ENROUTE =
                  T.let(
                    :enroute,
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Step error for which this prompt applies.
              module ErrorType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TIMEOUT =
                  T.let(
                    :timeout,
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_CARD_NUMBER =
                  T.let(
                    :"invalid-card-number",
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_CARD_TYPE =
                  T.let(
                    :"invalid-card-type",
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_DATE =
                  T.let(
                    :"invalid-date",
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_SECURITY_CODE =
                  T.let(
                    :"invalid-security-code",
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_POSTAL_CODE =
                  T.let(
                    :"invalid-postal-code",
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_BANK_ROUTING_NUMBER =
                  T.let(
                    :"invalid-bank-routing-number",
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_BANK_ACCOUNT_NUMBER =
                  T.let(
                    :"invalid-bank-account-number",
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType::TaggedSymbol
                  )
                INPUT_MATCHING_FAILED =
                  T.let(
                    :"input-matching-failed",
                    Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::PayToolParams::Prompts::ExpirationDate::Variants
                ]
              )
            end
            def self.variants
            end

            UnionMember1Array =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1
                ],
                Telnyx::Internal::Type::Converter
              )
          end

          # A default prompt string or an ordered list of qualified prompts.
          module PaymentCardNumber
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  String,
                  T::Array[
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1
                  ]
                )
              end

            class UnionMember1 < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Text spoken for the payment collection step.
              sig { returns(String) }
              attr_accessor :text

              # Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
              # `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
              # number above `max_attempts` (default 3) is rejected at write time — it could
              # never play.
              sig { returns(T.nilable(String)) }
              attr_reader :attempt

              sig { params(attempt: String).void }
              attr_writer :attempt

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType::OrSymbol
                  )
                )
              end
              attr_reader :card_type

              sig do
                params(
                  card_type:
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType::OrSymbol
                ).void
              end
              attr_writer :card_type

              # Step error for which this prompt applies.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType::OrSymbol
                  )
                )
              end
              attr_reader :error_type

              sig do
                params(
                  error_type:
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType::OrSymbol
                ).void
              end
              attr_writer :error_type

              # A text-to-speech prompt with optional matching qualifiers, mirroring the Voice
              # API PayPrompt schema.
              sig do
                params(
                  text: String,
                  attempt: String,
                  card_type:
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType::OrSymbol,
                  error_type:
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Text spoken for the payment collection step.
                text:,
                # Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
                # `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
                # number above `max_attempts` (default 3) is rejected at write time — it could
                # never play.
                attempt: nil,
                # Lowercase, case-sensitive detected card type for which this prompt applies.
                card_type: nil,
                # Step error for which this prompt applies.
                error_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    text: String,
                    attempt: String,
                    card_type:
                      Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType::OrSymbol,
                    error_type:
                      Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              module CardType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                VISA =
                  T.let(
                    :visa,
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType::TaggedSymbol
                  )
                MASTERCARD =
                  T.let(
                    :mastercard,
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType::TaggedSymbol
                  )
                AMEX =
                  T.let(
                    :amex,
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType::TaggedSymbol
                  )
                OPTIMA =
                  T.let(
                    :optima,
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType::TaggedSymbol
                  )
                DISCOVER =
                  T.let(
                    :discover,
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType::TaggedSymbol
                  )
                DINERS_CLUB =
                  T.let(
                    :"diners-club",
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType::TaggedSymbol
                  )
                JCB =
                  T.let(
                    :jcb,
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType::TaggedSymbol
                  )
                MAESTRO =
                  T.let(
                    :maestro,
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType::TaggedSymbol
                  )
                ENROUTE =
                  T.let(
                    :enroute,
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Step error for which this prompt applies.
              module ErrorType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TIMEOUT =
                  T.let(
                    :timeout,
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_CARD_NUMBER =
                  T.let(
                    :"invalid-card-number",
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_CARD_TYPE =
                  T.let(
                    :"invalid-card-type",
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_DATE =
                  T.let(
                    :"invalid-date",
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_SECURITY_CODE =
                  T.let(
                    :"invalid-security-code",
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_POSTAL_CODE =
                  T.let(
                    :"invalid-postal-code",
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_BANK_ROUTING_NUMBER =
                  T.let(
                    :"invalid-bank-routing-number",
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_BANK_ACCOUNT_NUMBER =
                  T.let(
                    :"invalid-bank-account-number",
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType::TaggedSymbol
                  )
                INPUT_MATCHING_FAILED =
                  T.let(
                    :"input-matching-failed",
                    Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::Variants
                ]
              )
            end
            def self.variants
            end

            UnionMember1Array =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1
                ],
                Telnyx::Internal::Type::Converter
              )
          end

          # A default prompt string or an ordered list of qualified prompts.
          module PostalCode
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  String,
                  T::Array[
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1
                  ]
                )
              end

            class UnionMember1 < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Text spoken for the payment collection step.
              sig { returns(String) }
              attr_accessor :text

              # Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
              # `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
              # number above `max_attempts` (default 3) is rejected at write time — it could
              # never play.
              sig { returns(T.nilable(String)) }
              attr_reader :attempt

              sig { params(attempt: String).void }
              attr_writer :attempt

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType::OrSymbol
                  )
                )
              end
              attr_reader :card_type

              sig do
                params(
                  card_type:
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType::OrSymbol
                ).void
              end
              attr_writer :card_type

              # Step error for which this prompt applies.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType::OrSymbol
                  )
                )
              end
              attr_reader :error_type

              sig do
                params(
                  error_type:
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType::OrSymbol
                ).void
              end
              attr_writer :error_type

              # A text-to-speech prompt with optional matching qualifiers, mirroring the Voice
              # API PayPrompt schema.
              sig do
                params(
                  text: String,
                  attempt: String,
                  card_type:
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType::OrSymbol,
                  error_type:
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Text spoken for the payment collection step.
                text:,
                # Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
                # `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
                # number above `max_attempts` (default 3) is rejected at write time — it could
                # never play.
                attempt: nil,
                # Lowercase, case-sensitive detected card type for which this prompt applies.
                card_type: nil,
                # Step error for which this prompt applies.
                error_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    text: String,
                    attempt: String,
                    card_type:
                      Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType::OrSymbol,
                    error_type:
                      Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              module CardType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                VISA =
                  T.let(
                    :visa,
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType::TaggedSymbol
                  )
                MASTERCARD =
                  T.let(
                    :mastercard,
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType::TaggedSymbol
                  )
                AMEX =
                  T.let(
                    :amex,
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType::TaggedSymbol
                  )
                OPTIMA =
                  T.let(
                    :optima,
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType::TaggedSymbol
                  )
                DISCOVER =
                  T.let(
                    :discover,
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType::TaggedSymbol
                  )
                DINERS_CLUB =
                  T.let(
                    :"diners-club",
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType::TaggedSymbol
                  )
                JCB =
                  T.let(
                    :jcb,
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType::TaggedSymbol
                  )
                MAESTRO =
                  T.let(
                    :maestro,
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType::TaggedSymbol
                  )
                ENROUTE =
                  T.let(
                    :enroute,
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Step error for which this prompt applies.
              module ErrorType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TIMEOUT =
                  T.let(
                    :timeout,
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_CARD_NUMBER =
                  T.let(
                    :"invalid-card-number",
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_CARD_TYPE =
                  T.let(
                    :"invalid-card-type",
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_DATE =
                  T.let(
                    :"invalid-date",
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_SECURITY_CODE =
                  T.let(
                    :"invalid-security-code",
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_POSTAL_CODE =
                  T.let(
                    :"invalid-postal-code",
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_BANK_ROUTING_NUMBER =
                  T.let(
                    :"invalid-bank-routing-number",
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_BANK_ACCOUNT_NUMBER =
                  T.let(
                    :"invalid-bank-account-number",
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INPUT_MATCHING_FAILED =
                  T.let(
                    :"input-matching-failed",
                    Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::PayToolParams::Prompts::PostalCode::Variants
                ]
              )
            end
            def self.variants
            end

            UnionMember1Array =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1
                ],
                Telnyx::Internal::Type::Converter
              )
          end

          # A default prompt string or an ordered list of qualified prompts.
          module SecurityCode
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  String,
                  T::Array[
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1
                  ]
                )
              end

            class UnionMember1 < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Text spoken for the payment collection step.
              sig { returns(String) }
              attr_accessor :text

              # Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
              # `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
              # number above `max_attempts` (default 3) is rejected at write time — it could
              # never play.
              sig { returns(T.nilable(String)) }
              attr_reader :attempt

              sig { params(attempt: String).void }
              attr_writer :attempt

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType::OrSymbol
                  )
                )
              end
              attr_reader :card_type

              sig do
                params(
                  card_type:
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType::OrSymbol
                ).void
              end
              attr_writer :card_type

              # Step error for which this prompt applies.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType::OrSymbol
                  )
                )
              end
              attr_reader :error_type

              sig do
                params(
                  error_type:
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType::OrSymbol
                ).void
              end
              attr_writer :error_type

              # A text-to-speech prompt with optional matching qualifiers, mirroring the Voice
              # API PayPrompt schema.
              sig do
                params(
                  text: String,
                  attempt: String,
                  card_type:
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType::OrSymbol,
                  error_type:
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Text spoken for the payment collection step.
                text:,
                # Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
                # `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
                # number above `max_attempts` (default 3) is rejected at write time — it could
                # never play.
                attempt: nil,
                # Lowercase, case-sensitive detected card type for which this prompt applies.
                card_type: nil,
                # Step error for which this prompt applies.
                error_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    text: String,
                    attempt: String,
                    card_type:
                      Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType::OrSymbol,
                    error_type:
                      Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              module CardType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                VISA =
                  T.let(
                    :visa,
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType::TaggedSymbol
                  )
                MASTERCARD =
                  T.let(
                    :mastercard,
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType::TaggedSymbol
                  )
                AMEX =
                  T.let(
                    :amex,
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType::TaggedSymbol
                  )
                OPTIMA =
                  T.let(
                    :optima,
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType::TaggedSymbol
                  )
                DISCOVER =
                  T.let(
                    :discover,
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType::TaggedSymbol
                  )
                DINERS_CLUB =
                  T.let(
                    :"diners-club",
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType::TaggedSymbol
                  )
                JCB =
                  T.let(
                    :jcb,
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType::TaggedSymbol
                  )
                MAESTRO =
                  T.let(
                    :maestro,
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType::TaggedSymbol
                  )
                ENROUTE =
                  T.let(
                    :enroute,
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Step error for which this prompt applies.
              module ErrorType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TIMEOUT =
                  T.let(
                    :timeout,
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_CARD_NUMBER =
                  T.let(
                    :"invalid-card-number",
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_CARD_TYPE =
                  T.let(
                    :"invalid-card-type",
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_DATE =
                  T.let(
                    :"invalid-date",
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_SECURITY_CODE =
                  T.let(
                    :"invalid-security-code",
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_POSTAL_CODE =
                  T.let(
                    :"invalid-postal-code",
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_BANK_ROUTING_NUMBER =
                  T.let(
                    :"invalid-bank-routing-number",
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INVALID_BANK_ACCOUNT_NUMBER =
                  T.let(
                    :"invalid-bank-account-number",
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType::TaggedSymbol
                  )
                INPUT_MATCHING_FAILED =
                  T.let(
                    :"input-matching-failed",
                    Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::PayToolParams::Prompts::SecurityCode::Variants
                ]
              )
            end
            def self.variants
            end

            UnionMember1Array =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1
                ],
                Telnyx::Internal::Type::Converter
              )
          end
        end

        module ValidCardType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::PayToolParams::ValidCardType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VISA =
            T.let(:visa, Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol)
          MASTERCARD =
            T.let(
              :mastercard,
              Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol
            )
          AMEX =
            T.let(:amex, Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol)
          MAESTRO =
            T.let(
              :maestro,
              Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol
            )
          DISCOVER =
            T.let(
              :discover,
              Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol
            )
          OPTIMA =
            T.let(
              :optima,
              Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol
            )
          JCB =
            T.let(:jcb, Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol)
          DINERS_CLUB =
            T.let(
              :"diners-club",
              Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol
            )
          ENROUTE =
            T.let(
              :enroute,
              Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::PayToolParams::ValidCardType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
