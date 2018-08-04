require 'java'
$CLASSPATH << 'classes'

import 'com.sun.javafx.application.LauncherImpl'
import 'rubyfx.java.ApplicationShim'
import 'rubyfx.java.Application'

# java.lang.System.setProperty("javafx.verbose", 'true')

module Rubyfx
  ApplicationShim.setStart do |stage|
    url = java.io.File.new('/home/ubuntu/code/projects/rubyfx/lib/rubyfx/application.fxml').toURI.toURL
    loader = javafx.fxml.FXMLLoader.new(url)

    root = javafx.scene.layout.AnchorPane.new
    stage.scene = javafx.scene.Scene.new(root)
    loader.root = root
    loader.load

    #stage.scene = javafx.scene.Scene.new(loader.load)

    stage.width = 300
    stage.height = 600
    stage.show
  end

  javafx.application.Application.launch(Application.java_class, java.lang.String[0].new)
end