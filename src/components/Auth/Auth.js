import React, { Component } from 'react';
import axios from 'axios';

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
      
      this.props.history.push('/dashboard')
   };

   async login() {
      const { username, password } = this.state;
      const response = await axios.post('/auth/login', { username: username, password: password})

      this.props.history.push('/dashboard')
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

export default Auth;