import React, { Component, } from 'react';
import PropTypes from 'prop-types';
import { FlatList } from 'react-native';
import PhotoItem from './PhotoItem';

class PhotosList extends Component {

    constructor(props){
        super(props);
            this.state = {
                photos:[{}]
            }
    }

    componentWillMount() {
        this._fetchPhotos();
    }

    _fetchPhotos = async () => {
        try {
          let response = await fetch(
            'https://jsonplaceholder.typicode.com/photos'
          );
          let responseJson = await response.json();
            data = responseJson.map(photo => {
                return photo;
        })
        return this.setState({photos: data})
        } catch (error) {
          console.error(error);
        }
    }

    _keyExtractor = (item, index) => item.id

    _renderItem = ({item}) => (
      <PhotoItem
        photoUrl={item.url}
      />
    );

    render() {
      return (
        <FlatList
          data={this.state.photos}
          keyExtractor={this._keyExtractor}
          renderItem={this._renderItem}
        />
      );
    }
  }
  
  PhotosList.propTypes = {
    photos: PropTypes.array,
    _fetchPhotos:PropTypes.func,
    _renderItem: PropTypes.func
  };
  
  export default PhotosList;