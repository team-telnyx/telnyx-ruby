# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class NumberRefreshResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            # Per-number outcome of the refresh.
            sig do
              returns(
                T::Array[
                  Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data::Result
                ]
              )
            end
            attr_accessor :results

            sig { returns(Integer) }
            attr_accessor :total_failed

            sig { returns(Integer) }
            attr_accessor :total_requested

            sig { returns(Integer) }
            attr_accessor :total_successful

            sig do
              params(
                results:
                  T::Array[
                    Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data::Result::OrHash
                  ],
                total_failed: Integer,
                total_requested: Integer,
                total_successful: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Per-number outcome of the refresh.
              results:,
              total_failed:,
              total_requested:,
              total_successful:
            )
            end

            sig do
              override.returns(
                {
                  results:
                    T::Array[
                      Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data::Result
                    ],
                  total_failed: Integer,
                  total_requested: Integer,
                  total_successful: Integer
                }
              )
            end
            def to_hash
            end

            class Result < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data::Result,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :phone_number

              sig { returns(T::Boolean) }
              attr_accessor :success

              # `null` when `success` is `true`; carries an error message otherwise.
              sig { returns(T.nilable(String)) }
              attr_accessor :error

              sig do
                params(
                  phone_number: String,
                  success: T::Boolean,
                  error: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                phone_number:,
                success:,
                # `null` when `success` is `true`; carries an error message otherwise.
                error: nil
              )
              end

              sig do
                override.returns(
                  {
                    phone_number: String,
                    success: T::Boolean,
                    error: T.nilable(String)
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
  end
end
