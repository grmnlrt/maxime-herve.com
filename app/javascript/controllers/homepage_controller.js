import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['movies', 'games'];

  toggleMoviesClass() {
    this.moviesTarget.classList.toggle('show');
  }

  toggleGamesClass() {
    this.gamesTarget.classList.toggle('show');
  }
}
