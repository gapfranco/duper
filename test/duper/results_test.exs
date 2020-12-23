defmodule ResultsTest do
  use ExUnit.Case

  alias Duper.Results

  test "can add entries to the results" do
    Results.add_hash_for("path1", 12)
    Results.add_hash_for("path2", 45)
    Results.add_hash_for("path3", 12)
    Results.add_hash_for("path4", 78)
    Results.add_hash_for("path5", 45)
    Results.add_hash_for("path6", 99)

    duplicates = Results.find_duplicates()

    assert length(duplicates) == 2
    assert ~w{path3 path1} in duplicates
    assert ~w{path5 path2} in duplicates
  end
end
