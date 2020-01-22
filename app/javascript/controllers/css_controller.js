// Note(grmnlrt): Inpired by https://github.com/stimulusjs/stimulus/commit/b87055cf87b0660ca90af6490b3c9ec59db82a68#diff-85275e3692c02a4296de403c4b04b05b
import { Controller } from 'stimulus';

export default class extends Controller {
  addClass() {
    this.element.classList.add(this.className);
  }

  removeClass() {
    this.element.classList.remove(this.className);
  }

  toggleClass() {
    this.element.classList.toggle(this.className);
  }

  get className() {
    const className = this.data.get("class");
    if (!className) {
      throw new Error(`Missing "data-${this.identifier}-class" attribute`);
    }
    return className;
  }
}
