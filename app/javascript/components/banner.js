import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Change your life", "Learn to make a real cocktail", "Onley 1 way to live", "Yes you got it it is COCKTAILS"],
    typeSpeed: 50,
    loop: true
  });
}



export { loadDynamicBannerText };
