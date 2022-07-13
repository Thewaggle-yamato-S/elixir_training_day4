defmodule Identicon do
  @moduledoc """
  Documentation for `Identicon`.
  """

  @doc """
  string -> hash -> list
  ## Examples

      iex> Identicon.hash_input(args)
      {list_of_HashValue}
  """

  def hash_input(input) do
    hash =
      :crypto.hash(:md5, input)
      |> :binary.bin_to_list()

    %Identicon.Image{hex: hash}
  end
end

defmodule Main do
  def main do
    Identicon.hash_input("Elixir")
  end
end
