import { Controller } from 'stimulus';
import * as hoverEffect from 'hover-effect/dist/hover-effect.js';

export default class extends Controller {

  initialize() {
    this.home = new hoverEffect({
      parent: this.element,
      intensity: 0.3,
      hover: false,
      image1: this.images[0],
      image2: this.images[1],
      displacementImage: this.images[2]
    });
  }

  showCanvas(){
    this.element.classList.add('active');
  }

  hideCanvas(){
    this.element.classList.remove('active');
  }

  showMovies() {
    this.home.previous();
  }

  showVideoGames() {
    this.home.next();
  }

  get images() {
    return JSON.parse(this.data.get("images"));
  }
}
