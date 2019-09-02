# This file was generated by GoReleaser. DO NOT EDIT.
class Jx < Formula
  desc "A tool to install and interact with Jenkins X on your Kubernetes cluster."
  homepage "https://jenkins-x.io/"
  version "2.0.659"

  url "http://github.com/jenkins-x/jx/releases/download/v#{version}/jx-darwin-amd64.tar.gz"
  sha256 "c84f11fc106663d3f11d475d6aa17ebf1e6bc8a14069257b1e05caf15bb98f43"

  def install
    bin.install name
    
    output = Utils.popen_read("SHELL=bash #{bin}/jx completion bash")
    (bash_completion/"jx").write output
    
    output = Utils.popen_read("SHELL=zsh #{bin}/jx completion zsh")
    (zsh_completion/"_jx").write output
    
    prefix.install_metafiles
  end

end
