# typed: strong

module Telnyx
  module Models
    class UserTagListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::UserTagListResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::Models::UserTagListResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::UserTagListResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(data: Telnyx::Models::UserTagListResponse::Data::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::Models::UserTagListResponse::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::UserTagListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # A list of your tags on the given resource type. NOTE: The casing of the tags
        # returned will not necessarily match the casing of the tags when they were added
        # to a resource. This is because the tags will have the casing of the first time
        # they were used within the Telnyx system regardless of source.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :number_tags

        sig { params(number_tags: T::Array[String]).void }
        attr_writer :number_tags

        # A list of your tags on the given resource type. NOTE: The casing of the tags
        # returned will not necessarily match the casing of the tags when they were added
        # to a resource. This is because the tags will have the casing of the first time
        # they were used within the Telnyx system regardless of source.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :outbound_profile_tags

        sig { params(outbound_profile_tags: T::Array[String]).void }
        attr_writer :outbound_profile_tags

        sig do
          params(
            number_tags: T::Array[String],
            outbound_profile_tags: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of your tags on the given resource type. NOTE: The casing of the tags
          # returned will not necessarily match the casing of the tags when they were added
          # to a resource. This is because the tags will have the casing of the first time
          # they were used within the Telnyx system regardless of source.
          number_tags: nil,
          # A list of your tags on the given resource type. NOTE: The casing of the tags
          # returned will not necessarily match the casing of the tags when they were added
          # to a resource. This is because the tags will have the casing of the first time
          # they were used within the Telnyx system regardless of source.
          outbound_profile_tags: nil
        )
        end

        sig do
          override.returns(
            {
              number_tags: T::Array[String],
              outbound_profile_tags: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
