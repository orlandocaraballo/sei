// let usersElement = document.querySelector('#users-index');

// if(usersElement) {
//   let loadUsersButton = document.querySelector('#load-users');
//   // axios method
//   // document.addEventListener("DOMContentLoaded", element => {
//   //   axios({
//   //     method: 'get',
//   //     url: '/users',
//   //     headers: {
//   //       // these two are required in order for the request to work
//   //       'X-CSRF-Token': document.querySelector("meta[name=csrf-token]").content,
//   //       // lets Rails know this is going to be an AJAX request
//   //       'X-Requested-With': 'XMLHttpRequest'
//   //     }
//   //   }).then(response => {
//   //     console.table(response.data);
//   //   })
//   // })

//   // rails ujs method
//   loadUsersButton.addEventListener('click', event => {
//     // prevent link from jumping to next page
//     //  which is the default behavior
//     event.preventDefault();

//     Rails.ajax({
//       type: 'get', 
//       url: '/users',
//       dataType: 'json', 
//       success: (response) => {
//         console.table(response);

//         response.forEach(user => {
//           let li = document.createElement('li');
//           li.innerHTML = user.email;
//           document.body.appendChild(li);
//         })
//       },
//       error: (error) => {
//         // this is what executes when the request is unsuccessful
//         console.log(error)
//       }
//     })
//   })
// }