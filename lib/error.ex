defmodule Exmeal.Error do
  @keys ~w[status result]a
  @enforce_keys @keys
  defstruct @keys

  def build(status, result) do
    %__MODULE__{
      status: status,
      result: result
    }
  end
end
