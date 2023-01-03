import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import '../scss/admin/index.scss';
import 'bootstrap/dist/js/bootstrap';
import '@tabler/core/dist/css/tabler.min.css';

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener('turbolinks:load', () => {
    import('@tabler/core/dist/js/tabler.min');
});  
