defmodule ExNVR.Utils do
  @moduledoc false

  @spec recording_dir(binary() | nil) :: Path.t()
  def recording_dir(device_id \\ nil) do
    dir = Application.get_env(:ex_nvr, :recording_directory)
    if device_id, do: Path.join(dir, device_id), else: dir
  end

  @spec hls_dir(binary() | nil) :: Path.t()
  def hls_dir(device_id \\ nil) do
    dir = Application.get_env(:ex_nvr, :hls_directory)
    if device_id, do: Path.join(dir, device_id), else: dir
  end

  @spec run_main_pipeline?() :: boolean()
  def run_main_pipeline?(), do: Application.get_env(:ex_nvr, :run_pipelines, true)
end
