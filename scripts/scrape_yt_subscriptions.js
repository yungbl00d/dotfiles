var all = document.getElementsByTagName('ytd-channel-renderer')
var list = [];
for (var i = 0; i < all.length; i++) {
	  var link = all[i].children[1].children[0].children[0].href;
	  var name = all[i].children[1].children[1].children[0].children[0].children[0].children[0].children[0].textContent;
	  list.push([link, name])
	 
}
console.log(list);
