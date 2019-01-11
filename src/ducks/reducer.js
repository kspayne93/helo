const initialState = {
   id: 0,
   username: '',
   profile_pic: ''
}

//ACTION TYPES
const GET_USER_PROFILE = 'GET_USER_PROFILE'

//ACTION CREATORS
export function getProfile(id, username, profile_pic) {
   return {
      type: GET_USER_PROFILE,
      payload: {id, username, profile_pic}
   }
}

//REDUCER FUNCTION
export default function reducer(state = initialState, action) {
   switch(action.type) {
      case GET_USER_PROFILE:
         return {...state, 
            id: action.payload,
            username: action.payload,
            profile: action.payload}

      default:
         return state;
   }
}