
//sound play
(function ($) {
  $.extend({
      playSound: function () {
          return $(
                 '<audio class="sound-player" autoplay="autoplay" style="display:none;">'
                   + '<source src="' + arguments[0] + '" />'
                   + '<embed src="' + arguments[0] + '" hidden="true" autostart="true" loop="false"/>'
                 + '</audio>'
               ).appendTo('body');
      },
      stopSound: function () {
          $(".sound-player").remove();
      }
  });
})(jQuery);

//Open UI Function
$(function () {
  function display(bool) {
      if (bool) {
          $("#BG").show();
      } else {
          $("#BG").hide();
      }
  }

  display(false)

  // (/case) function

  window.addEventListener('message', function(event) {
    var item = event.data;
    if (item.type === "case") {
        if (item.status == true) {
            display(true)
        } else {
            display(false)
        }
    }
})

  $( document ).ready(function() {

    //start Roll

    $( ".start" ).click(function() {

$(".start").hide();
$(".close").hide();
      var card = $( ".slider ul li" );
      var cardSize = 250;
      var marginSize = 24;
      var winningCardNumber = 58;
      $( 'ul li:nth-child(' + winningCardNumber + ')' ).addClass('winning-card');
      $( "ul li:nth-child(" + (winningCardNumber - 2) + ")" ).addClass('surrounding-winning-card');
      $( "ul li:nth-child(" + (winningCardNumber - 1) + ")" ).addClass('surrounding-winning-card');
      $( "ul li:nth-child(" + (winningCardNumber + 1) + ")" ).addClass('surrounding-winning-card');
      $( "ul li:nth-child(" + (winningCardNumber + 2) + ")" ).addClass('surrounding-winning-card');
      var startOfWinningCard = -Math.abs(((cardSize / 2) + marginSize) + ((cardSize + marginSize) * (winningCardNumber - 4))) - (cardSize / 2);
      var centerOfWinningCard = startOfWinningCard - cardSize / 2;
      var numberRand = (Math.floor(Math.random() * 250) + 1);
      var totalTranslate = startOfWinningCard - numberRand;
      var animationTime = 10000;
  
      card.css('transition','all ' + animationTime + 'ms cubic-bezier(.09,.08,.1,.99');
      card.css('transform','translateX(' + totalTranslate + 'px) rotate3d(0,0,0, 0deg');
      
      setTimeout(() => { finishedSliding(centerOfWinningCard, card, winningCardNumber) }, animationTime + 500);

    });
  
    //Centering the slide at the end

    function finishedSliding(centerOfWinningCard, card, winningCardNumber) {
      card.css('transition','all 300ms');
      card.css('transform','translateX(' + centerOfWinningCard + 'px) scale(1) rotate3d(0,0,0, 0deg');
      setTimeout(() => { popUpItem(centerOfWinningCard) }, 1000);
      
    }
  
    //Pop Up the Item at the end and resetting the Slider with $Post for Lua

    function popUpItem(centerOfWinningCard){
      var winningCard = $( ".winning-card" )
      $( ".middle" ).css('display', 'none');
      winningCard.css('transition','all 300ms');
      winningCard.css('transform','translateX(' + centerOfWinningCard + 'px) scale(1.5) rotate3d(1,1,0, 360deg');
      $( ".surrounding-winning-card" ).css('opacity', '.3');

	$(".close").show();
      $.post('http://casescript/givemee', JSON.stringify({}) );

    }

    //Chance Setting (Wahrscheinlichkeit in Prozent aufgeteilt)
  
    var itemTypes = [
      {name: "Very-High", chance: 60.00, class: "very-high"},
      {name: "High", chance: 15.00, class: "high"},
      {name: "Mid", chance: 10.00, class: "mid"},
      {name: "Low", chance: 10.00, class: "low"},
      {name: "Very-Low", chance: 5.00, class: "very-low"}
    ];
  
    //************ ITEM LIST **************//

    var items = [
      {type: "Very-High", items:[
        {item: "125.000$", skin: "IC-Geld", SchwarzGeld: false, myItem: "MoneyWin1", imageUrl: 'items/coin.png'},
        {item: "50.000$", skin: "IC-Schwarzgeld", SchwarzGeld: true, myItem: "BlackMoney1", imageUrl: 'items/coin.png'},
        {item: "Gegenstand :", skin: "Verbandskasten", SchwarzGeld: false, myItem: "ExtraItem1", imageUrl: 'items/item.png'},
	 ]},

      {type: "High", items:[
        {item: "250.000$", skin: "IC-Geld", SchwarzGeld: false, myItem: "MoneyWin2",imageUrl: 'items/money.png'},
        {item: "100.000$", skin: "IC-Schwarzgeld", SchwarzGeld: true, myItem: "BlackMoney2", imageUrl: 'items/money.png'},
        {item: "Waffenbox", skin: "Normal", SchwarzGeld: false, myItem: "WeaponWin1", imageUrl: 'items/gun.png'},
        {item: "Gegenstand :", skin: "Schwere Weste", SchwarzGeld: false, myItem: "ExtraItem2", imageUrl: 'items/item.png'},
      ]},
      {type: "Mid", items:[
  {item: "Scharfschützengewehr", skin: "Selten", SchwarzGeld: false, myItem: "ExtraItem3", imageUrl: 'items/gun.png'},
	{item: "Waffenbox", skin: "Selten", SchwarzGeld: false, myItem: "WeaponWin2", imageUrl: 'items/gun.png'},
        
      ]},
      {type: "Low", items:[
      {item: "BMW S1000R", skin: "Import", SchwarzGeld: false, myItem: "ImportItem1", imageUrl: 'items/bmws.png'},
	    {item: "500.000$", skin: "IC-Geld", SchwarzGeld: false, myItem: "MoneyWin3",imageUrl: 'items/bag.png'},
      {item: "250.000$", skin: "IC-Schwarzgeld", SchwarzGeld: true, myItem: "BlackMoney3", imageUrl: 'items/bag.png'},
       
      ]},
      {type: "Very-Low", items:[
	{item: "RE-SPIN", skin: "", SchwarzGeld: false, myItem: "Re-Spin", imageUrl: 'items/respin.gif'},
	{item: "Waffenbox", skin: "ULTRA", SchwarzGeld: false, myItem: "WeaponWin3", imageUrl: 'items/gun.png'},
  {item: "Nissan GTR", skin: "Import", SchwarzGeld: false, myItem: "ImportItem2", imageUrl: 'items/gtr.png'},
  {item: "C63S", skin: "Import", SchwarzGeld: false, myItem: "ImportItem3", imageUrl: 'items/c63s.png'},
  {item: "Super Yacht", skin: "Import", SchwarzGeld: false, myItem: "ImportItem4", imageUrl: 'items/yacht.png'},
      ]},  
    ];
  
  
    // Fill Slider Function Button click aber unused 

    $( ".fill" ).click(function() {
      fillSlider(items);
    });
    
    // Reset Function

    function resetSlider() {
      var card = $( ".slider ul li" );
      $(".middle").css('display', '');
      card.css('transition','none');
      card.css('transform','translateX(-125px)');
    }

  // Close Button on Top right and Slider reset    
    
  $(".close").click(function () {
	$(".start").show();
    fillSlider(items);
    $.post('http://casescript/exit', JSON.stringify({}) );
    return
  })
  
    function fillSlider(caseData) {
      resetSlider();
      var cards = [];
      var startItem = 0;
      var totalCardsAmount = 60;
      fillCards(caseData, cards, totalCardsAmount, startItem);
      $( ".slider > ul" ).html( cards );
    }
    
    function fillCards(caseData, cards, totalCardsAmount, startItem) {
      if(startItem >= totalCardsAmount){
        return cards;
      }
      var randomNumber = parseFloat(Math.random() * 100).toFixed(2);
      var chosenItem;
      var itemType;
      var previousChance;
      var itemTolua;
      var whatItem;
      var finalorder;
      var counter = 0;
      var cardFound = false;
  
      for(k = 0; k < itemTypes.length; k++){
        if(k === 0){
          previousChance = 0;
          currentChance = itemTypes[k].chance;
        } else {
          previousChance = previousChance + itemTypes[k-1].chance;
          currentChance = itemTypes[k].chance + previousChance;
        }
  
        if(randomNumber <= currentChance && randomNumber > previousChance){
  
          var allItemsOfType = caseData.find(item => item.type == itemTypes[k].name)
  
          if (allItemsOfType != null) {
            allItemsOfType = allItemsOfType.items
            chosenItem = allItemsOfType[Math.floor(Math.random() * allItemsOfType.length)];
           
          //ItemWin r�ber zu Lua bei 58. Item

            if (startItem == 57){

              itemTolua = Object.values(chosenItem)[3];

              $.post("http://casescript/whatItem", JSON.stringify({
                  whatItem: itemTolua
              }))

            }
  
            //Schwarzgeld anzeige oben rechts

            itemType = itemTypes[k].class;
            var statTrakClass = "no-schwarzgeld";
            if(chosenItem.SchwarzGeld === true){
              statTrakClass = "schwarzgeld"
            }
  
            cards.push(`
            <li class="`+ itemType + `">
              <div class="absolute">
                <div class="item-details">
                  <span class="item-detail ` + statTrakClass + `">Schwarzgeld</span>
                </div>
              </div>
              <img src="` + chosenItem.imageUrl + `" >
              <span class="cover">
                <span class="centered">` + chosenItem.item + `</span>
                <span class="centered2">` + chosenItem.skin + `</span>
              </span>
            </li>`);
            k = itemTypes.length;
          } else {
            //No match found, creating dummy object.
            cards.push(`
            <li class="no-weapon">
              <img src="">
              <span class="cover">
                <span class="centered">No Weapon</span>
                  <span class="centered2">None</span>
              </span>
            </li>`);
          }
        }
      }
     
      startItem++;
      fillCards(caseData, cards, totalCardsAmount, startItem) 
      
    }
    
  
  
  
    fillSlider(items);
    
    function shuffle(array) {
      var currentIndex = array.length, temporaryValue, randomIndex;
  
      // While there remain elements to shuffle...
      while (0 !== currentIndex) {
  
        // Pick a remaining element...
        randomIndex = Math.floor(Math.random() * currentIndex);
        currentIndex -= 1;
  
        // And swap it with the current element.
        temporaryValue = array[currentIndex];
        array[currentIndex] = array[randomIndex];
        array[randomIndex] = temporaryValue;
      }
  
      return array;
    }
    
  });
})
