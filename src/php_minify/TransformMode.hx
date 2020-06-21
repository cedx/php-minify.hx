package php_minify;

/** Defines the type of transformation applied by a minifier. **/
enum abstract TransformMode(String) from String to String {

  /** Applies a fast transformation. **/
  var fast;

  /** Applies a safe transformation. **/
  var safe;
}
