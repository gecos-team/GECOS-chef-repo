TESTBOOK_desktopsetting "/desktop/gnome/background/picture_filename" do
  type "string"
  value "test.jpg"
    action :set
      provider "TESTBOOK_gconf"
end
