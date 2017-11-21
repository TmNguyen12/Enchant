        {
          entities: {
            users: {
              12: {
                id: 12,
                username: 'truong', 
                about_me: 'textextext', 
                photo: photo, 
                projects: {
                  2: {
                    id: 2, 
                    name: 'landscape', 
                    category: 'watercolors',
                    thumbnail: 'http://wekj.com'
                    author_id: 12
                    author_name: 'truong'
                    likes: 432
                  } 
                } 
                users_following: {
                  4: {
                    user_id:4
                    location: 'Berlin, Germany' 
                    followers: 26222 
                  }
                }
                followers: {
                  5: {
                    user_id:5
                    location: 'Berlin, Germany' 
                    followers: 2622
                    following: false  
                  }
                }
              }
            }

            project:{
              2: {
                id: 2, 
                name: 'landscape', 
                category: 'watercolors', 
                thumbnail: , 
                media: , 
                author_id: 12, 
                author_name: 'truong', 
                numViews: 23, 
                numFollowers: 2, 
                publishDate: 4/2/2017
                following: true/false 
              }
            }

            comments: {
              byId: {
                1: {
                  id: 1,
                  user_id: 4,
                  project_id: 5,
                  body: 'hello what do you want',
                  timestamp: 2/35/23:2342
                }
                3: {
                  id: 3, 
                  user_id: 4, 
                  project_id: 4, 
                  body: 'text', 
                  timestamp: 3/5/17
                }
              }
              allIds: [1,3]
            }
          }
          
          ui: {
            loading: true/false 
          }
          session: {
            currentUser: {
              id: 23, 
              username: 'truong', 
              img_url: "http://image"
            }
          }
        }