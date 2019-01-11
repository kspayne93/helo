import React from 'react';
import {Link} from 'react-router-dom';
import {connect} from 'react-redux';
import './Nav.css';

function Nav (props) {
   console.log(props);
      return (
         <div className='navbar'>
            <div className='profile'>
               <img src={props.profile_pic} alt=""/>
               <span> {props.username} </span>
            </div>
            <div className='nav-buttons-container'>
               <Link to='/dashboard'><button>Home</button></Link>
               <Link to='/new'><button>New Post</button></Link>
               <Link to='/'><button>Logout</button></Link>
            </div>
         </div>
      )
}

function mapStateToProps (reduxState) {
   const { username, profile_pic } = reduxState;
   return {username, profile_pic};
}

export default connect(mapStateToProps)(Nav);