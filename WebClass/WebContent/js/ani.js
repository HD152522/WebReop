// var style_origin = "height: 0px; padding:0px; border:0px; transition: height 1s;";
// var style_trans = "border: 1px solid DarkGrey; height: auto; padding: 30px;";


function change(id) {
  var element = document.getElementById(id);
  var class_origin = element.getAttribute("class");
  var class_ = "container_content"
  var class_trans = "style_trans"
  var attribute = element.getAttribute("style");

  if(class_origin == class_) {
    element.setAttribute("class", class_ + " " + class_trans);
  }
  else {
    element.setAttribute("class", class_);
  }


  // console.log(attribute);
  //
  // if(attribute == null) {
  //   element.setAttribute("style", style_trans);
  // }
  // if(attribute == style_trans) {
  //   element.setAttribute("style", style_origin);
  // }
  // else {
  //   element.setAttribute("style", style_trans);
  // }

}
