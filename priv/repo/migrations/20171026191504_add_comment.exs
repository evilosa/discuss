defmodule Discuss.Repo.Migrations.AddComment do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :content, :string
      add :user_id, references(:users)
      add :topic_id, references(:topics)

      timestamps()
    end
  end
end
