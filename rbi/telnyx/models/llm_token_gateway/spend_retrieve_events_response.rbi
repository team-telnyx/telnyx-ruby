# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class SpendRetrieveEventsResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data
            ]
          )
        end
        attr_accessor :data

        sig do
          returns(
            Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Meta
          )
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::OrHash
              ],
            meta:
              Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Meta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data
                ],
              meta:
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Meta
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # Provider attempts begun for the request (fallbacks included); 0 for a cache hit.
          # Token and cost totals sum every attempt.
          sig { returns(Integer) }
          attr_accessor :attempts

          sig do
            returns(
              Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Biller::TaggedSymbol
            )
          end
          attr_accessor :biller

          sig { returns(T::Boolean) }
          attr_accessor :cache_hit

          sig { returns(Integer) }
          attr_accessor :configuration_version

          # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
          # never binary float accounting.
          sig { returns(T.nilable(Float)) }
          attr_accessor :cost

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(T.nilable(String)) }
          attr_accessor :end_user_id

          sig { returns(T.nilable(Integer)) }
          attr_accessor :input_tokens

          # Customer request tags from the x-ltg-metadata header: up to 5 entries. Keys are
          # case-sensitive; keys starting with ltg*, telnyx*, litellm* or cf* (any case) are
          # reserved. Values are strings (1-256 characters, no control or format
          # characters), integers within +/-9007199254740991, or booleans; floats, null,
          # objects and arrays are rejected. Values that look like credentials are rejected.
          # Tags are attribution only: never forwarded upstream, never part of the response
          # cache key, never used for budgets or routing. An untagged request reports {}.
          sig do
            returns(
              T::Hash[
                Symbol,
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Metadata::Variants
              ]
            )
          end
          attr_accessor :metadata

          # Public alias that served (the last attempt); rate_version, biller and
          # provider_key_id follow it.
          sig { returns(String) }
          attr_accessor :model

          sig { returns(T.nilable(Integer)) }
          attr_accessor :output_tokens

          sig { returns(T.nilable(String)) }
          attr_accessor :provider_key_id

          sig { returns(String) }
          attr_accessor :rate_version

          sig { returns(String) }
          attr_accessor :request_id

          # Public alias the caller requested; differs from model only when a group fallback
          # served.
          sig { returns(String) }
          attr_accessor :requested_model

          sig { returns(Integer) }
          attr_accessor :reservation_micro_usd

          sig do
            returns(
              Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          sig { returns(String) }
          attr_accessor :token_group_id

          sig { returns(String) }
          attr_accessor :token_key_id

          sig { returns(T.nilable(String)) }
          attr_accessor :token_user_id

          sig do
            returns(
              Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::UsageStatus::TaggedSymbol
            )
          end
          attr_accessor :usage_status

          sig do
            params(
              id: String,
              attempts: Integer,
              biller:
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Biller::OrSymbol,
              cache_hit: T::Boolean,
              configuration_version: Integer,
              cost: T.nilable(Float),
              created_at: Time,
              end_user_id: T.nilable(String),
              input_tokens: T.nilable(Integer),
              metadata:
                T::Hash[
                  Symbol,
                  Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Metadata::Variants
                ],
              model: String,
              output_tokens: T.nilable(Integer),
              provider_key_id: T.nilable(String),
              rate_version: String,
              request_id: String,
              requested_model: String,
              reservation_micro_usd: Integer,
              status:
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Status::OrSymbol,
              token_group_id: String,
              token_key_id: String,
              token_user_id: T.nilable(String),
              usage_status:
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::UsageStatus::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Provider attempts begun for the request (fallbacks included); 0 for a cache hit.
            # Token and cost totals sum every attempt.
            attempts:,
            biller:,
            cache_hit:,
            configuration_version:,
            # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            # never binary float accounting.
            cost:,
            created_at:,
            end_user_id:,
            input_tokens:,
            # Customer request tags from the x-ltg-metadata header: up to 5 entries. Keys are
            # case-sensitive; keys starting with ltg*, telnyx*, litellm* or cf* (any case) are
            # reserved. Values are strings (1-256 characters, no control or format
            # characters), integers within +/-9007199254740991, or booleans; floats, null,
            # objects and arrays are rejected. Values that look like credentials are rejected.
            # Tags are attribution only: never forwarded upstream, never part of the response
            # cache key, never used for budgets or routing. An untagged request reports {}.
            metadata:,
            # Public alias that served (the last attempt); rate_version, biller and
            # provider_key_id follow it.
            model:,
            output_tokens:,
            provider_key_id:,
            rate_version:,
            request_id:,
            # Public alias the caller requested; differs from model only when a group fallback
            # served.
            requested_model:,
            reservation_micro_usd:,
            status:,
            token_group_id:,
            token_key_id:,
            token_user_id:,
            usage_status:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                attempts: Integer,
                biller:
                  Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Biller::TaggedSymbol,
                cache_hit: T::Boolean,
                configuration_version: Integer,
                cost: T.nilable(Float),
                created_at: Time,
                end_user_id: T.nilable(String),
                input_tokens: T.nilable(Integer),
                metadata:
                  T::Hash[
                    Symbol,
                    Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Metadata::Variants
                  ],
                model: String,
                output_tokens: T.nilable(Integer),
                provider_key_id: T.nilable(String),
                rate_version: String,
                request_id: String,
                requested_model: String,
                reservation_micro_usd: Integer,
                status:
                  Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Status::TaggedSymbol,
                token_group_id: String,
                token_key_id: String,
                token_user_id: T.nilable(String),
                usage_status:
                  Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::UsageStatus::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Biller
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Biller
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TELNYX =
              T.let(
                :telnyx,
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Biller::TaggedSymbol
              )
            PROVIDER =
              T.let(
                :provider,
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Biller::TaggedSymbol
              )
            NONE =
              T.let(
                :none,
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Biller::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Biller::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Metadata
            extend Telnyx::Internal::Type::Union

            Variants = T.type_alias { T.any(String, Integer, T::Boolean) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Metadata::Variants
                ]
              )
            end
            def self.variants
            end
          end

          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SUCCEEDED =
              T.let(
                :succeeded,
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Status::TaggedSymbol
              )
            PARTIAL =
              T.let(
                :partial,
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Status::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :unknown,
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module UsageStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::UsageStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            KNOWN =
              T.let(
                :known,
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::UsageStatus::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :unknown,
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::UsageStatus::TaggedSymbol
              )
            RECONCILED =
              T.let(
                :reconciled,
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::UsageStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data::UsageStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Meta < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Meta,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :has_more

          sig { returns(Integer) }
          attr_accessor :page_number

          sig { returns(Integer) }
          attr_accessor :page_size

          sig { returns(String) }
          attr_accessor :snapshot

          sig do
            params(
              has_more: T::Boolean,
              page_number: Integer,
              page_size: Integer,
              snapshot: String
            ).returns(T.attached_class)
          end
          def self.new(has_more:, page_number:, page_size:, snapshot:)
          end

          sig do
            override.returns(
              {
                has_more: T::Boolean,
                page_number: Integer,
                page_size: Integer,
                snapshot: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
