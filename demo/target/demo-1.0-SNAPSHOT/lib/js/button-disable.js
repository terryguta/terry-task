/* Button Disable v1.0.1
 * Copyright © 2021 Ngonidzashe Mangudya
 * Free to use under the MIT license.
 * https://www.iamngoni.co.zw
 */

document.addEventListener('DOMContentLoaded', function () {
    let forms = document.getElementsByTagName('form');
    Array.from(forms).forEach(function (form) {
        form.addEventListener('submit', function () {
            try {
                let is_btn = false;
                let clickedButton = form.querySelector('input[type="submit"]');
                if (clickedButton == null) {
                    console.warn('Input element not found. Looking for button instead!');
                    clickedButton = form.querySelector('button[type="submit"]');
                    is_btn = true;
                }

                clickedButton.toggleAttribute('disabled', true);
                is_btn ? clickedButton.innerHTML = '<i data-feather="feather"></i> Please wait ...' : clickedButton.value = '⌛ Please wait ...';
            } catch (e) {
                console.log(e);
                console.log('Returned element was null, possibly a livewire component');
            }
        });
    });
});
