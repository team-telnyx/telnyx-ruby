# typed: strong

module Telnyx
  module Models
    class OtaUpdateListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::OtaUpdateListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter for OTA updates (deepObject style). Originally:
      # filter[status], filter[sim_card_id], filter[type]
      sig { returns(T.nilable(Telnyx::OtaUpdateListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::OtaUpdateListParams::Filter::OrHash).void }
      attr_writer :filter

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter: Telnyx::OtaUpdateListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter for OTA updates (deepObject style). Originally:
        # filter[status], filter[sim_card_id], filter[type]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::OtaUpdateListParams::Filter,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::OtaUpdateListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # The SIM card identification UUID.
        sig { returns(T.nilable(String)) }
        attr_reader :sim_card_id

        sig { params(sim_card_id: String).void }
        attr_writer :sim_card_id

        # Filter by a specific status of the resource's lifecycle.
        sig do
          returns(
            T.nilable(Telnyx::OtaUpdateListParams::Filter::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::OtaUpdateListParams::Filter::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Filter by type.
        sig do
          returns(
            T.nilable(Telnyx::OtaUpdateListParams::Filter::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(type: Telnyx::OtaUpdateListParams::Filter::Type::OrSymbol).void
        end
        attr_writer :type

        # Consolidated filter parameter for OTA updates (deepObject style). Originally:
        # filter[status], filter[sim_card_id], filter[type]
        sig do
          params(
            sim_card_id: String,
            status: Telnyx::OtaUpdateListParams::Filter::Status::OrSymbol,
            type: Telnyx::OtaUpdateListParams::Filter::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The SIM card identification UUID.
          sim_card_id: nil,
          # Filter by a specific status of the resource's lifecycle.
          status: nil,
          # Filter by type.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              sim_card_id: String,
              status: Telnyx::OtaUpdateListParams::Filter::Status::OrSymbol,
              type: Telnyx::OtaUpdateListParams::Filter::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Filter by a specific status of the resource's lifecycle.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::OtaUpdateListParams::Filter::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_PROGRESS =
            T.let(
              :"in-progress",
              Telnyx::OtaUpdateListParams::Filter::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::OtaUpdateListParams::Filter::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::OtaUpdateListParams::Filter::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::OtaUpdateListParams::Filter::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filter by type.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::OtaUpdateListParams::Filter::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SIM_CARD_NETWORK_PREFERENCES =
            T.let(
              :sim_card_network_preferences,
              Telnyx::OtaUpdateListParams::Filter::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::OtaUpdateListParams::Filter::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
