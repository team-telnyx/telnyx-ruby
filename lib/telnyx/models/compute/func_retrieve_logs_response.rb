# frozen_string_literal: true

module Telnyx
  module Models
    module Compute
      # @see Telnyx::Resources::Compute::Funcs#retrieve_logs
      module FuncRetrieveLogsResponse
        extend Telnyx::Internal::Type::Union

        variant -> { Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse }

        variant -> { Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse }

        class FuncRuntimeLogsResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data>, nil]
          optional :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data] }

          # @!attribute meta
          #
          #   @return [Telnyx::Models::Compute::LogsMeta, nil]
          optional :meta, -> { Telnyx::Compute::LogsMeta }

          # @!method initialize(data: nil, meta: nil)
          #   @param data [Array<Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data>]
          #   @param meta [Telnyx::Models::Compute::LogsMeta]

          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute level
            #
            #   @return [String, nil]
            optional :level, String

            # @!attribute message
            #
            #   @return [String, nil]
            optional :message, String

            # @!attribute record_type
            #
            #   @return [Symbol, Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data::RecordType, nil]
            optional :record_type,
                     enum: -> { Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data::RecordType }

            # @!attribute timestamp
            #
            #   @return [Time, nil]
            optional :timestamp, Time

            # @!method initialize(level: nil, message: nil, record_type: nil, timestamp: nil)
            #   @param level [String]
            #   @param message [String]
            #   @param record_type [Symbol, Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data::RecordType]
            #   @param timestamp [Time]

            # @see Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data#record_type
            module RecordType
              extend Telnyx::Internal::Type::Enum

              COMPUTE_FUNC_RUNTIME_LOG = :compute_func_runtime_log

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class FuncInvocationLogsResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data>, nil]
          optional :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data] }

          # @!attribute meta
          #
          #   @return [Telnyx::Models::Compute::LogsMeta, nil]
          optional :meta, -> { Telnyx::Compute::LogsMeta }

          # @!method initialize(data: nil, meta: nil)
          #   @param data [Array<Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data>]
          #   @param meta [Telnyx::Models::Compute::LogsMeta]

          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute duration_ms
            #
            #   @return [Float, nil]
            optional :duration_ms, Float

            # @!attribute method_
            #
            #   @return [String, nil]
            optional :method_, String, api_name: :method

            # @!attribute path
            #
            #   @return [String, nil]
            optional :path, String

            # @!attribute record_type
            #
            #   @return [Symbol, Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data::RecordType, nil]
            optional :record_type,
                     enum: -> { Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data::RecordType }

            # @!attribute region
            #
            #   @return [String, nil]
            optional :region, String

            # @!attribute request_size_bytes
            #
            #   @return [Integer, nil]
            optional :request_size_bytes, Integer

            # @!attribute response_size_bytes
            #
            #   @return [Integer, nil]
            optional :response_size_bytes, Integer

            # @!attribute status_code
            #
            #   @return [Integer, nil]
            optional :status_code, Integer

            # @!attribute timestamp
            #
            #   @return [Time, nil]
            optional :timestamp, Time

            # @!method initialize(duration_ms: nil, method_: nil, path: nil, record_type: nil, region: nil, request_size_bytes: nil, response_size_bytes: nil, status_code: nil, timestamp: nil)
            #   @param duration_ms [Float]
            #   @param method_ [String]
            #   @param path [String]
            #   @param record_type [Symbol, Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data::RecordType]
            #   @param region [String]
            #   @param request_size_bytes [Integer]
            #   @param response_size_bytes [Integer]
            #   @param status_code [Integer]
            #   @param timestamp [Time]

            # @see Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data#record_type
            module RecordType
              extend Telnyx::Internal::Type::Enum

              COMPUTE_FUNC_INVOCATION_LOG = :compute_func_invocation_log

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse, Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse)]
      end
    end
  end
end
