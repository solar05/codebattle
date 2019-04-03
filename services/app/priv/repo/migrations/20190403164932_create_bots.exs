defmodule Codebattle.Repo.Migrations.CreateBots do
  use Ecto.Migration

  alias Codebattle.Repo
  alias Codebattle.User

  def change do
    bots = [
      %{
        id: -1,
        name: "DimaLol",
        is_bot: true,
        rating: 1000,
        email: "diman@lol.bot_codebattle",
        lang: "ruby",
        github_id: 35539033,
        achievements: ["bot"],
        inserted_at: TimeHelper.utc_now(),
        updated_at: TimeHelper.utc_now()
      },
      %{
        id: -2,
        name: "DimaKek",
        is_bot: true,
        rating: 1000,
        email: "diman@kek.bot_codebattle",
        lang: "js",
        github_id: 35539033,
        achievements: ["bot"],
        inserted_at: TimeHelper.utc_now(),
        updated_at: TimeHelper.utc_now()
      },
      %{
        id: -3,
        name: "AndreyDev",
        is_bot: true,
        rating: 1000,
        email: "andrey@dev.bot_codebattle",
        lang: "js",
        github_id: 35539033,
        achievements: ["bot"],
        inserted_at: TimeHelper.utc_now(),
        updated_at: TimeHelper.utc_now()
      },
      %{
        id: -4,
        name: "AndreyFront",
        is_bot: true,
        rating: 1000,
        email: "andrey@front.bot_codebattle",
        lang: "js",
        github_id: 35539033,
        achievements: ["bot"],
        inserted_at: TimeHelper.utc_now(),
        updated_at: TimeHelper.utc_now()
      },
    ]


    Repo.insert_all(User, bots)
  end
end
