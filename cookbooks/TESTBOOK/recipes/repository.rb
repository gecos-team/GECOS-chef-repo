
file "/etc/apt/sources.list" do
  action :delete
end

TESTBOOK_repository "squeeze" do
  uri "http://ftp.cica.es/debian"
  distribution "squeeze"
  components ["main"]
  action :add
end

TESTBOOK_repository "squeeze-security" do
  uri "http://security.debian.org/"
  distribution "squeeze/updates"
  components ["main"]
  action :add
end

TESTBOOK_repository "squeeze-updates" do
  uri "http://ftp.cica.es/debian"
  distribution "squeeze-updates"
  components ["main"]
  action :add
end

