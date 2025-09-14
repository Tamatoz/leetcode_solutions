///Test group body which prints url of problem's description before start
void Function() groupBodyWithDescriptionUrl(String descriptionUrl, void Function() body) {
  print("Description url: $descriptionUrl");
  return body;
}
