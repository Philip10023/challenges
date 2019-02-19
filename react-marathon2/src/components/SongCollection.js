import React from 'react'
import Song from './Song'

class SongCollection extends React.Component {
  constructor(props) {
    super(props)
  }
  render() {
    let className;
    let songs = this.props.songs.map((item) => {
      if (item.id === this.props.selectedSongId)
      {
        className = "selected";
      }else {
        className = "";
      }
      let handleSongClick = () => {
      this.props.handleSongClick(item.id)
      }
      return(
        <Song
        key = {item.id}
        id = {item.id}
        name = {item.name}
        artist = {item.artist}
        album = {item.album}
        className = {className}
        handleSongClick = {handleSongClick}
        />
      )
    })
    return(
        <ul>
          {songs}
        </ul>
    )
  }
}

export default SongCollection;
