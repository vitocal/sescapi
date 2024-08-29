defimpl Jason.Encoder, for: [Tuple] do
  def encode({k, v}, opts), do: Jason.Encode.map(%{k => v}, opts)

  def encode(tuple, opts) do
    [k | v] = :erlang.tuple_to_list(tuple)
    encode({k, v}, opts)
  end
end

ExUnit.start(timeout: 10000)
