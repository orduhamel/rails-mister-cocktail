import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Select a cocktail"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
