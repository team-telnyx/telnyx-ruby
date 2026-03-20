# typed: strong

module Telnyx
  module Models
    module X402
      class CreditAccountCreateQuoteResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::X402::CreditAccountCreateQuoteResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data: Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Unique quote identifier. Use this to settle the payment.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The equivalent amount in the payment cryptocurrency's smallest unit (e.g. USDC
          # has 6 decimals, so $50.00 = "50000000").
          sig { returns(T.nilable(String)) }
          attr_reader :amount_crypto

          sig { params(amount_crypto: String).void }
          attr_writer :amount_crypto

          # The quoted amount in USD.
          sig { returns(T.nilable(String)) }
          attr_reader :amount_usd

          sig { params(amount_usd: String).void }
          attr_writer :amount_usd

          # ISO 8601 timestamp when the quote expires.
          sig { returns(T.nilable(Time)) }
          attr_reader :expires_at

          sig { params(expires_at: Time).void }
          attr_writer :expires_at

          # The blockchain network for the payment in CAIP-2 format (e.g. eip155:8453 for
          # Base).
          sig { returns(T.nilable(String)) }
          attr_reader :network

          sig { params(network: String).void }
          attr_writer :network

          # x402 protocol v2 payment requirements. Contains all information needed to
          # construct and sign a payment authorization.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements
              )
            )
          end
          attr_reader :payment_requirements

          sig do
            params(
              payment_requirements:
                Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::OrHash
            ).void
          end
          attr_writer :payment_requirements

          sig do
            returns(
              T.nilable(
                Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::RecordType::TaggedSymbol
              )
            )
          end
          attr_reader :record_type

          sig do
            params(
              record_type:
                Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::RecordType::OrSymbol
            ).void
          end
          attr_writer :record_type

          sig do
            params(
              id: String,
              amount_crypto: String,
              amount_usd: String,
              expires_at: Time,
              network: String,
              payment_requirements:
                Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::OrHash,
              record_type:
                Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::RecordType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique quote identifier. Use this to settle the payment.
            id: nil,
            # The equivalent amount in the payment cryptocurrency's smallest unit (e.g. USDC
            # has 6 decimals, so $50.00 = "50000000").
            amount_crypto: nil,
            # The quoted amount in USD.
            amount_usd: nil,
            # ISO 8601 timestamp when the quote expires.
            expires_at: nil,
            # The blockchain network for the payment in CAIP-2 format (e.g. eip155:8453 for
            # Base).
            network: nil,
            # x402 protocol v2 payment requirements. Contains all information needed to
            # construct and sign a payment authorization.
            payment_requirements: nil,
            record_type: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount_crypto: String,
                amount_usd: String,
                expires_at: Time,
                network: String,
                payment_requirements:
                  Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements,
                record_type:
                  Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::RecordType::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class PaymentRequirements < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements,
                  Telnyx::Internal::AnyHash
                )
              end

            # Accepted payment schemes. Currently only the `exact` EVM scheme is supported.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept
                  ]
                )
              )
            end
            attr_reader :accepts

            sig do
              params(
                accepts:
                  T::Array[
                    Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept::OrHash
                  ]
              ).void
            end
            attr_writer :accepts

            # The resource being paid for. Included in the payment signature.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Resource
                )
              )
            end
            attr_reader :resource

            sig do
              params(
                resource:
                  Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Resource::OrHash
              ).void
            end
            attr_writer :resource

            # x402 protocol version. Currently always 2.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::X402Version::TaggedInteger
                )
              )
            end
            attr_reader :x402_version

            sig do
              params(
                x402_version:
                  Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::X402Version::OrInteger
              ).void
            end
            attr_writer :x402_version

            # x402 protocol v2 payment requirements. Contains all information needed to
            # construct and sign a payment authorization.
            sig do
              params(
                accepts:
                  T::Array[
                    Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept::OrHash
                  ],
                resource:
                  Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Resource::OrHash,
                x402_version:
                  Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::X402Version::OrInteger
              ).returns(T.attached_class)
            end
            def self.new(
              # Accepted payment schemes. Currently only the `exact` EVM scheme is supported.
              accepts: nil,
              # The resource being paid for. Included in the payment signature.
              resource: nil,
              # x402 protocol version. Currently always 2.
              x402_version: nil
            )
            end

            sig do
              override.returns(
                {
                  accepts:
                    T::Array[
                      Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept
                    ],
                  resource:
                    Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Resource,
                  x402_version:
                    Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::X402Version::TaggedInteger
                }
              )
            end
            def to_hash
            end

            class Accept < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Amount in the token's smallest unit.
              sig { returns(T.nilable(String)) }
              attr_reader :amount

              sig { params(amount: String).void }
              attr_writer :amount

              # Token contract address (e.g. USDC on Base).
              sig { returns(T.nilable(String)) }
              attr_reader :asset

              sig { params(asset: String).void }
              attr_writer :asset

              # Additional scheme-specific parameters including EIP-712 domain info and the
              # facilitator URL.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept::Extra
                  )
                )
              end
              attr_reader :extra

              sig do
                params(
                  extra:
                    Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept::Extra::OrHash
                ).void
              end
              attr_writer :extra

              # Maximum time in seconds before the payment authorization expires.
              sig { returns(T.nilable(Integer)) }
              attr_reader :max_timeout_seconds

              sig { params(max_timeout_seconds: Integer).void }
              attr_writer :max_timeout_seconds

              # Blockchain network identifier in CAIP-2 format (e.g. "eip155:8453" for Base).
              sig { returns(T.nilable(String)) }
              attr_reader :network

              sig { params(network: String).void }
              attr_writer :network

              # Recipient wallet address.
              sig { returns(T.nilable(String)) }
              attr_reader :pay_to

              sig { params(pay_to: String).void }
              attr_writer :pay_to

              # Payment scheme (e.g. "exact").
              sig { returns(T.nilable(String)) }
              attr_reader :scheme

              sig { params(scheme: String).void }
              attr_writer :scheme

              sig do
                params(
                  amount: String,
                  asset: String,
                  extra:
                    Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept::Extra::OrHash,
                  max_timeout_seconds: Integer,
                  network: String,
                  pay_to: String,
                  scheme: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Amount in the token's smallest unit.
                amount: nil,
                # Token contract address (e.g. USDC on Base).
                asset: nil,
                # Additional scheme-specific parameters including EIP-712 domain info and the
                # facilitator URL.
                extra: nil,
                # Maximum time in seconds before the payment authorization expires.
                max_timeout_seconds: nil,
                # Blockchain network identifier in CAIP-2 format (e.g. "eip155:8453" for Base).
                network: nil,
                # Recipient wallet address.
                pay_to: nil,
                # Payment scheme (e.g. "exact").
                scheme: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount: String,
                    asset: String,
                    extra:
                      Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept::Extra,
                    max_timeout_seconds: Integer,
                    network: String,
                    pay_to: String,
                    scheme: String
                  }
                )
              end
              def to_hash
              end

              class Extra < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept::Extra,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :facilitator_url

                sig { params(facilitator_url: String).void }
                attr_writer :facilitator_url

                # EIP-712 domain name (e.g. "USD Coin").
                sig { returns(T.nilable(String)) }
                attr_reader :name

                sig { params(name: String).void }
                attr_writer :name

                sig { returns(T.nilable(String)) }
                attr_reader :quote_id

                sig { params(quote_id: String).void }
                attr_writer :quote_id

                # EIP-712 domain version.
                sig { returns(T.nilable(String)) }
                attr_reader :version

                sig { params(version: String).void }
                attr_writer :version

                # Additional scheme-specific parameters including EIP-712 domain info and the
                # facilitator URL.
                sig do
                  params(
                    facilitator_url: String,
                    name: String,
                    quote_id: String,
                    version: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  facilitator_url: nil,
                  # EIP-712 domain name (e.g. "USD Coin").
                  name: nil,
                  quote_id: nil,
                  # EIP-712 domain version.
                  version: nil
                )
                end

                sig do
                  override.returns(
                    {
                      facilitator_url: String,
                      name: String,
                      quote_id: String,
                      version: String
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class Resource < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Resource,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Human-readable description of the payment.
              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # MIME type of the resource.
              sig { returns(T.nilable(String)) }
              attr_reader :mime_type

              sig { params(mime_type: String).void }
              attr_writer :mime_type

              # Canonical URL of the payment resource.
              sig { returns(T.nilable(String)) }
              attr_reader :url

              sig { params(url: String).void }
              attr_writer :url

              # The resource being paid for. Included in the payment signature.
              sig do
                params(
                  description: String,
                  mime_type: String,
                  url: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Human-readable description of the payment.
                description: nil,
                # MIME type of the resource.
                mime_type: nil,
                # Canonical URL of the payment resource.
                url: nil
              )
              end

              sig do
                override.returns(
                  { description: String, mime_type: String, url: String }
                )
              end
              def to_hash
              end
            end

            # x402 protocol version. Currently always 2.
            module X402Version
              extend Telnyx::Internal::Type::Enum

              TaggedInteger =
                T.type_alias do
                  T.all(
                    Integer,
                    Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::X402Version
                  )
                end
              OrInteger = T.type_alias { Integer }

              X402_VERSION_2 =
                T.let(
                  2,
                  Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::X402Version::TaggedInteger
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::X402Version::TaggedInteger
                  ]
                )
              end
              def self.values
              end
            end
          end

          module RecordType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            QUOTE =
              T.let(
                :quote,
                Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::RecordType::TaggedSymbol
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
