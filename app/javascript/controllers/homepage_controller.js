import { Controller } from 'stimulus';

export default class extends Controller {

  toggleClass(event) {
    this.element.classList.toggle(event.currentTarget.dataset.className);
  }
}
