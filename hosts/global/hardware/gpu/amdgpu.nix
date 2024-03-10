{ pkgs, config, ... }:

{
  boot.initrd.kernelModules = [ "amdgpu" ];

  services.xserver = {
    enable = true;
    videoDrivers = [ "amdgpu" ];
  };

  hardware = {
    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
      extraPackages = with pkgs; [
        mesa.drivers
        rocm-opencl-icd
        rocm-opencl-runtime
        intel-compute-runtime
        amdvlk
      ];
    };
  };

  environment.variables.AMD_VULKAN_ICD = "RADV";

}
