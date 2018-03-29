import React, {Component} from 'react';
import { StyleSheet, Text, View } from 'react-native';
import PhotosList from './src/PhotosList';

const App = () => {
  return (
    <View style={styles.container}>
      <PhotosList />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});

export default App;