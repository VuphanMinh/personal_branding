import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import '../scss/admin/index.scss';
import 'bootstrap/dist/js/bootstrap';
import '@tabler/core/dist/css/tabler.min.css';
import "../scss/admin/actiontext.scss";
import './actiontext.css';

require("trix")
require("@rails/actiontext")

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require.context('../images', true);

document.addEventListener('turbolinks:load', () => {
    import('@tabler/core/dist/js/tabler.min');
});  
