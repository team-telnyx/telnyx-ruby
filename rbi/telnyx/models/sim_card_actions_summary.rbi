# typed: strong

module Telnyx
  module Models
    class SimCardActionsSummary < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::SimCardActionsSummary, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Integer)) }
      attr_reader :count

      sig { params(count: Integer).void }
      attr_writer :count

      sig do
        returns(T.nilable(Telnyx::SimCardActionsSummary::Status::TaggedSymbol))
      end
      attr_reader :status

      sig do
        params(status: Telnyx::SimCardActionsSummary::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          count: Integer,
          status: Telnyx::SimCardActionsSummary::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(count: nil, status: nil)
      end

      sig do
        override.returns(
          {
            count: Integer,
            status: Telnyx::SimCardActionsSummary::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::SimCardActionsSummary::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IN_PROGRESS =
          T.let(
            :"in-progress",
            Telnyx::SimCardActionsSummary::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(:completed, Telnyx::SimCardActionsSummary::Status::TaggedSymbol)
        FAILED =
          T.let(:failed, Telnyx::SimCardActionsSummary::Status::TaggedSymbol)
        INTERRUPTED =
          T.let(
            :interrupted,
            Telnyx::SimCardActionsSummary::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::SimCardActionsSummary::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
