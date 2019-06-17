class Jx < Formula
  desc "A tool to install and interact with Jenkins X on your Kubernetes cluster."
  homepage "https://jenkins-x.github.io/jenkins-x-website/"
  version "2.0.288"
   
  url "https://github.com/jenkins-x/jx/releases/download/v#{version}/jx-darwin-amd64.tar.gz"
  sha256 "1cd15091b59697460c4088c3eea2ba4fc16f4b1cc851395800caa6570098f6ba"

  def install
    bin.install name

    output = Utils.popen_read("SHELL=bash #{bin}/jx completion bash")
    (bash_completion/"jx").write output

    output = Utils.popen_read("SHELL=zsh #{bin}/jx completion zsh")
    (zsh_completion/"_jx").write output

    prefix.install_metafiles
  end

end
