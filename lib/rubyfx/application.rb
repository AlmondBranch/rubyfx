require 'java'
$CLASSPATH << 'classes'

import 'com.sun.javafx.application.LauncherImpl'
import 'rubyfx.java.ApplicationShim'
import 'rubyfx.java.Application'

# java.lang.System.setProperty("javafx.verbose", 'true')

module Rubyfx
  ApplicationShim.setStart do |stage|
    stage.width = 300
    stage.height = 600
    stage.show
  end

  javafx.application.Application.launch(Application.java_class, java.lang.String[0].new)
end