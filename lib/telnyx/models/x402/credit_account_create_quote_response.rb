# frozen_string_literal: true

module Telnyx
  module Models
    module X402
      # @see Telnyx::Resources::X402::CreditAccount#create_quote
      class CreditAccountCreateQuoteResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data, nil]
        optional :data, -> { Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data]

        # @see Telnyx::Models::X402::CreditAccountCreateQuoteResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Unique quote identifier. Use this to settle the payment.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute amount_crypto
          #   The equivalent amount in the payment cryptocurrency's smallest unit (e.g. USDC
          #   has 6 decimals, so $50.00 = "50000000").
          #
          #   @return [String, nil]
          optional :amount_crypto, String

          # @!attribute amount_usd
          #   The quoted amount in USD.
          #
          #   @return [String, nil]
          optional :amount_usd, String

          # @!attribute expires_at
          #   ISO 8601 timestamp when the quote expires.
          #
          #   @return [Time, nil]
          optional :expires_at, Time

          # @!attribute network
          #   The blockchain network for the payment in CAIP-2 format (e.g. eip155:8453 for
          #   Base).
          #
          #   @return [String, nil]
          optional :network, String

          # @!attribute payment_requirements
          #   x402 protocol v2 payment requirements. Contains all information needed to
          #   construct and sign a payment authorization.
          #
          #   @return [Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements, nil]
          optional :payment_requirements,
                   -> { Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements }

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::RecordType, nil]
          optional :record_type,
                   enum: -> { Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::RecordType }

          # @!method initialize(id: nil, amount_crypto: nil, amount_usd: nil, expires_at: nil, network: nil, payment_requirements: nil, record_type: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data} for more details.
          #
          #   @param id [String] Unique quote identifier. Use this to settle the payment.
          #
          #   @param amount_crypto [String] The equivalent amount in the payment cryptocurrency's smallest unit (e.g. USDC h
          #
          #   @param amount_usd [String] The quoted amount in USD.
          #
          #   @param expires_at [Time] ISO 8601 timestamp when the quote expires.
          #
          #   @param network [String] The blockchain network for the payment in CAIP-2 format (e.g. eip155:8453 for Ba
          #
          #   @param payment_requirements [Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements] x402 protocol v2 payment requirements. Contains all information needed to constr
          #
          #   @param record_type [Symbol, Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::RecordType]

          # @see Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data#payment_requirements
          class PaymentRequirements < Telnyx::Internal::Type::BaseModel
            # @!attribute accepts
            #   Accepted payment schemes. Currently only the `exact` EVM scheme is supported.
            #
            #   @return [Array<Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept>, nil]
            optional :accepts,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept] }

            # @!attribute resource
            #   The resource being paid for. Included in the payment signature.
            #
            #   @return [Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Resource, nil]
            optional :resource,
                     -> { Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Resource }

            # @!attribute x402_version
            #   x402 protocol version. Currently always 2.
            #
            #   @return [Integer, Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::X402Version, nil]
            optional :x402_version,
                     enum: -> { Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::X402Version },
                     api_name: :x402Version

            # @!method initialize(accepts: nil, resource: nil, x402_version: nil)
            #   x402 protocol v2 payment requirements. Contains all information needed to
            #   construct and sign a payment authorization.
            #
            #   @param accepts [Array<Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept>] Accepted payment schemes. Currently only the `exact` EVM scheme is supported.
            #
            #   @param resource [Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Resource] The resource being paid for. Included in the payment signature.
            #
            #   @param x402_version [Integer, Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::X402Version] x402 protocol version. Currently always 2.

            class Accept < Telnyx::Internal::Type::BaseModel
              # @!attribute amount
              #   Amount in the token's smallest unit.
              #
              #   @return [String, nil]
              optional :amount, String

              # @!attribute asset
              #   Token contract address (e.g. USDC on Base).
              #
              #   @return [String, nil]
              optional :asset, String

              # @!attribute extra
              #   Additional scheme-specific parameters including EIP-712 domain info and the
              #   facilitator URL.
              #
              #   @return [Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept::Extra, nil]
              optional :extra,
                       -> { Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept::Extra }

              # @!attribute max_timeout_seconds
              #   Maximum time in seconds before the payment authorization expires.
              #
              #   @return [Integer, nil]
              optional :max_timeout_seconds, Integer, api_name: :maxTimeoutSeconds

              # @!attribute network
              #   Blockchain network identifier in CAIP-2 format (e.g. "eip155:8453" for Base).
              #
              #   @return [String, nil]
              optional :network, String

              # @!attribute pay_to
              #   Recipient wallet address.
              #
              #   @return [String, nil]
              optional :pay_to, String, api_name: :payTo

              # @!attribute scheme
              #   Payment scheme (e.g. "exact").
              #
              #   @return [String, nil]
              optional :scheme, String

              # @!method initialize(amount: nil, asset: nil, extra: nil, max_timeout_seconds: nil, network: nil, pay_to: nil, scheme: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept}
              #   for more details.
              #
              #   @param amount [String] Amount in the token's smallest unit.
              #
              #   @param asset [String] Token contract address (e.g. USDC on Base).
              #
              #   @param extra [Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept::Extra] Additional scheme-specific parameters including EIP-712 domain info and the faci
              #
              #   @param max_timeout_seconds [Integer] Maximum time in seconds before the payment authorization expires.
              #
              #   @param network [String] Blockchain network identifier in CAIP-2 format (e.g. "eip155:8453" for Base).
              #
              #   @param pay_to [String] Recipient wallet address.
              #
              #   @param scheme [String] Payment scheme (e.g. "exact").

              # @see Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements::Accept#extra
              class Extra < Telnyx::Internal::Type::BaseModel
                # @!attribute facilitator_url
                #
                #   @return [String, nil]
                optional :facilitator_url, String, api_name: :facilitatorUrl

                # @!attribute name
                #   EIP-712 domain name (e.g. "USD Coin").
                #
                #   @return [String, nil]
                optional :name, String

                # @!attribute quote_id
                #
                #   @return [String, nil]
                optional :quote_id, String, api_name: :quoteId

                # @!attribute version
                #   EIP-712 domain version.
                #
                #   @return [String, nil]
                optional :version, String

                # @!method initialize(facilitator_url: nil, name: nil, quote_id: nil, version: nil)
                #   Additional scheme-specific parameters including EIP-712 domain info and the
                #   facilitator URL.
                #
                #   @param facilitator_url [String]
                #
                #   @param name [String] EIP-712 domain name (e.g. "USD Coin").
                #
                #   @param quote_id [String]
                #
                #   @param version [String] EIP-712 domain version.
              end
            end

            # @see Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements#resource
            class Resource < Telnyx::Internal::Type::BaseModel
              # @!attribute description
              #   Human-readable description of the payment.
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute mime_type
              #   MIME type of the resource.
              #
              #   @return [String, nil]
              optional :mime_type, String, api_name: :mimeType

              # @!attribute url
              #   Canonical URL of the payment resource.
              #
              #   @return [String, nil]
              optional :url, String

              # @!method initialize(description: nil, mime_type: nil, url: nil)
              #   The resource being paid for. Included in the payment signature.
              #
              #   @param description [String] Human-readable description of the payment.
              #
              #   @param mime_type [String] MIME type of the resource.
              #
              #   @param url [String] Canonical URL of the payment resource.
            end

            # x402 protocol version. Currently always 2.
            #
            # @see Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data::PaymentRequirements#x402_version
            module X402Version
              extend Telnyx::Internal::Type::Enum

              V2 = 2

              # @!method self.values
              #   @return [Array<Integer>]
            end
          end

          # @see Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            QUOTE = :quote

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
