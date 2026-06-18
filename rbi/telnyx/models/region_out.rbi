# typed: strong

module Telnyx
  module Models
    class RegionOut < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::RegionOut, Telnyx::Internal::AnyHash) }

      sig { returns(T.nilable(Telnyx::RegionOut::Region)) }
      attr_reader :region

      sig { params(region: Telnyx::RegionOut::Region::OrHash).void }
      attr_writer :region

      # The region interface is deployed to.
      sig { returns(T.nilable(String)) }
      attr_reader :region_code

      sig { params(region_code: String).void }
      attr_writer :region_code

      sig do
        params(
          region: Telnyx::RegionOut::Region::OrHash,
          region_code: String
        ).returns(T.attached_class)
      end
      def self.new(
        region: nil,
        # The region interface is deployed to.
        region_code: nil
      )
      end

      sig do
        override.returns(
          { region: Telnyx::RegionOut::Region, region_code: String }
        )
      end
      def to_hash
      end

      class Region < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::RegionOut::Region, Telnyx::Internal::AnyHash)
          end

        # Region code of the interface.
        sig { returns(T.nilable(String)) }
        attr_reader :code

        sig { params(code: String).void }
        attr_writer :code

        # Region name of the interface.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(code: String, name: String, record_type: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Region code of the interface.
          code: nil,
          # Region name of the interface.
          name: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns({ code: String, name: String, record_type: String })
        end
        def to_hash
        end
      end
    end
  end
end
