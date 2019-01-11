import React, { Component } from 'react';
import axios from 'axios';
import {connect} from 'react-redux';
import {getUserProfile} from '../../ducks/reducer';

class Auth extends Component {
   constructor() {
      super();
      
      this.state = {
         username: '',
         password: ''
      }
   };
   
   async register() {
      const { username, password } = this.state;
      const response = await axios.post('/auth/register', { username: username, password: password })
      console.log(response.data)
      this.props.getUserProfile(response.data)
      
      this.props.history.push('/dashboard')
   };

   async login() {
      const { username, password } = this.state;
      const response = await axios.post('/auth/login', { username: username, password: password})
      console.log(response.data[0])
      this.props.getUserProfile(response.data[0])

      this.props.history.push('/dashboard') //routing to dashboard once logged in
   }

   render() {
      return (
         <div>
            <p>
               Username:
               <input onChange={(e) => this.setState({ username: e.target.value })} type="text"/>
            </p>
            <p>
               Password:
               <input onChange={(e) => this.setState({ password: e.target.value })} type="password"/>
            </p>
            <button onClick={() => this.login()} >Login</button>
            <button onClick={() => this.register()} >Register</button>
         </div>
      );
   }
}

const mapStateToProps = (reduxState) => reduxState;

export default connect( null, {getUserProfile} )(Auth);