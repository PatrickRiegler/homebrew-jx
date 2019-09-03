# This file was generated by GoReleaser. DO NOT EDIT.
class Jx < Formula
  desc "A tool to install and interact with Jenkins X on your Kubernetes cluster."
  homepage "https://jenkins-x.io/"
  version "2.0.673"

  url "http://github.com/jenkins-x/jx/releases/download/v#{version}/jx-darwin-amd64.tar.gz"
  sha256 "14f9223c34a04765734ac9f2a6bd79c85463801840ee87627ef8e18e47e69263"

  def install
    bin.install name
    
    output = Utils.popen_read("SHELL=bash #{bin}/jx completion bash")
    (bash_completion/"jx").write output
    
    output = Utils.popen_read("SHELL=zsh #{bin}/jx completion zsh")
    (zsh_completion/"_jx").write output
    
    prefix.install_metafiles
  end

end
