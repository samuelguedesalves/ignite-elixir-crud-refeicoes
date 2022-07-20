defmodule Exmeal.Meal do
  use Ecto.Schema

  import Ecto.Changeset

  @required_params [:calories, :description, :date]

  @derive {Jason.Encoder, only: @required_params ++ [:id]}
  @primary_key {:id, :binary_id, autogenerate: true}
  schema "meals" do
    field(:calories, :integer)
    field(:description, :string)
    field(:date, :date)
  end

  def changeset(data \\ %__MODULE__{}, attrs) do
    data
    |> cast(attrs, @required_params)
    |> validate_required(@required_params)
  end
end
