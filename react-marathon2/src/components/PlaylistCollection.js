import React from "react"
import Playlist from "./Playlist"

class PlaylistCollection extends React.Component {
  constructor(props) {
    super(props);
    this.state = {}
  }
  render() {
    let className;
    let playlists = this.props.data.playlists.map((item) => {
      if (this.props.selectedPlaylistId === item.id)
        {
          className = "selected"
        }
      else {
          className = ""
        }
    let handlePlaylistClick = () => {
      this.props.handlePlaylistClick(item.id)
    }
    return(
      <Playlist
      key = {item.id}
      id = {item.id}
      songs = {item.songs}
      name = {item.name}
      className = {className}
      handlePlaylistClick = {handlePlaylistClick}
      />
    )
  })
    return(
        <ul>
          {playlists}
        </ul>
    )
  }

}

export default PlaylistCollection;
