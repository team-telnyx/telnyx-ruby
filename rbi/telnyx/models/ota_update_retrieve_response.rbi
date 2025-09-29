# typed: strong

module Telnyx
  module Models
    class OtaUpdateRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::OtaUpdateRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # This object represents an Over the Air (OTA) update request. It allows tracking
      # the current status of a operation that apply settings in a particular SIM card.
      # <br/><br/>
      sig do
        returns(T.nilable(Telnyx::Models::OtaUpdateRetrieveResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::OtaUpdateRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::OtaUpdateRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # This object represents an Over the Air (OTA) update request. It allows tracking
        # the current status of a operation that apply settings in a particular SIM card.
        # <br/><br/>
        data: nil
      )
      end

      sig do
        override.returns(
          { data: Telnyx::Models::OtaUpdateRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::OtaUpdateRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # A JSON object representation of the operation. The information present here will
        # relate directly to the source of the OTA request.
        sig do
          returns(
            T.nilable(Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings)
          )
        end
        attr_reader :settings

        sig do
          params(
            settings:
              Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings::OrHash
          ).void
        end
        attr_writer :settings

        # The identification UUID of the related SIM card resource.
        sig { returns(T.nilable(String)) }
        attr_reader :sim_card_id

        sig { params(sim_card_id: String).void }
        attr_writer :sim_card_id

        sig do
          returns(
            T.nilable(
              Telnyx::Models::OtaUpdateRetrieveResponse::Data::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::OtaUpdateRetrieveResponse::Data::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Represents the type of the operation requested. This will relate directly to the
        # source of the request.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::OtaUpdateRetrieveResponse::Data::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Telnyx::Models::OtaUpdateRetrieveResponse::Data::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date-time indicating when the resource was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # ISO 8601 formatted date-time indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        # This object represents an Over the Air (OTA) update request. It allows tracking
        # the current status of a operation that apply settings in a particular SIM card.
        # <br/><br/>
        sig do
          params(
            id: String,
            created_at: String,
            record_type: String,
            settings:
              Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings::OrHash,
            sim_card_id: String,
            status:
              Telnyx::Models::OtaUpdateRetrieveResponse::Data::Status::OrSymbol,
            type:
              Telnyx::Models::OtaUpdateRetrieveResponse::Data::Type::OrSymbol,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # ISO 8601 formatted date-time indicating when the resource was created.
          created_at: nil,
          record_type: nil,
          # A JSON object representation of the operation. The information present here will
          # relate directly to the source of the OTA request.
          settings: nil,
          # The identification UUID of the related SIM card resource.
          sim_card_id: nil,
          status: nil,
          # Represents the type of the operation requested. This will relate directly to the
          # source of the request.
          type: nil,
          # ISO 8601 formatted date-time indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              record_type: String,
              settings:
                Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings,
              sim_card_id: String,
              status:
                Telnyx::Models::OtaUpdateRetrieveResponse::Data::Status::TaggedSymbol,
              type:
                Telnyx::Models::OtaUpdateRetrieveResponse::Data::Type::TaggedSymbol,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        class Settings < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings,
                Telnyx::Internal::AnyHash
              )
            end

          # A list of mobile network operators and the priority that should be applied when
          # the SIM is connecting to the network.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings::MobileNetworkOperatorsPreference
                ]
              )
            )
          end
          attr_reader :mobile_network_operators_preferences

          sig do
            params(
              mobile_network_operators_preferences:
                T::Array[
                  Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings::MobileNetworkOperatorsPreference::OrHash
                ]
            ).void
          end
          attr_writer :mobile_network_operators_preferences

          # A JSON object representation of the operation. The information present here will
          # relate directly to the source of the OTA request.
          sig do
            params(
              mobile_network_operators_preferences:
                T::Array[
                  Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings::MobileNetworkOperatorsPreference::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # A list of mobile network operators and the priority that should be applied when
            # the SIM is connecting to the network.
            mobile_network_operators_preferences: nil
          )
          end

          sig do
            override.returns(
              {
                mobile_network_operators_preferences:
                  T::Array[
                    Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings::MobileNetworkOperatorsPreference
                  ]
              }
            )
          end
          def to_hash
          end

          class MobileNetworkOperatorsPreference < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings::MobileNetworkOperatorsPreference,
                  Telnyx::Internal::AnyHash
                )
              end

            # The mobile network operator resource identification UUID.
            sig { returns(T.nilable(String)) }
            attr_reader :mobile_network_operator_id

            sig { params(mobile_network_operator_id: String).void }
            attr_writer :mobile_network_operator_id

            # The mobile network operator resource name.
            sig { returns(T.nilable(String)) }
            attr_reader :mobile_network_operator_name

            sig { params(mobile_network_operator_name: String).void }
            attr_writer :mobile_network_operator_name

            # It determines what is the priority of a specific network operator that should be
            # assumed by a SIM card when connecting to a network. The highest priority is 0,
            # the second highest is 1 and so on.
            sig { returns(T.nilable(Integer)) }
            attr_reader :priority

            sig { params(priority: Integer).void }
            attr_writer :priority

            sig do
              params(
                mobile_network_operator_id: String,
                mobile_network_operator_name: String,
                priority: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # The mobile network operator resource identification UUID.
              mobile_network_operator_id: nil,
              # The mobile network operator resource name.
              mobile_network_operator_name: nil,
              # It determines what is the priority of a specific network operator that should be
              # assumed by a SIM card when connecting to a network. The highest priority is 0,
              # the second highest is 1 and so on.
              priority: nil
            )
            end

            sig do
              override.returns(
                {
                  mobile_network_operator_id: String,
                  mobile_network_operator_name: String,
                  priority: Integer
                }
              )
            end
            def to_hash
            end
          end
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::OtaUpdateRetrieveResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_PROGRESS =
            T.let(
              :"in-progress",
              Telnyx::Models::OtaUpdateRetrieveResponse::Data::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Models::OtaUpdateRetrieveResponse::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::Models::OtaUpdateRetrieveResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::OtaUpdateRetrieveResponse::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Represents the type of the operation requested. This will relate directly to the
        # source of the request.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::OtaUpdateRetrieveResponse::Data::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SIM_CARD_NETWORK_PREFERENCES =
            T.let(
              :sim_card_network_preferences,
              Telnyx::Models::OtaUpdateRetrieveResponse::Data::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::OtaUpdateRetrieveResponse::Data::Type::TaggedSymbol
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
