defmodule ActivitiesTest do
  alias SescAPI.Activities

  use ExUnit.Case, async: true
  doctest SescAPI.Activities

  setup do
    Req.Test.stub(:activities_filter, fn conn ->
      {activities, _} = Code.eval_file("test/fixtures/activities.exs")
      Req.Test.json(conn, activities)
    end)
  end

  describe "filter" do
    test "requests are stubbed" do
      activities = Activities.filter()
      assert [%SescAPI.Activities.Activity{:id => 738_507} | _] = activities
    end

    test "Returns a list of %Activities.Activity" do
      activities = Activities.filter()
      assert [activity | _] = activities
      assert %Activities.Activity{} = activity
    end
  end
end
