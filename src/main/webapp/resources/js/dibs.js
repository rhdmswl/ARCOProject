console.log("dibs module......");

var dibsService = (function() {
  function addDibs(dibs, callback, error) {
    console.log("add dibs.........");
    $.ajax({
      type: 'POST',
      url: '/dibs/add',
      data: JSON.stringify(dibs),
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
    addDibs: addDibs
  };
})();