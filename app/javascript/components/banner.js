import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["It's Friday night", "Have fun", 'Choose your favourite cocktail'],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
