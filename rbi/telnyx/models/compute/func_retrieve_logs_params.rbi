# typed: strong

module Telnyx
  module Models
    module Compute
      class FuncRetrieveLogsParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Compute::FuncRetrieveLogsParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Return records at or before this RFC 3339 timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :end_time

        sig { params(end_time: Time).void }
        attr_writer :end_time

        # Maximum records to return.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Return records at or after this RFC 3339 timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :start_time

        sig { params(start_time: Time).void }
        attr_writer :start_time

        # Log stream to return.
        sig do
          returns(
            T.nilable(Telnyx::Compute::FuncRetrieveLogsParams::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: Telnyx::Compute::FuncRetrieveLogsParams::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            id: String,
            end_time: Time,
            limit: Integer,
            start_time: Time,
            type: Telnyx::Compute::FuncRetrieveLogsParams::Type::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Return records at or before this RFC 3339 timestamp.
          end_time: nil,
          # Maximum records to return.
          limit: nil,
          # Return records at or after this RFC 3339 timestamp.
          start_time: nil,
          # Log stream to return.
          type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              end_time: Time,
              limit: Integer,
              start_time: Time,
              type: Telnyx::Compute::FuncRetrieveLogsParams::Type::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Log stream to return.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Compute::FuncRetrieveLogsParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RUNTIME =
            T.let(
              :runtime,
              Telnyx::Compute::FuncRetrieveLogsParams::Type::TaggedSymbol
            )
          INVOCATIONS =
            T.let(
              :invocations,
              Telnyx::Compute::FuncRetrieveLogsParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Compute::FuncRetrieveLogsParams::Type::TaggedSymbol
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
