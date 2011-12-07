package cern.c2mon.web.configviewer.util;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 * Utility class to ease preparation of data for the MVC model
 * */
public final class FormUtility {

  /**
   * Gets a map of values to include later in the MVC model processed by a jsp
   * @param title tag title of the form displayed on the jsp page (different for datatag, alarm, command)
   * @param instruction description of the user action displayed on the jsp page
   * @param formSubmitUrl url to which the form should be submitted
   * @param formTagValue previous value of a tag (datatag, alarm, command) entered in the form, that should be displayed in the form
   * @return a map of values ready to be used in the MVC model 
   * */
  public static Map<String, String> getFormModel(final String title, final String instruction, final String formSubmitUrl, final String formTagValue, final String tagDataUrl) {
    Map<String, String> model = new HashMap<String, String>();
    model.put("title", title);
    model.put("instruction", instruction);
    model.put("formSubmitUrl", formSubmitUrl);
    model.put("formTagValue", formTagValue);
    model.put("tagDataUrl", tagDataUrl);
    return model;
  }



  /**
   * Utility class never needs instantiating.
   * */
  private FormUtility() { };

}