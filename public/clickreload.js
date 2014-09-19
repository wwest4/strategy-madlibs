document.onclick = function(e) {
  // ignore clicks on the github fork image so that the page will navigate to github
  if(e.target.id == 'gitHubForkImage') {
    return;
  }

  location.reload();
}
