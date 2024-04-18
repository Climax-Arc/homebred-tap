class AppleMusicDiscordRpc < Formula
    desc "🎵 Discord Rich Presence Client for the macOS Apple Music app and iTunes"
    homepage "https://github.com/Climax-Arc/Apple-music-discord-rpc"
    url "https://github.com/Climax-Arc/Apple-music-discord-rpc/archive/refs/tags/0.1.0.tar.gz"
    sha256 "e8e3cc3fc4e7d133c32f0b1843c5cf640e6a21a4cf6f12c597f7b27f8f2d9ac6"
    license "MIT"
    head "https://github.com/Climax-Arc/Apple-music-discord-rpc.git", branch: "main"
  
    depends_on "deno"
  
    def install
      bin.install "music-rpc.ts"
    end
  
    service do
      run opt_bin/"music-rpc.ts"
      keep_alive true
      environment_variables PATH: std_service_path_env
      working_dir var/"apple-music-discord-rpc"
      error_log_path var/"apple-music-discord-rpc/music-rpc.log"
    end
  end