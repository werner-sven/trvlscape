import "bootstrap";
import "../plugins/flatpickr"
import { slider } from '../modules/slider';
import { scrollWin } from '../modules/push';
import scrollTab from '../packs/navbar_side';
import navbar from '../packs/navbar';
import { loadDynamicBannerText } from '../modules/animated_typing';
loadDynamicBannerText();
slider();
scrollWin();
scrollTab();
navbar();


