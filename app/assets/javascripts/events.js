// $(document).on('turbolinks:load', function(){
//   attachListeners();
// })

// var attachListeners = function() {


//   $(".js-next").on("click", function () {
//     const nextId = parseInt($(".js-next").attr("event_id")) + 1;
//     $.get("/events/" + nextId + ".json", function (data) {
//       $(".eventHeader").html("Your are viewing " + data["name"]);
//       $(".eventName").html("What: " + data["name"]);
//       $(".eventTime").html("When: " + data["time"]);
//       $(".eventLocation").html("Where: " + data["location"]);
//       $(".eventDetails").html("Details: " + data["details"]);
//       $(".eventLink").html("Further Info: " + data["url"]);
//       $(".eventImage").html("Picture: " + data["image"]);
//       $(".js-next").attr("event-id", data["id"]);
//     });
//     return false
//   });
