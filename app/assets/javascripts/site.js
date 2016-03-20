$(document).on('ready page:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    }); // Raty rating stars

    	$('.img-zoom').elevateZoom({
			
			scrollZoom 		: true,
			borderSize		: 3,
			borderColour 		: "rgb(136,136,136)",
			tintColour 		: "#e7e7e7",
			zoomWindowWidth 	: 500,
			zoomWindowHeight 	: 300,
			zoomWindowPosition	: 1,
			zoomWindowOffetx	: 220,
			zoomWindowOffety	: 0,
			zoomWindowFadeIn	: 500,
			zoomWindowFadeOut	: 500,
			lensFadeIn		: 500,
		lensFadeOut		: 500 
	}); // elevateZoom on show page
});