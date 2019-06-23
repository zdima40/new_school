// CONSTANTS
var HOST = "http://127.0.0.1:3001";

// STATE
var state = {
  data: null,
  top_data: null
}

// FETCH API FUNCTION
var fetchAPI = function(req, cb) {
  fetch(req)
    .then(
      function(response) {
        if (response.status !== 200) {
          console.log('Problem. Status Code: ' + response.status);
          return;
        }
        cb(response);
      }
    ).catch(function(err) {
        console.log('Fetch Error :-S', err);
    });
}

// RENDER CARD ELEMENTS IN DOM
var renderCards =  function() {

    var result = document.getElementById("result");
    if (result) {
       result.parentNode.removeChild(result);
    }

    var result = document.createElement("div");
    result.setAttribute("class", "result");
    result.setAttribute("id", "result");

    state.data.map(function(e) {
      var card = document.createElement("div");
      var card_title = document.createElement("div");
      var card_description = document.createElement("div");

      // EVENT CLICK ON CARD
      card.setAttribute("id-univer", e.id);
      card.onclick = function(event) {
        var id = event.srcElement.parentNode.getAttribute("id-univer");
        fetchAPI(`${HOST}/universities/${id}`, function(response) {
              response.json().then(function(data) {
                state.data = data;
                renderFullCards();
              });
        });
      }

      card.setAttribute("class", "card");
      card_title.setAttribute("class", "card-title");
      card_description.setAttribute("class", "card-description");

      var card_text = document.createTextNode(e.short_name);
      var card_description_text = document.createTextNode(e.description);

      card_title.appendChild(card_text);
      card_description.appendChild(card_description_text);

      card.appendChild(card_title);
      card.appendChild(card_description);

      result.appendChild(card);
      result.appendChild(document.createElement("br"));

      var body = document.getElementsByTagName("body")[0];
      body.insertBefore(result, body.firstElement);
    })
}

// RENDER FULL CARD ELEMENTS IN DOM
var renderFullCards =  function() {

    var result = document.getElementById("result");
    if (result) {
       result.parentNode.removeChild(result);
    }

    var result = document.createElement("div");
    result.setAttribute("class", "result");
    result.setAttribute("id", "result");

    state.data.map(function(e) {
      var card = document.createElement("div");
      var card_title = document.createElement("div");
      var card_description = document.createElement("div");
      var card_city = document.createElement("div");
      var card_address = document.createElement("div");
      var card_contact = document.createElement("div");

      // EVENT CLICK ON CARD
      card.setAttribute("id-univer", e.id);
      // card.onclick = function(event) {
      //   var id = event.srcElement.parentNode.getAttribute("id-univer");
      //   fetchAPI(`${HOST}/universities/${id}`, function(response) {
      //         response.json().then(function(data) {
      //           state.data = data;
      //           renderCards();
      //         });
      //   });
      // }

      card.setAttribute("class", "card");
      card_title.setAttribute("class", "card-title");
      card_description.setAttribute("class", "card-description");

      var card_text = document.createTextNode(e.full_name);
      var card_description_text = document.createTextNode(e.description);
      var card_city_text = document.createTextNode(e.city);
      var card_address_text = document.createTextNode(e.address);
      var card_contact_text = document.createTextNode(e.contacts);

      card_title.appendChild(card_text);
      card_description.appendChild(card_description_text);
      card_city.appendChild(card_city_text);
      card_address.appendChild(card_address_text);
      card_contact.appendChild(card_contact_text);

      card.appendChild(card_title);
      card.appendChild(card_description);
      card.appendChild(card_city);
      card.appendChild(card_address);
      card.appendChild(card_contact);

      result.appendChild(card);
      result.appendChild(document.createElement("br"));

      var body = document.getElementsByTagName("body")[0];
      body.insertBefore(result, body.firstElement);
    })
}

// RENDER CARD ELEMENTS IN DOM
var renderRecomendCardsFromState =  function() {

    var top_result = document.getElementById("top_result");
    if (top_result) {
      top_result.parentNode.removeChild(top_result);
    }

    var top_result = document.createElement("div");
    top_result.setAttribute("class", "top_result");
    top_result.setAttribute("id", "top_result");
    top_result.appendChild(document.createElement("div"));
    top_result.appendChild(document.createTextNode("====RECOMEND UNIVERSITIES===="));

    state.top_data.map(function(e) {
      var card = document.createElement("div");
      var card_title = document.createElement("div");
      var card_description = document.createElement("div");

      card.setAttribute("class", "card");
      card_title.setAttribute("class", "card-title");
      card_description.setAttribute("class", "card-description");

      var card_text = document.createTextNode(e.short_name);
      var card_description_text = document.createTextNode(e.description);

      card_title.appendChild(card_text);
      card_description.appendChild(card_description_text);

      card.appendChild(card_title);
      card.appendChild(card_description);
      top_result.appendChild(card);
      top_result.appendChild(document.createElement("br"));

      var body = document.getElementsByTagName("body")[0];
      body.parentNode.insertBefore(top_result, body.nextSibling);
      // body.insertAfter(top_result, body.lastchild);
      //referenceNode.parentNode.insertBefore(newNode, referenceNode.nextSibling);
      //body.appendChild(top_result);

    })
}

// // RERENDER CARD ELEMENTS IN DOM
// var reRenderCards = function() {
//   getTopUniversities();
//   var result = document.getElementById("result");
//   result.parentNode.removeChild(result);
//   renderCards(state.data);
// }
//
// // RERENDER CARD ELEMENTS IN DOM
// var reRenderRecomendCards = function() {
//   var top_result = document.getElementById("top-result");
//   top_result.parentNode.removeChild(top_result);
//   getTopUniversities();
// }

// GET UNIVERSITIES
fetchAPI(`${HOST}/universities/`, function(response) {
      response.json().then(function(data) {
        state.data = data;
        renderCards();
      });
});

// GET TOP SEARCH UNIVERSITIES
var renderRecomendCards = function() {
  fetchAPI(`${HOST}/universities/gettop/`, function(response) {
      response.json().then(function(data) {
        state.top_data = data;
        renderRecomendCardsFromState();
      });
  });
};
renderRecomendCards();

// SET INC ID FOR SOME UNIVERSITY
var setUniverScore = function(id) {
  fetchAPI(`${HOST}/universities/addscore/${id}`, function(response) {
        console.log("Add OK");
  });
}

// EVENT SEARCH
var button = document.getElementById("go-search");
button.onclick = function() {
  //search
  var input_text = document.getElementById("input-search").value;
  if (!input_text) {
    return 0;
  }
  //console.log(input_text);
  var options = {
    keys: ['short_name']
  };
  var fuse = new Fuse(state.data, options);
  state.data = fuse.search(input_text);
  console.log(state.data);
  setUniverScore(state.data[0].id);
  renderRecomendCards();
  renderCards();
}
