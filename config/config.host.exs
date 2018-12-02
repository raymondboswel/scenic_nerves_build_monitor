use Mix.Config

config :scenic_nerves_build_status, :viewport, %{
  name: :main_viewport,
  # default_scene: {ScenicNervesBuildStatus.Scene.Crosshair, nil},
  size: {1200, 1000},
  default_scene: {ScenicExampleApp.Scene.Splash, ScenicExampleApp.Scene.BuildStatus},
  opts: [scale: 1.0],
  drivers: [
    %{
      module: Scenic.Driver.Glfw,
      opts: [title: "MIX_TARGET=host, app = :scenic_nerves_build_status"]
    }
  ]
}
