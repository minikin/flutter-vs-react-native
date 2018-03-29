import React, { Component, } from 'react';
import PropTypes from 'prop-types';
import { Image, View } from 'react-native';

class PhotoItem extends Component {
    render() {
      console.log(this.props);
      return (
        <View>
            <Image
                style={{height: 80}}
                source={this.props.photoUrl} />
        </View>
      );
    }
  }
  
  PhotoItem.prototype = {
    photoUrl: PropTypes.string.isRequired
  };
  
  export default PhotoItem;