import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['category']

  toggleClass() {
    this.element.classList.toggle(this.className);
  }
}
