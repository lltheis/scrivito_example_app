var ScrivitoExampleApp = function () {

  function initBackgroundImages(content) {
    $(content).find("[data-background-image-url]").each(function() {
      var url = $(this).data("backgroundImageUrl");
      $(this).css({
        background: "url(" + url + ")",
        backgroundSize: "cover"
      });
    });
  }

  function initEkkoLightBox(content) {
    $(content).delegate('*[data-toggle="lightbox"]', 'click', function(event) {
      event.preventDefault();
      $(this).ekkoLightbox();
    });
  }

 

  function addEkkoLightBoxOnContent() {
    scrivito.on("content", function(content) {
      initEkkoLightBox(content);
    });
  }

  function addBackgroundImagesOnContent() {
    scrivito.on("content", function(content) {
      initBackgroundImages(content);
    });
  }

  return {
    init: function() {
      if (scrivito.in_editable_view()) {
        addBackgroundImagesOnContent();
        addEkkoLightBoxOnContent();
      } else {
        initEkkoLightBox(document);
        initBackgroundImages(document);
      }
    }
  };

}();

jQuery(document).ready(function() {
  ScrivitoExampleApp.init();
});