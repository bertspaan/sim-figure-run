@orange: rgb(255, 153, 0);

Map {
  background-color: #b8dee6;
  background-image: url("pattern.png");
}

#wijken {
  polygon-fill: black;
  polygon-opacity: 0.5;
}

#wijken::outline {
  line-color: @orange;
  line-width: 1;
  line-join: round;
}