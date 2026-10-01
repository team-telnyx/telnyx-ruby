# typed: strong

module Telnyx
  module Models
    class DirDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::DirDeleteResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::Models::DirDeleteResponse::Data) }
      attr_reader :data

      sig { params(data: Telnyx::Models::DirDeleteResponse::Data::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::Models::DirDeleteResponse::Data::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig do
        override.returns({ data: Telnyx::Models::DirDeleteResponse::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DirDeleteResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Id of the DIR whose deletion was requested.
        sig { returns(String) }
        attr_accessor :id

        # Always `delete_requested`: the DIR has been queued for removal, not yet removed.
        sig do
          returns(Telnyx::Models::DirDeleteResponse::Data::Status::TaggedSymbol)
        end
        attr_accessor :status

        sig do
          params(
            id: String,
            status: Telnyx::Models::DirDeleteResponse::Data::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Id of the DIR whose deletion was requested.
          id:,
          # Always `delete_requested`: the DIR has been queued for removal, not yet removed.
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              status:
                Telnyx::Models::DirDeleteResponse::Data::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Always `delete_requested`: the DIR has been queued for removal, not yet removed.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Models::DirDeleteResponse::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DELETE_REQUESTED =
            T.let(
              :delete_requested,
              Telnyx::Models::DirDeleteResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::DirDeleteResponse::Data::Status::TaggedSymbol
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
