import "bootstrap";
import { Application } from 'stimulus';
import { definitionsFromContext } from 'stimulus/webpack-helpers';

// init stimulus
const application = Application.start();
const controllers = require.context('../controllers', true, /\.js$/);
application.load(definitionsFromContext(controllers));
