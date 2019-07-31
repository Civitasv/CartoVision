/**
 * demo.js
 * https://coidea.website
 *
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 * 
 * Copyright 2019, COIDEA
 * https://coidea.website
 */

  $('.table-wrapper').imagesLoaded()
  .done( function() {
    // hide loader
    $('.loader').addClass('is-loaded');

    var	open = false;

    $('.trigger').each(function(index) {
      var thisTH = $(this),
          thisItem = $(this).find('p'),
          thisItemSpan = $(this).find('span'),
          t = new TimelineMax(),
          rev = t.reversed();

      t.set(thisTH, { className: '+=active' })
        .to(thisItem, rev ? 0.3 : 0.3 , {
            rotation: 0, 
            transformOrigin:"50% 50%",
            paddingLeft:"96px",
            paddingRight:"96px",
            force3D: true, 
            ease: Sine.easeInOut
          })
        .to(thisItemSpan, rev ? 0.3 : 0.3, {
          rotation: 0, 
          transformOrigin:"50% 50%",
          paddingLeft:"12px",
          paddingRight:"12px",
          force3D: true,
          ease: Sine.easeInOut
          }, '-=0.15');

      $("tbody").find("tr").each(function() { // get all rows in tbody
        var tr = $(this);
        tr.find("td").each(function() { // get all cells in all rows
          var td = $(this);
          if(index === td.index()-1) { // get correct cells for clicked thead
            t.to(td.find('span'), rev ? 0.3 : 0.3, {
                whiteSpace: 'initial',
                width: 'inherit',
                maxWidth: '232px',
                height: 'auto',
                autoAlpha: 1,
                y: 8,
                ease: Sine.easeInOut
              }, '-=0.15');
          }
        });
      });

      t.reversed(true);
      this.animation = t;
    })

    $('.trigger').click(function(){
      if(this.animation.reversed()){
        this.animation.play().timeScale(1);
      }	else {
        this.animation.reverse().timeScale(1);
      }
    })

  });