var markdownParser = (text) => {
  let result = parseDoubleAsterisk(text);
  result = parseSingleUnderscore(result);
  result = parseDoubleHash(result);
  result = parseSingleHash(result);
  return result;
}

let parseDoubleAsterisk = (text) => {
  let marker = '**'
  let markersEncountered = 0
  let locationOfMarker = text.indexOf(marker)

  while(locationOfMarker >= 0) {
    markersEncountered++
    let textBeforeMarker = text.substring(0, locationOfMarker)
    let textAfterMarker = text.substring(locationOfMarker + marker.length, text.length)
    let tag = markersEncountered % 2 === 0 ? '</strong>' : '<strong>'
    text = `${textBeforeMarker}${tag}${textAfterMarker}`
    locationOfMarker = text.indexOf(marker)
  }

  return text
}


let parseSingleUnderscore = (text) => {
  let marker = '_'
  let markersEncountered = 0
  let locationOfMarker = text.indexOf(marker)

  while(locationOfMarker >= 0) {
    markersEncountered++
    let textBeforeMarker = text.substring(0, locationOfMarker)
    let textAfterMarker = text.substring(locationOfMarker + marker.length, text.length)
    let tag = markersEncountered % 2 === 0 ? '</em>' : '<em>'
    text = `${textBeforeMarker}${tag}${textAfterMarker}`
    locationOfMarker = text.indexOf(marker)
  }

  return text
}
let parseSingleHash = (text) => {
  let markerh1 = '#  ';
  let markersEncountered = 0;
  let locationOfMarkerh1 = text.indexOf(markerh1);

  while(locationOfMarkerh1 >= 0) {
    markersEncountered++;
    let textBeforeMarker = text.substring(0, locationOfMarkerh1);
    let textAfterMarker = text.substring(locationOfMarkerh1 + markerh1.length, text.length);
    let openTag = '<h1>';
    let closingTag = '</h1>';
      if (!textAfterMarker.includes("\n")) {
        text = `${textBeforeMarker}${openTag}${textAfterMarker}${closingTag}`;
      }
      else {
        let indexOfReturn = text.indexOf('\n', locationOfMarkerh1 + markerh1.length);
        let h1Text = text.substring(locationOfMarkerh1 + markerh1.length, indexOfReturn);
        textAfterMarker = text.substring(indexOfReturn, text.length);
        text = `${textBeforeMarker}${openTag}${h1Text}${closingTag}${textAfterMarker}`;
      }
      locationOfMarkerh1 = text.indexOf(markerh1);
  }
  return text;
};

let parseDoubleHash = (text) => {
  let markerh2 = '##  ';
  let markersEncountered = 0;
  let locationOfMarkerh2 = text.indexOf(markerh2);

  while(locationOfMarkerh2 >= 0) {
    markersEncountered++;
    let textBeforeMarker = text.substring(0, locationOfMarkerh2);
    let textAfterMarker = text.substring(locationOfMarkerh2 + markerh2.length, text.length);
    let openTag = '<h2>';
    let closingTag = '</h2>';
      if (!textAfterMarker.includes("\n")) {
        text = `${textBeforeMarker}${openTag}${textAfterMarker}${closingTag}`;
      }
      else {
        let indexOfReturn = text.indexOf('\n', locationOfMarkerh2 + markerh2.length);
        let h2Text = text.substring(locationOfMarkerh2 + markerh2.length, indexOfReturn);
        textAfterMarker = text.substring(indexOfReturn, text.length);
        text = `${textBeforeMarker}${openTag}${h2Text}${closingTag}${textAfterMarker}`;
      }
      locationOfMarkerh2 = text.indexOf(markerh2);
  }
  return text;
};
