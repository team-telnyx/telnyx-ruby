# typed: strong

module Telnyx
  module Models
    class GlobalIPLatencyRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::GlobalIPLatencyRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::GlobalIP
            )
          )
        end
        attr_reader :global_ip

        sig do
          params(
            global_ip:
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::GlobalIP::OrHash
          ).void
        end
        attr_writer :global_ip

        sig do
          returns(
            T.nilable(
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::MeanLatency
            )
          )
        end
        attr_reader :mean_latency

        sig do
          params(
            mean_latency:
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::MeanLatency::OrHash
          ).void
        end
        attr_writer :mean_latency

        sig do
          returns(
            T.nilable(
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency
            )
          )
        end
        attr_reader :percentile_latency

        sig do
          params(
            percentile_latency:
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::OrHash
          ).void
        end
        attr_writer :percentile_latency

        sig do
          returns(
            T.nilable(
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::ProberLocation
            )
          )
        end
        attr_reader :prober_location

        sig do
          params(
            prober_location:
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::ProberLocation::OrHash
          ).void
        end
        attr_writer :prober_location

        # The timestamp of the metric.
        sig { returns(T.nilable(Time)) }
        attr_reader :timestamp

        sig { params(timestamp: Time).void }
        attr_writer :timestamp

        sig do
          params(
            global_ip:
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::GlobalIP::OrHash,
            mean_latency:
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::MeanLatency::OrHash,
            percentile_latency:
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::OrHash,
            prober_location:
              Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::ProberLocation::OrHash,
            timestamp: Time
          ).returns(T.attached_class)
        end
        def self.new(
          global_ip: nil,
          mean_latency: nil,
          percentile_latency: nil,
          prober_location: nil,
          # The timestamp of the metric.
          timestamp: nil
        )
        end

        sig do
          override.returns(
            {
              global_ip:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::GlobalIP,
              mean_latency:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::MeanLatency,
              percentile_latency:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency,
              prober_location:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::ProberLocation,
              timestamp: Time
            }
          )
        end
        def to_hash
        end

        class GlobalIP < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::GlobalIP,
                Telnyx::Internal::AnyHash
              )
            end

          # Global IP ID.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The Global IP address.
          sig { returns(T.nilable(String)) }
          attr_reader :ip_address

          sig { params(ip_address: String).void }
          attr_writer :ip_address

          sig do
            params(id: String, ip_address: String).returns(T.attached_class)
          end
          def self.new(
            # Global IP ID.
            id: nil,
            # The Global IP address.
            ip_address: nil
          )
          end

          sig { override.returns({ id: String, ip_address: String }) }
          def to_hash
          end
        end

        class MeanLatency < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::MeanLatency,
                Telnyx::Internal::AnyHash
              )
            end

          # The average latency.
          sig { returns(T.nilable(Float)) }
          attr_reader :amount

          sig { params(amount: Float).void }
          attr_writer :amount

          # The unit of the average latency.
          sig { returns(T.nilable(String)) }
          attr_reader :unit

          sig { params(unit: String).void }
          attr_writer :unit

          sig { params(amount: Float, unit: String).returns(T.attached_class) }
          def self.new(
            # The average latency.
            amount: nil,
            # The unit of the average latency.
            unit: nil
          )
          end

          sig { override.returns({ amount: Float, unit: String }) }
          def to_hash
          end
        end

        class PercentileLatency < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P0
              )
            )
          end
          attr_reader :p_0

          sig do
            params(
              p_0:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P0::OrHash
            ).void
          end
          attr_writer :p_0

          sig do
            returns(
              T.nilable(
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P100
              )
            )
          end
          attr_reader :p_100

          sig do
            params(
              p_100:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P100::OrHash
            ).void
          end
          attr_writer :p_100

          sig do
            returns(
              T.nilable(
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P25
              )
            )
          end
          attr_reader :p_25

          sig do
            params(
              p_25:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P25::OrHash
            ).void
          end
          attr_writer :p_25

          sig do
            returns(
              T.nilable(
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P50
              )
            )
          end
          attr_reader :p_50

          sig do
            params(
              p_50:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P50::OrHash
            ).void
          end
          attr_writer :p_50

          sig do
            returns(
              T.nilable(
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P75
              )
            )
          end
          attr_reader :p_75

          sig do
            params(
              p_75:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P75::OrHash
            ).void
          end
          attr_writer :p_75

          sig do
            returns(
              T.nilable(
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P90
              )
            )
          end
          attr_reader :p_90

          sig do
            params(
              p_90:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P90::OrHash
            ).void
          end
          attr_writer :p_90

          sig do
            returns(
              T.nilable(
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P99
              )
            )
          end
          attr_reader :p_99

          sig do
            params(
              p_99:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P99::OrHash
            ).void
          end
          attr_writer :p_99

          sig do
            params(
              p_0:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P0::OrHash,
              p_100:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P100::OrHash,
              p_25:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P25::OrHash,
              p_50:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P50::OrHash,
              p_75:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P75::OrHash,
              p_90:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P90::OrHash,
              p_99:
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P99::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            p_0: nil,
            p_100: nil,
            p_25: nil,
            p_50: nil,
            p_75: nil,
            p_90: nil,
            p_99: nil
          )
          end

          sig do
            override.returns(
              {
                p_0:
                  Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P0,
                p_100:
                  Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P100,
                p_25:
                  Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P25,
                p_50:
                  Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P50,
                p_75:
                  Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P75,
                p_90:
                  Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P90,
                p_99:
                  Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P99
              }
            )
          end
          def to_hash
          end

          class P0 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P0,
                  Telnyx::Internal::AnyHash
                )
              end

            # The minimum latency.
            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            # The unit of the minimum latency.
            sig { returns(T.nilable(String)) }
            attr_reader :unit

            sig { params(unit: String).void }
            attr_writer :unit

            sig do
              params(amount: Float, unit: String).returns(T.attached_class)
            end
            def self.new(
              # The minimum latency.
              amount: nil,
              # The unit of the minimum latency.
              unit: nil
            )
            end

            sig { override.returns({ amount: Float, unit: String }) }
            def to_hash
            end
          end

          class P100 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P100,
                  Telnyx::Internal::AnyHash
                )
              end

            # The maximum latency.
            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            # The unit of the maximum latency.
            sig { returns(T.nilable(String)) }
            attr_reader :unit

            sig { params(unit: String).void }
            attr_writer :unit

            sig do
              params(amount: Float, unit: String).returns(T.attached_class)
            end
            def self.new(
              # The maximum latency.
              amount: nil,
              # The unit of the maximum latency.
              unit: nil
            )
            end

            sig { override.returns({ amount: Float, unit: String }) }
            def to_hash
            end
          end

          class P25 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P25,
                  Telnyx::Internal::AnyHash
                )
              end

            # The 25th percentile latency.
            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            # The unit of the 25th percentile latency.
            sig { returns(T.nilable(String)) }
            attr_reader :unit

            sig { params(unit: String).void }
            attr_writer :unit

            sig do
              params(amount: Float, unit: String).returns(T.attached_class)
            end
            def self.new(
              # The 25th percentile latency.
              amount: nil,
              # The unit of the 25th percentile latency.
              unit: nil
            )
            end

            sig { override.returns({ amount: Float, unit: String }) }
            def to_hash
            end
          end

          class P50 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P50,
                  Telnyx::Internal::AnyHash
                )
              end

            # The 50th percentile latency.
            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            # The unit of the 50th percentile latency.
            sig { returns(T.nilable(String)) }
            attr_reader :unit

            sig { params(unit: String).void }
            attr_writer :unit

            sig do
              params(amount: Float, unit: String).returns(T.attached_class)
            end
            def self.new(
              # The 50th percentile latency.
              amount: nil,
              # The unit of the 50th percentile latency.
              unit: nil
            )
            end

            sig { override.returns({ amount: Float, unit: String }) }
            def to_hash
            end
          end

          class P75 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P75,
                  Telnyx::Internal::AnyHash
                )
              end

            # The 75th percentile latency.
            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            # The unit of the 75th percentile latency.
            sig { returns(T.nilable(String)) }
            attr_reader :unit

            sig { params(unit: String).void }
            attr_writer :unit

            sig do
              params(amount: Float, unit: String).returns(T.attached_class)
            end
            def self.new(
              # The 75th percentile latency.
              amount: nil,
              # The unit of the 75th percentile latency.
              unit: nil
            )
            end

            sig { override.returns({ amount: Float, unit: String }) }
            def to_hash
            end
          end

          class P90 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P90,
                  Telnyx::Internal::AnyHash
                )
              end

            # The 90th percentile latency.
            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            # The unit of the 90th percentile latency.
            sig { returns(T.nilable(String)) }
            attr_reader :unit

            sig { params(unit: String).void }
            attr_writer :unit

            sig do
              params(amount: Float, unit: String).returns(T.attached_class)
            end
            def self.new(
              # The 90th percentile latency.
              amount: nil,
              # The unit of the 90th percentile latency.
              unit: nil
            )
            end

            sig { override.returns({ amount: Float, unit: String }) }
            def to_hash
            end
          end

          class P99 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P99,
                  Telnyx::Internal::AnyHash
                )
              end

            # The 99th percentile latency.
            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            # The unit of the 99th percentile latency.
            sig { returns(T.nilable(String)) }
            attr_reader :unit

            sig { params(unit: String).void }
            attr_writer :unit

            sig do
              params(amount: Float, unit: String).returns(T.attached_class)
            end
            def self.new(
              # The 99th percentile latency.
              amount: nil,
              # The unit of the 99th percentile latency.
              unit: nil
            )
            end

            sig { override.returns({ amount: Float, unit: String }) }
            def to_hash
            end
          end
        end

        class ProberLocation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::ProberLocation,
                Telnyx::Internal::AnyHash
              )
            end

          # Location ID.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Latitude.
          sig { returns(T.nilable(Float)) }
          attr_reader :lat

          sig { params(lat: Float).void }
          attr_writer :lat

          # Longitude.
          sig { returns(T.nilable(Float)) }
          attr_reader :lon

          sig { params(lon: Float).void }
          attr_writer :lon

          # Location name.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(id: String, lat: Float, lon: Float, name: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Location ID.
            id: nil,
            # Latitude.
            lat: nil,
            # Longitude.
            lon: nil,
            # Location name.
            name: nil
          )
          end

          sig do
            override.returns(
              { id: String, lat: Float, lon: Float, name: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
