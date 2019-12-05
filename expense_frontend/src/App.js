import React from 'react';
import {connect} from 'react-redux';
import {getAccounts} from './actions/getAccounts';
import './App.css';

class App extends React.Component{

  componentDidMount(){
    fetch("http://localhost:3000/api/v1/accounts")
    .then(resp => resp.json())
    .then(data => console.log(data))
  }
  render(){
    return (
      <div>
    app
      </div>
    )
  }
}

const mapStateToProps = (state) => {
  return {
    accounts: state.accounts
  }
}

export default connect(null, {getAccounts})(App)
