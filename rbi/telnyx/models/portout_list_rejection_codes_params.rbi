# typed: strong

module Telnyx
  module Models
    class PortoutListRejectionCodesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PortoutListRejectionCodesParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[code],
      # filter[code][in]
      sig do
        returns(T.nilable(Telnyx::PortoutListRejectionCodesParams::Filter))
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::PortoutListRejectionCodesParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      sig do
        params(
          filter: Telnyx::PortoutListRejectionCodesParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[code],
        # filter[code][in]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::PortoutListRejectionCodesParams::Filter,
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
              Telnyx::PortoutListRejectionCodesParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter rejections of a specific code
        sig do
          returns(
            T.nilable(
              Telnyx::PortoutListRejectionCodesParams::Filter::Code::Variants
            )
          )
        end
        attr_reader :code

        sig do
          params(
            code:
              Telnyx::PortoutListRejectionCodesParams::Filter::Code::Variants
          ).void
        end
        attr_writer :code

        # Consolidated filter parameter (deepObject style). Originally: filter[code],
        # filter[code][in]
        sig do
          params(
            code:
              Telnyx::PortoutListRejectionCodesParams::Filter::Code::Variants
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter rejections of a specific code
          code: nil
        )
        end

        sig do
          override.returns(
            {
              code:
                Telnyx::PortoutListRejectionCodesParams::Filter::Code::Variants
            }
          )
        end
        def to_hash
        end

        # Filter rejections of a specific code
        module Code
          extend Telnyx::Internal::Type::Union

          Variants = T.type_alias { T.any(Integer, T::Array[Integer]) }

          sig do
            override.returns(
              T::Array[
                Telnyx::PortoutListRejectionCodesParams::Filter::Code::Variants
              ]
            )
          end
          def self.variants
          end

          IntegerArray =
            T.let(
              Telnyx::Internal::Type::ArrayOf[Integer],
              Telnyx::Internal::Type::Converter
            )
        end
      end
    end
  end
end
