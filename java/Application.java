package rubyfx.java;

import javafx.stage.Stage;

public class Application extends javafx.application.Application {
  public void start(Stage stage) {
    ApplicationShim.getStart().setup(stage);
  }
}