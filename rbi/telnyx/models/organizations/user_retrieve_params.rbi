# typed: strong

module Telnyx
  module Models
    module Organizations
      class UserRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Organizations::UserRetrieveParams,
              Telnyx::Internal::AnyHash
            )
          end

        # When set to true, includes the groups array for each user in the response. The
        # groups array contains objects with id and name for each group the user belongs
        # to.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_groups

        sig { params(include_groups: T::Boolean).void }
        attr_writer :include_groups

        sig do
          params(
            include_groups: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # When set to true, includes the groups array for each user in the response. The
          # groups array contains objects with id and name for each group the user belongs
          # to.
          include_groups: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              include_groups: T::Boolean,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
