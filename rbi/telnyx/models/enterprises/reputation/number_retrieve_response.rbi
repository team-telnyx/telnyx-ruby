# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class NumberRetrieveResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns(
              {
                data:
                  Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            # Unique identifier
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # When the number was associated
            sig { returns(T.nilable(Time)) }
            attr_reader :created_at

            sig { params(created_at: Time).void }
            attr_writer :created_at

            # ID of the associated enterprise
            sig { returns(T.nilable(String)) }
            attr_reader :enterprise_id

            sig { params(enterprise_id: String).void }
            attr_writer :enterprise_id

            # Phone number in E.164 format
            sig { returns(T.nilable(String)) }
            attr_reader :phone_number

            sig { params(phone_number: String).void }
            attr_writer :phone_number

            # Reputation metrics (null if not yet fetched)
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::Variants
                )
              )
            end
            attr_reader :reputation_data

            sig do
              params(
                reputation_data:
                  T.nilable(
                    T.any(
                      Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::ReputationData::OrHash,
                      T.anything
                    )
                  )
              ).void
            end
            attr_writer :reputation_data

            # When the record was last updated
            sig { returns(T.nilable(Time)) }
            attr_reader :updated_at

            sig { params(updated_at: Time).void }
            attr_writer :updated_at

            sig do
              params(
                id: String,
                created_at: Time,
                enterprise_id: String,
                phone_number: String,
                reputation_data:
                  T.nilable(
                    T.any(
                      Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::ReputationData::OrHash,
                      T.anything
                    )
                  ),
                updated_at: Time
              ).returns(T.attached_class)
            end
            def self.new(
              # Unique identifier
              id: nil,
              # When the number was associated
              created_at: nil,
              # ID of the associated enterprise
              enterprise_id: nil,
              # Phone number in E.164 format
              phone_number: nil,
              # Reputation metrics (null if not yet fetched)
              reputation_data: nil,
              # When the record was last updated
              updated_at: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  created_at: Time,
                  enterprise_id: String,
                  phone_number: String,
                  reputation_data:
                    T.nilable(
                      Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::Variants
                    ),
                  updated_at: Time
                }
              )
            end
            def to_hash
            end

            # Reputation metrics (null if not yet fetched)
            module ReputationData
              extend Telnyx::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.nilable(
                    T.any(
                      Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::ReputationData,
                      T.anything
                    )
                  )
                end

              class ReputationData < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::ReputationData,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Connection quality metric (0–100)
                sig { returns(T.nilable(Integer)) }
                attr_accessor :connection_score

                # Engagement metric (0–100). Higher = more positive engagement
                sig { returns(T.nilable(Integer)) }
                attr_accessor :engagement_score

                # Timestamp of the last reputation data refresh
                sig { returns(T.nilable(Time)) }
                attr_accessor :last_refreshed_at

                # Maturity metric (0–100). Higher = more established number
                sig { returns(T.nilable(Integer)) }
                attr_accessor :maturity_score

                # Sentiment metric (0–100). Higher = more positive sentiment
                sig { returns(T.nilable(Integer)) }
                attr_accessor :sentiment_score

                # Spam category classification (e.g., Telemarketing, Debt Collector)
                sig { returns(T.nilable(String)) }
                attr_accessor :spam_category

                # Overall spam risk level
                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::ReputationData::SpamRisk::TaggedSymbol
                    )
                  )
                end
                attr_accessor :spam_risk

                # Reputation metrics
                sig do
                  params(
                    connection_score: T.nilable(Integer),
                    engagement_score: T.nilable(Integer),
                    last_refreshed_at: T.nilable(Time),
                    maturity_score: T.nilable(Integer),
                    sentiment_score: T.nilable(Integer),
                    spam_category: T.nilable(String),
                    spam_risk:
                      T.nilable(
                        Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::ReputationData::SpamRisk::OrSymbol
                      )
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Connection quality metric (0–100)
                  connection_score: nil,
                  # Engagement metric (0–100). Higher = more positive engagement
                  engagement_score: nil,
                  # Timestamp of the last reputation data refresh
                  last_refreshed_at: nil,
                  # Maturity metric (0–100). Higher = more established number
                  maturity_score: nil,
                  # Sentiment metric (0–100). Higher = more positive sentiment
                  sentiment_score: nil,
                  # Spam category classification (e.g., Telemarketing, Debt Collector)
                  spam_category: nil,
                  # Overall spam risk level
                  spam_risk: nil
                )
                end

                sig do
                  override.returns(
                    {
                      connection_score: T.nilable(Integer),
                      engagement_score: T.nilable(Integer),
                      last_refreshed_at: T.nilable(Time),
                      maturity_score: T.nilable(Integer),
                      sentiment_score: T.nilable(Integer),
                      spam_category: T.nilable(String),
                      spam_risk:
                        T.nilable(
                          Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::ReputationData::SpamRisk::TaggedSymbol
                        )
                    }
                  )
                end
                def to_hash
                end

                # Overall spam risk level
                module SpamRisk
                  extend Telnyx::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::ReputationData::SpamRisk
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  LOW =
                    T.let(
                      :low,
                      Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::ReputationData::SpamRisk::TaggedSymbol
                    )
                  MEDIUM =
                    T.let(
                      :medium,
                      Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::ReputationData::SpamRisk::TaggedSymbol
                    )
                  HIGH =
                    T.let(
                      :high,
                      Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::ReputationData::SpamRisk::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::ReputationData::SpamRisk::TaggedSymbol
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
                    Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data::ReputationData::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end
        end
      end
    end
  end
end
