package php_minify;

import thenshim.Promise;

/** Removes comments and whitespace from a PHP script. **/
interface Transformer {

	/** Closes this transformer and releases any resources associated with it. **/
	function close(): Promise<Dynamic>;

	/** Processes a PHP `script`. **/
	function transform(script: String): Promise<String>;
}
