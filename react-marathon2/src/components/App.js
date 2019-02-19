import React from 'react';
import PlaylistCollection from './PlaylistCollection'
import SongCollection from './SongCollection'


class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
    selectedSongId: this.props.data.selectedSongId,
    selectedPlaylistId: this.props.data.selectedPlaylistId
    }
    this.handlePlaylistClick = this.handlePlaylistClick.bind(this)
    this.handleSongClick = this.handleSongClick.bind(this)
  }
   handleSongClick(id) {
     this.setState({selectedSongId: id})
   }

   handlePlaylistClick(id){
     this.setState({selectedPlaylistId: id})
   }
  render() {
    let data = this.props.data

    let selectedPlaylistSongIds = data.playlists[this.props.data.selectedPlaylistId-1].songs;

    let filterById = (obj) => {
      return selectedPlaylistSongIds.includes(obj.id);
    }

    let selectedPlaylistSongs = data.songs.filter(filterById);

    return (

      <div className="App row">
        <div className= "column small-6">
          <h1> Playlist </h1>
            <PlaylistCollection
            data = {data}
            selectedPlaylistId = {this.state.selectedPlaylistId}
            handlePlaylistClick = {this.handlePlaylistClick}
            />
        </div>
        <div className="column small-6">
          <h2> Songs </h2>
            <SongCollection
            songs = {selectedPlaylistSongs}
            selectedSongId = {this.state.selectedSongId}
            handleSongClick = {this.handleSongClick}
            />
        </div>
      </div>
    );
  }
}

export default App;
