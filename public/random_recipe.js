$(document).ready(function() {

var domElement = $("#recipe_title");
var domElement2 = $("#recipe_ingredients");
var domElement3 = $("#recipe_image");

var timer = setInterval(newRecipe, 3000);

$.ajax({
  dataType: 'json',
  url: '/recipes/get_random_recipe',
  success: function(data){
    domElement.html(data.title);
    domElement2.html(data.ingredients);
    domElement3.html("<img src='" + data.image + "'/>");
  },
  error: function() {
    domElement.html("No Response. The Server may be down.")
  }
})

function newRecipe() {
  $.ajax({
    dataType: 'json',
    url: '/recipes/get_random_recipe',
    success: function(data){
      domElement.html(data.title);
      domElement2.html(data.ingredients);
      domElement3.html("<img src='" + data.image + "'/>");
    },
    error: function() {
      domElement.html("No Response. The Server may be down.")
    }
  })
}
})
//
//
// $(document).ready(function() {
//
// var domElement = $("#tag_1_title");
// var domElement2 = $("#tag_1_ingredients");
// var domElement3 = $("#tag_1_image");
// var interval = setInterval(resetPic, 5000);
//
// $.ajax({
//  dataType: 'json',
//  url: '/recipes/get_random_recipe',
//  success: function(data){
//    domElement.html(data.title);
//    domElement2.html(data.ingredients);
//    domElement3.html("<img src='" + data.image + "'/>");
//    domElement3.html("<%= image_tag(" + data.image + "(:med)) %>");
//  },
//  error: function(){
//    domElement.html("No response.  The server may be down.");
//  }
// });
//
// function resetPic() {
//   $.ajax({
//     dataType: 'json',
//     url: '/recipes/get_random_recipe',
//     success: function(data){
//       domElement.html(data.title);
//       domElement2.html(data.ingredients);
//       domElement3.html("<img src='" + data.image + "'/>");
//     },
//     error: function(){
//       domElement.html("No response.  The server may be down.");
//     }
//   });
// };
// });
