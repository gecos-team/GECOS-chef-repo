
file "/etc/apt/sources.list" do
  action :delete
end

GECOS_repository "natty" do
  uri "http://v1.gecos.guadalinex.org/ubuntu"
  distribution "natty"
  components ["main restricted universe multiverse"]
  action :add
end

GECOS_repository "natty-security" do
  uri "http://v1.gecos.guadalinex.org/ubuntu"
  distribution "natty-security"
  components ["main restricted universe multiverse"]
  action :add
end

GECOS_repository "natty-updates" do
  uri "http://v1.gecos.guadalinex.org/ubuntu"
  distribution "natty-updates"
  components ["main restricted universe multiverse"]
  action :add
end

