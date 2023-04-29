console.log("calendar color module --------------");

var colorService = (function() {
  function colorUpdate(color, callback, error) {
    console.log("color update-------------");
    $.ajax({
      type: 'PUT',
      url: '/calendar/' + color.user_id,
      data: JSON.stringify(color),
      contentType: "application/json; charset=utf-8",
      success: function(result, status, xhr) {
        if (callback) {
          callback(result);
        }
      },
      error: function(xhr, status, error) {
        if (error) {
          error(error);
        }
      }
    });
  }

  return {
    colorUpdate : colorUpdate
  };
})();