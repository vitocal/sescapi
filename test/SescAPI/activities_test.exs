defmodule ActivitiesTest do
  alias SescAPI.Activities.Activity
  alias SescAPI.Activities

  use ExUnit.Case, async: true
  doctest SescAPI.Activities

  describe "filter()" do
    setup do
      Req.Test.stub(:activities_filter, fn conn ->
        {activities, _} = Code.eval_file("test/fixtures/activities.exs")
        Req.Test.json(conn, activities)
      end)
    end

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

  describe "filter(opts)" do
    setup do
      Req.Test.stub(:activities_filter, fn conn ->
        send(self(), {:req_params, conn.params})
        {activities, _} = Code.eval_file("test/fixtures/activities.exs")
        Req.Test.json(conn, activities)
      end)
    end

    test "Returns a list of %Activity with specific :categoria" do
      _activities = Activities.filter(categoria: "musica-show")
      assert_received({:req_params, %{"categoria" => "musica-show"}})
    end

    test "Returns a list of %Activity with specific ppp and page" do
      _activities = Activities.filter(ppp: 100, page: 10)
      assert_received({:req_params, %{"ppp" => "100", "page" => "10"}})
    end
  end

  describe "get(id)" do
    setup do
      Req.Test.stub(:activities_filter, fn conn ->
        {:ok, json_data} =
          File.read("/Users/vitorcalejuri/Projects/sescapi/test/fixtures/musica-show.json")

        {:ok, activities} = Jason.decode(json_data)

        Req.Test.json(conn, %{"atividade" => activities})
      end)
    end

    test "Returns the %Activity that matches id" do
      assert %Activity{:id => 731_105} = Activities.get(731_105)
    end

    test "Returns nil otherwise" do
      assert nil == Activities.get(-1)
    end
  end
end
