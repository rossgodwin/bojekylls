/**
 * Check if element is visible within the viewport.
 * https://stackoverflow.com/questions/44923021/unsupported-pseudo-in-viewport
 * 
 * @param el
 * @returns {Boolean}
 */
function isInViewport(el) {
	if (typeof jQuery === "function" && el instanceof jQuery) el = el[0];
	var rect = el.getBoundingClientRect();
	return (
		rect.top >= 0 &&
		rect.left >= 0 &&
		rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
		rect.right <= (window.innerWidth || document.documentElement.clientWidth)
	);
};