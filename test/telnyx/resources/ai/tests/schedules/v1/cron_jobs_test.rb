# frozen_string_literal: true

require_relative "../../../../../test_helper"

class Telnyx::Test::Resources::AI::Tests::Schedules::V1::CronJobsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.schedules.v1.cron_jobs.retrieve(0)

    assert_pattern do
      response => Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob
    end

    assert_pattern do
      response => {
        id: Integer,
        agent: Integer,
        created_at: Time,
        crontab_expression: String,
        is_active: Telnyx::Internal::Type::Boolean,
        name: String,
        updated_at: Time,
        execution_mode: String | nil,
        frequency: Integer | nil,
        notify_on: Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn | nil,
        personalities: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        personality: Integer | nil,
        run_as_text: Telnyx::Internal::Type::Boolean | nil,
        scenario_ids: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        scenarios_data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::ScenariosData]) | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        timezone: String | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.schedules.v1.cron_jobs.update(0)

    assert_pattern do
      response => Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob
    end

    assert_pattern do
      response => {
        id: Integer,
        agent: Integer,
        created_at: Time,
        crontab_expression: String,
        is_active: Telnyx::Internal::Type::Boolean,
        name: String,
        updated_at: Time,
        execution_mode: String | nil,
        frequency: Integer | nil,
        notify_on: Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn | nil,
        personalities: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        personality: Integer | nil,
        run_as_text: Telnyx::Internal::Type::Boolean | nil,
        scenario_ids: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        scenarios_data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::ScenariosData]) | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        timezone: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.schedules.v1.cron_jobs.delete(0)

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_cron_jobs_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.schedules.v1.cron_jobs.cron_jobs(crontab_expression: "0 3 * * *")

    assert_pattern do
      response => Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob
    end

    assert_pattern do
      response => {
        id: Integer,
        agent: Integer,
        created_at: Time,
        crontab_expression: String,
        is_active: Telnyx::Internal::Type::Boolean,
        name: String,
        updated_at: Time,
        execution_mode: String | nil,
        frequency: Integer | nil,
        notify_on: Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn | nil,
        personalities: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        personality: Integer | nil,
        run_as_text: Telnyx::Internal::Type::Boolean | nil,
        scenario_ids: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        scenarios_data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::ScenariosData]) | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        timezone: String | nil
      }
    end
  end

  def test_retrieve_cron_jobs
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.schedules.v1.cron_jobs.retrieve_cron_jobs

    assert_pattern do
      response => ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob])
    end
  end
end
