require 'spec_helper'

# ポート80番を指定
listen_port = 80

# nginxがインストールされているかを確認
describe package('nginx') do
  it { should be_installed }
end

# 指定されたポートが待ち状態になっているかを確認
describe port(listen_port) do
  it { should be_listening }
end
