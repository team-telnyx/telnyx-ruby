# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::FineTuning::JobsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.fine_tuning.jobs.create(model: "model", training_file: "training_file")

    assert_pattern do
      response => Telnyx::AI::FineTuning::FineTuningJob
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Integer,
        finished_at: Integer | nil,
        hyperparameters: Telnyx::AI::FineTuning::FineTuningJob::Hyperparameters,
        model: String,
        organization_id: String,
        status: Telnyx::AI::FineTuning::FineTuningJob::Status,
        trained_tokens: Integer | nil,
        training_file: String
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.fine_tuning.jobs.retrieve("job_id")

    assert_pattern do
      response => Telnyx::AI::FineTuning::FineTuningJob
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Integer,
        finished_at: Integer | nil,
        hyperparameters: Telnyx::AI::FineTuning::FineTuningJob::Hyperparameters,
        model: String,
        organization_id: String,
        status: Telnyx::AI::FineTuning::FineTuningJob::Status,
        trained_tokens: Integer | nil,
        training_file: String
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.fine_tuning.jobs.list

    assert_pattern do
      response => Telnyx::Models::AI::FineTuning::JobListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::FineTuning::FineTuningJob])
      }
    end
  end

  def test_cancel
    skip("Mock server tests are disabled")

    response = @telnyx.ai.fine_tuning.jobs.cancel("job_id")

    assert_pattern do
      response => Telnyx::AI::FineTuning::FineTuningJob
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Integer,
        finished_at: Integer | nil,
        hyperparameters: Telnyx::AI::FineTuning::FineTuningJob::Hyperparameters,
        model: String,
        organization_id: String,
        status: Telnyx::AI::FineTuning::FineTuningJob::Status,
        trained_tokens: Integer | nil,
        training_file: String
      }
    end
  end
end
