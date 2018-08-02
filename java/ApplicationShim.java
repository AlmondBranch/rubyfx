package rubyfx.java;

import javafx.stage.Stage;

public class ApplicationShim {
  private static StageSetupAction _start;

  public static void setStart(StageSetupAction start) {
    _start = start;
  }

  public static StageSetupAction getStart() {
    return _start;
  }
}

