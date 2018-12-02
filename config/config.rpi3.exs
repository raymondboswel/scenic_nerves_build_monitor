use Mix.Config

config :scenic_nerves_build_status, :viewport, %{
  name: :main_viewport,
  # default_scene: {ScenicNervesBuildStatus.Scene.Crosshair, nil},
  size: {1200, 1000},
  default_scene: {ScenicExampleApp.Scene.Splash, ScenicExampleApp.Scene.BuildStatus},
  opts: [scale: 1.0],
  drivers: [
    %{
      module: Scenic.Driver.Nerves.Rpi
    },
    %{
      module: Scenic.Driver.Nerves.Touch,
      opts: [
        device: "FT5406 memory based driver",
        calibration: {{1, 0, 0}, {1, 0, 0}}
      ]
    }
  ]
}
