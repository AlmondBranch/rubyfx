require 'java'
$CLASSPATH << File.dirname(__FILE__) + '/classes'

import 'com.sun.javafx.application.LauncherImpl'
import 'rubyfx.java.ApplicationShim'
import 'rubyfx.java.Application'

# java.lang.System.setProperty("javafx.verbose", 'true')

module Rubyfx
  class RubyfxApplication
    attr_accessor :fxml, :css

    def setup_stage(stage)
    end

    def launch
      set_start
      javafx.application.Application.launch(Application.java_class, java.lang.String[0].new)
    end

    private
    
    def set_start
      ApplicationShim.setStart do |stage|
        loader =
          if fxml
            url = java.io.File.new(fxml).toURI.toURL
            javafx.fxml.FXMLLoader.new(url)
          else
            javafx.fxml.FXMLLoader.new()
          end
        
        stage.scene = javafx.scene.Scene.new(loader.load)
        stage.scene.getStylesheets.add(css) unless css.nil?

        setup_stage(stage)
        stage.show
      end
    end
  end
end