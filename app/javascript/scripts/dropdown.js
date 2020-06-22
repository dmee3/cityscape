document.addEventListener('click', event => {

	if (!event.target.matches('.dropdown-toggle')) return;

	event.preventDefault();

  toggle_id = event.target.id;

  document.querySelector('#' + toggle_id).classList.add('dropdown-open');

}, false);